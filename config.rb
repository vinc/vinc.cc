require "open-uri"

set :source, "src"

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: false, autolink: true, tables: true

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

activate :syntax

activate :directory_indexes

activate :breadcrumbs, separator: " / "

activate :blog do |blog|
  blog.prefix = "news"
  blog.layout = "layouts/news"
  blog.tag_template = "news/tag.html"
  blog.calendar_template = "news/calendar.html"
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end

# Run `touch src/software/.sync` to update this directory
if File.exist?("src/software/projects/.sync")
  projects = %w[
    chatai
    closh
    forecaster
    geocal
    geodate
    littlewing
    memorious
    moros
    ned
    oximon
    pkg
    purplehaze
    timetable
    ytdl
  ]

  projects.each do |project|
    base = "https://raw.githubusercontent.com/vinc/#{project}/master"
    url = "#{base}/README.md"
    puts "Fetching '#{url}' ..."
    name = project.tr(".", "-")
    path = "src/software/projects/#{name}.html.md"
    File.open(path, "w") do |f|
      URI.open(url) do |io|
        f.write("---\ntitle: #{project.capitalize}\n---\n")
        f.write(io.read.gsub(/\[(.*)\]\(((?!http).*)\)/, "[\\1](#{base}/\\2)"))
      end
    end
  end
  File.unlink("src/software/projects/.sync")
end

redirect "archeology/brittany-prehistory.html", to: "history/brittany-prehistory"
redirect "archeology/index.html", to: "history"
redirect "archeology/menez-bre-megaliths.html", to: "history/menez-bre-megaliths"
redirect "bin/index.html", to: "/binaries"
redirect "biography.html", to: "/about"
redirect "blog/2017/10/01/hello-world.html", to: "/news/2017/10/01/hello-world"
redirect "blog/2017/10/17/paperclips.html", to: "/news/2017/10/17/paperclips"
redirect "blog/2017/10/26/most-common-destination-squares-from-one-million-chess-games.html", to: "/news/2017/10/26/most-common-destination-squares-from-one-million-chess-games"
redirect "blog/2017/11/05/alphago-zero.html", to: "/news/2017/11/05/alphago-zero"
redirect "blog/2017/11/06/recording-terminal-sessions-with-asciinema.html", to: "/news/2017/11/06/recording-terminal-sessions-with-asciinema"
redirect "blog/2017/11/18/20-years-global-biosphere.html", to: "/news/2017/11/18/20-years-global-biosphere"
redirect "blog/2017/11/20/little-wing-0-4-0-is-out.html", to: "/news/2017/11/20/little-wing-0-4-0-is-ou"
redirect "blog/2017/11/29/vinua-com-reloaded.html", to: "/news/2017/11/29/vinua-com-reloaded"
redirect "blog/2017/12/18/combining-satellite-spectral-bands-imagemagick.html", to: "/news/2017/12/18/combining-satellite-spectral-bands-imagemagick"
redirect "blog/2017/12/19/rebuilding-imagemagick-jpeg2000-ubuntu.html", to: "/news/2017/12/19/rebuilding-imagemagick-jpeg2000-ubuntu"
redirect "blog/2018/01/01/launching-extinct-life.html", to: "/news/2018/01/01/launching-extinct-life"
redirect "blog/2018/02/25/oil-palm-plantations-indonesia.html", to: "/news/2018/02/25/oil-palm-plantations-indonesia"
redirect "blog/2018/04/03/forecaster-1-0-0-released.html", to: "/news/2018/04/03/forecaster-1-0-0-released"
redirect "blog/2018/04/22/hakituri-news-redesigned.html", to: "/news/2018/04/22/hakituri-news-redesigned"
redirect "blog/2018/07/18/little-wing-0-5-0-released.html", to: "/news/2018/07/18/little-wing-0-5-0-released"
redirect "blog/2019/12/22/little-wing-0-6-0-released.html", to: "/news/2019/12/22/little-wing-0-6-0-released"
redirect "blog/index.html", to: "/news"
redirect "bonsai/biography.html", to: "/bonsai/about"
redirect "bonsai/carpinus-betulus-1.html", to: "/bonsai/collection/carpinus-betulus-1"
redirect "bonsai/collection/malus-domestica-1.html", to: "bonsai/collection/malus-domestica-2"
redirect "bonsai/juniperus-chinensis-itoigawa-1.html", to: "/bonsai/collection/uniperus-chinensis-itoigawa-1"
redirect "bonsai/juniperus-chinensis-itoigawa-2.html", to: "/bonsai/collection/juniperus-chinensis-itoigawa-2"
redirect "bonsai/juniperus-chinensis-itoigawa-6.html", to: "/bonsai/collection/juniperus-chinensis-itoigawa-6"
redirect "bonsai/olea-europaea-1.html", to: "/bonsai/collection/olea-europaea-1"
redirect "bonsai/prunus-spinosa-1.html", to: "/bonsai/collection/prunus-spinosa-1"
redirect "bonsai/quercus-robur-1.html", to: "/bonsai/collection/quercus-robur-1"
redirect "bonsai/collection/olea-europaea-1.html", to: "/bonsai/collection/olea-europaea-sylvestris-1"
redirect "computers.html", to: "hardware/computers"
redirect "essays.html", to: "/pages"
redirect "essays/changing-our-diet-for-a-wilder-world.html", to: "/ecology/changing-our-diet-for-a-wilder-world"
redirect "essays/geocalendar.html", to: "/units/geodate"

redirect "projects/closh.html", to: "/software/closh"
redirect "projects/dasort.html", to: "/software/dasort"
redirect "projects/forecaster.html", to: "/software/forecaster"
redirect "projects/geodate.html", to: "/software/geodate"
redirect "projects/index.html", to: "/software"
redirect "projects/littlewing.html", to: "/software/littlewing"
redirect "projects/memorious.html", to: "/software/memorious"
redirect "projects/oximon.html", to: "/software/oximon"
redirect "projects/pkg.html", to: "/software/pkg"
redirect "projects/purplehaze.html", to: "/software/purplehaze"

redirect "software/chatai.html", to: "/software/projects/chatai"
redirect "software/closh.html", to: "/software/projects/closh"
redirect "software/forecaster.html", to: "/software/projects/forecaster"
redirect "software/geocal.html", to: "/software/projects/geocal"
redirect "software/geodate.html", to: "/software/projects/geodate"
redirect "software/littlewing.html", to: "/software/projects/littlewing"
redirect "software/memorious.html", to: "/software/projects/memorious"
redirect "software/moros.html", to: "/software/projects/moros"
redirect "software/ned.html", to: "/software/projects/ned"
redirect "software/oximon.html", to: "/software/projects/oximon"
redirect "software/pkg.html", to: "/software/projects/pkg"
redirect "software/purplehaze.html", to: "/software/projects/purplehaze"
redirect "software/timetable.html", to: "/software/projects/timetable"
redirect "software/ytdl.html", to: "/software/projects/ytdl"

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
