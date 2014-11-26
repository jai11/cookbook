#
# Cookbook Name:: nodeJs
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

#package to install nodejs
package 'nodejs' do
  action :install
end

#package to install npm
package 'npm' do
  action :install
end

#execute to install npm modules as per application
execute 'npm install' do

cwd '/tmp/nodejs'
end

#package to isntall mysql-server
package 'mysql-server' do
  action :install
end

#package to mysql-client 
package 'mysql-client' do
  action :install
end

#changing paramter in sql my.cnf

#execute 'sed -i \'s/skip-external-locking/#skip-external-locking/g\' /etc/mysql/my.cnf' do
#end

#execute 'sed -i \'s/bind-address/#bind-address/g\' /etc/mysql/my.cnf' do
#end

#start my sql server 
execute '/etc/init.d/mysql start' do
end

execute 'nohup nodejs app.js > output.log &' do
cwd '/tmp/nodejs'
end







