#
# Cookbook:: learn_chef_cron
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
cron 'test_cron' do
	minute '*/02'
	command "./attributes/default.rb"
end

cron 'test_without_executable' do
	minute '*/02'
	command '/opt/chefdk/embedded/bin/ruby ./attributs/test_cron.rb'
end
