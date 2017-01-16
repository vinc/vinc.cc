configure :build do
end

activate :deploy do |deploy|
  deploy.deploy_method = :sftp
  deploy.host          = "vinc.cc"
  deploy.path          = "/home/user-data/www/vinc.cc"
  deploy.user          = "root"
end
