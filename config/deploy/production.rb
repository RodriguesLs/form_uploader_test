set :branch, 'master'
set :server_address, 'ec2-18-218-168-241.us-east-2.compute.amazonaws.com'

ask(:password, nil, echo: false)
server fetch(:server_address), user: "ubuntu", roles: %w{app db web}

set :nginx_server_name, fetch(:server_address)
# set :puma_preload_app, true

set :ssh_options, {
  user: 'ubuntu', # overrides user setting above
  keys: %w(/home/rodrigues/Documents/aws-eseni.pem),
  forward_agent: false,
  auth_methods: %w(publickey password)
}