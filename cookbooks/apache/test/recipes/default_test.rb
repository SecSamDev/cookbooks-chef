# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(node['apache']['port']) do
  it { should be_listening }
end

describe command("curl localhost:#{node['apache']['port']}") do
  its(:stdout) { should match(/Hello, world!/) }
end

describe file('/etc/httpd/conf/httpd.conf') do
  its('content') { should match(/Listening/) }
  it { should be_owned_by 'apache' }
end
