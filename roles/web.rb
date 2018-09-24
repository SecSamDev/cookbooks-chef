name 'web'
description 'Web Server Role'
cookbook 'apache', '= 0.3.1'
default_attributes(
  'apache' => {
    'port' => 8181,
  }
)
