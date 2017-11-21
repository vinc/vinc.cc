set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true, autolink: true

activate :syntax

activate :deploy do |deploy|
  deploy.deploy_method = :sftp
  deploy.host          = "vinc.cc"
  deploy.path          = "/home/user-data/www/vinc.cc"
  deploy.user          = "root"
end

redirect "bin/index.html", to: "/binaries"
redirect "biography.html", to: "about.html"
