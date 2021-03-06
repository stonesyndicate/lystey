# config valid only for current version of Capistrano
lock '3.4.0'

set :repo_url, 'git@github.com:puhsh/lystey.git'
set :scm, :git
set :format, :pretty
set :log_level, :info
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :keep_releases, 5
set :rvm_type, :auto
set :rvm_ruby_version, '2.2.1@lystey'
set :assets_roles, [:app]

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
