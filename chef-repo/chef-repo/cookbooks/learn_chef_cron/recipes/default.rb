#
# Cookbook:: learn_chef_cron
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
cron 'test_cron' do
	minute '*/30'
	command "./demo.rb"
end
