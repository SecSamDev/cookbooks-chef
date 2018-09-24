name 'acceptance'
description 'Preproduction'

cookbook 'apache', '>= 0.3.2'
override_attributes(
  'apache' => {
    'port' => 8181,
  }
)
