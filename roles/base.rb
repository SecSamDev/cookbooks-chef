name 'base'
description 'Common basic configuration'
run_list 'recipe[my-chef-client]'
default_attributes(
  'chef_client' => {
    'interval' => 300,
  }
)
