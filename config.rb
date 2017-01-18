set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :syntax, :inline_theme => Rouge::Themes::Base16::Solarized.new

activate :deploy do |deploy|
  deploy.deploy_method = :sftp
  deploy.host          = "vinc.cc"
  deploy.path          = "/home/user-data/www/vinc.cc"
  deploy.user          = "root"
end
