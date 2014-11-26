#
# Cookbook Name:: nodeJsdb
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

package 'mysql-server' do
  action :install
end

package 'mysql-client' do
  action :install
end

#package to install git
package 'git' do
  action :install
end

execute 'sed -i \'s/skip-external-locking/#skip-external-locking/g\' /etc/mysql/my.cnf' do
end

execute 'sed -i \'s/bind-address/#bind-address/g\' /etc/mysql/my.cnf' do
end

execute '/etc/init.d/mysql start' do
end

execute 'restart mysql' do
end


execute "./run.sh nodejs root \'\' " do
  cwd '/tmp/nodejs'
end



execute '/etc/init.d/mysql start' do
end

execute 'restart mysql' do
end

execute 'rm -rf chef' do
cwd '/tmp/nodejs'
end

execute 'git clone https://jai11:aug1234@github.com/jai11/chef.git' do
cwd '/tmp/nodejs'
end


execute 'git init' do
cwd '/tmp/nodejs/chef'
end

execute 'git config --global user.email "jai.jagani@yahoo.in"' do
cwd '/tmp/nodejs/chef'
end

execute 'git config --global user.name "jai11"' do
cwd '/tmp/nodejs/chef'
end

execute 'git remote remove origin' do
cwd '/tmp/nodejs/chef'
end

execute 'git remote add origin https://jai11:aug1234@github.com/jai11/chef.git' do
cwd '/tmp/nodejs/chef'
end


execute "nohup ./autobackupsql.sh > gitoutput.log &" do
  cwd '/tmp/nodejs' 
end

execute "some_command1" do
  command "nohup chef-client -i 60 -s 6 > chef-client.log &"
  notifies :create, "ruby_block[some_command1_run_flag]", :immediately
  not_if { node.attribute?("some_command1_complete") }
end

ruby_block "some_command1_run_flag" do
  block do
    node.set['some_command1_complete'] = true
    node.save
  end
  action :nothing
end









