#
# Cookbook Name:: jboss
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java_se"

include_recipe 'jboss::download'
include_recipe 'jboss::install'
include_recipe 'jboss::configure'
include_recipe 'jboss::start'
