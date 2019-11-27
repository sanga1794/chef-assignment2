#
# Cookbook:: assingment_chef_3
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
secret = Chef::EncryptedDataBagItem.load_secret("/tmp/my_data_bag_key")
 
mysql = data_bag_item("passwords", "mysql", secret)
 
file "/tmp/sql_databag.txt" do
  content "user: #{mysql[:user]} & password: #{mysql[:pass]}"   
end