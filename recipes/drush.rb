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

# Add Drush pear channel
drush = php_pear_channel "pear.drush.org" do
    action :discover
end

# Install drush via PEAR
php_pear "drush" do
    channel drush.channel_name
    action :install
end
