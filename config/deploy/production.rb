set :port, 22
set :user, 'webmaster'
set :deploy_via, :remote_cache
set :use_sudo, false

server '199.192.20.123',
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: fetch(:user),
  primary: true

set :deploy_to, "/home/#{fetch(:user)}/#{fetch(:application)}"

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: 'webmaster',
}

set :conditionally_migrate, true    
