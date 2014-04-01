#
# Cookbook Name:: osl-drupal
# Recipe:: drush
#
# Copyright (C) 2014 Oregon State University
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "php"
include_recipe "yum"
include_recipe "yum::epel"

yum_repository "drush" do
    name "drush"
    url node['osl-drupal']['drush']['repo-url']
    action :add
end

package "drush" do
    if node['osl-drupal']['drush']['version'] then
    version node['osl-drupal']['drush']['version']
    end
    action :install
end
