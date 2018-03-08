ip = '82.202.236.50'

role :app, ["deploy@#{ip}"]
role :web, ["deploy@#{ip}"]
role :db,  ["deploy@#{ip}"]

server ip, user: 'deploy', roles: %w{web app db}

set :stage, 'production'
set :rails_env, 'production'

config.assets.precompile += %w( application.css application.js )
