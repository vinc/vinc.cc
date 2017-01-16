configure :build do
end

activate :deploy do |deploy|
  deploy.deploy_method = :sftp
  deploy.host          = "vincentollivier.com"
  deploy.path          = "/home/user-data/www/vincentollivier.com"
  deploy.user          = "root"
end
