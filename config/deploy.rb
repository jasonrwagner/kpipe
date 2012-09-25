# Automatic "bundle install" after deploy
require 'bundler/capistrano'

# Application name
set :application, "kpipe"

# BlueHost SSH user
set :user, "failureu" #The server's user for deploys

# App Domain
set :domain, "kpipe.com"

# We don't need sudo on BlueHost
set :use_sudo, false

# git is our SCM
set :scm, 'git'

# Use local git repository
#set :repository, "."
set :repository,  "git@github.com:jasonrwagner/kpipe.git"

# master is our default git branch
set :branch, "master"

# Checkout, compress and send a local copy
#set :deploy_via, :copy
set :deploy_to, "/home5/failureu/kpipe/"

# We have all components of the app on the same server
server 'failureu.com', :app, :web, :db, :primary => true
#server "failureu.com", :app, :web, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end

  # Touch tmp/restart.txt to tell Phusion Passenger about new version
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path, 'tmp', 'restart.txt')}"
  end
end

# Clean-up old releases
after "deploy:restart", "deploy:cleanup"

set :scm_passphrase, "7Roasts" # The deploy user's password
ssh_options[:forward_agent] = true

set :deploy_via, :remote_cache
#set :stages, ["staging", "production"]
#set :default_stage, "staging"

#set :deploy_to, "/var/www/kpipe"

#default_run_options[:pty] = true

role :web, domain #"your web-server here"                          # Your HTTP server, Apache/etc
role :app, domain #"your app-server here"                          # This may be the same as your `Web` server
role :db,  domain, :primary => true #"your primary db-server here", # This is where Rails migrations will run
#role :db,  domain #"your slave db-server here"

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
