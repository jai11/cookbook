#
# Cookbook Name:: resource_asg_cookbookfile
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute  


remote_directory "/tmp/nodejs" do
  files_mode '0777'
  files_owner 'root'
  mode '0777'
  owner 'root'
  source "nodejs"
end

