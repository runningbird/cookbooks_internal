#
# Cookbook Name:: hadoop
# Recipe:: default
#
# Copyright 2012, RightScale Inc.
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

r = right_link_tag "hadoop:node_type=#{node[:hadoop][:node][:type]}" do
 action :nothing
end

include_recipe 'hadoop::install'
include_recipe 'hadoop::do_config'
include_recipe 'hadoop::do_init'
rightscale_marker :end