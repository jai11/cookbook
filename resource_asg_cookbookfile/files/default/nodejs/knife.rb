log_level                :info
log_location             STDOUT
node_name                'station1'
client_key               '/root/chef-repo/.chef/station1.pem'
validation_client_name   'chef-validator'
validation_key           '/root/chef-repo/.chef/chef-validator.pem'
chef_server_url          'https://5.153.32.20:443'
syntax_check_cache_path  '/root/chef-repo/.chef/syntax_check_cache'
cookbook_path [ '~/chef-repo/cookbooks' ]
#cookbook_path [ '~/chef-repo/cookbooks', '~/chef-repo/mdxp-cookbooks' , '~/chef-repo/opscode-cookbooks' ]
knife[:softlayer_username] = 'alkesh_dagade'
knife[:softlayer_api_key]  = '26a84cd5dad20e0ae6ecd7daef2604d65127edd9d4ca2d9564607fde0aba9654'
