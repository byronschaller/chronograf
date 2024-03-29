#
# Cookbook Name:: chronograf
# Recipe:: default
#
# Copyright (c) 2016 Byron Schaller, All Rights Reserved.

apt_repository 'influxdata' do
  uri 'https://repos.influxdata.com/ubuntu'
  distribution 'trusty'
  components ['stable']
  key 'https://repos.influxdata.com/influxdb.key'
  only_if { platform_family?('debian') }
end

package 'chronograf'

service 'chronograf' do
  action [:start, :enable]
end
