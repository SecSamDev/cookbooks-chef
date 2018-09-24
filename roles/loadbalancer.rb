name 'loadbalancer'
description 'load balancer'
run_list 'role[base]', 'recipe[haproxy]'
default_attributes(
  'apache' => {
    'port' => 8181,
  }
)
