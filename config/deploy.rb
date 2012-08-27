set :application, "blog"
set :scm, :git
set :repository, "git@github.com:jpsilvashy/blog.git"

# https://github.com/SuhailWakil/ror.git

set :scm_passphrase, ""
set :user, "ubuntu"
set :deploy_to, "/var/www/blog"

server "50.18.119.31", :app, :primary => true


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end