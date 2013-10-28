#
# Author:: Hoat Le <hoatlevan@gmail.com>
# Cookbook Name:: teracy-dev
# Recipe:: git-config
# Description: Configures global git
#
# Copyright 2013, Teracy, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

template '/home/vagrant/.gitconfig' do
    source 'gitconfig.erb'
    owner 'vagrant'
    group 'vagrant'
    mode '0664'
end

template '/home/vagrant/.gitmessage.txt' do
    source 'gitmessage.erb'
    owner 'vagrant'
    group 'vagrant'
    mode '0664'
    only_if { node['teracy-dev']['git']['commit']['template'] }
end