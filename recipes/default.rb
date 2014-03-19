#
# Cookbook Name:: np-newrelic
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


secure_newrelic = Chef::EncryptedDataBagItem.load('secure', 'newrelic')
node.set['newrelic']['license'] = secure_newrelic['license']

include_recipe 'newrelic'
