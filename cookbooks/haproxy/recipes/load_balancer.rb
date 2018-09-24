#
# The package, named "haproxy" is installed
#
# @see https://docs.chef.io/resource_package.html
#
package 'haproxy'

webservers = search('node', "role:web AND chef_environment:#{node.chef_environment}")
template '/etc/haproxy/haproxy.cfg' do
  source 'haproxy.cfg.erb'
  variables(
    webservers: webservers
  )
  notifies :restart, 'service[haproxy]'
  # This forces the service "haproxy" to be restarted when the config change
end

service 'haproxy' do
  action [:start, :enable]
end
