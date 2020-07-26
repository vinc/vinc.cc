set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true, autolink: true, tables: true

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

activate :syntax

activate :directory_indexes

activate :breadcrumbs, separator: " / "

activate :blog do |blog|
  blog.prefix = "news"
  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "layouts/news"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"
  blog.tag_template = "news/tag.html"
  blog.calendar_template = "news/calendar.html"
  blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end

activate :deploy do |deploy|
  deploy.deploy_method = :rsync
  deploy.host          = "root@zifre.org"
  deploy.path          = "/home/user-data/www/vinc.cc"
  deploy.user          = "root"
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

# Run `touch source/projects/.sync` to update this directory
if File.exist?("source/projects/.sync")
  projects = %w[
    clock.geodate.org
    closh
    forecaster
    geodate
    geodate.org
    goelo.eu
    littlewing
    memorious
    news.vinc.cc
    oximon
    paste.vinc.cc
    pi.ctu.re
    pkg
    pollen.vinc.cc
    provisioning.sh
    provisioning.rb
    purplehaze
    rgb.vinc.c
  ]

  projects.each do |project|
    url = "https://raw.githubusercontent.com/vinc/#{project}/master/README.md"
    puts "Fetching '#{url}' ..."
    name = project.tr(".", "-")
    path = "source/projects/#{name}.html.md"
    open(path, "w") do |f|
      open(url) do |io|
        f.write("---\ntitle: #{project.capitalize}\n---\n")
        f.write(io.read)
      end
    end
  end
  File.unlink("source/projects/.sync")
end

redirect "bin/index.html", to: "/binaries"
redirect "biography.html", to: "/about"
redirect "blog/index.html", to: "/news"
Dir["source/news/*.html.md"].each do |path|
  path.sub!(/source\/news\/(201\d)-(\d\d)-(\d\d)-(.*).html.md/, "\\1/\\2/\\3/\\4")
  redirect "blog/#{path}.html", to: "/news/#{path}"
end

ready do
  sitemap.resources.each do |resource|
    next unless resource.data.title.nil?

    case resource.locals["page_type"]
    when "tag"
      resource.data.title = resource.locals["tagname"].capitalize
    when "year", "month", "day"
      resource.data.title = resource.locals[resource.locals["page_type"]].to_s
    end
  end
end
