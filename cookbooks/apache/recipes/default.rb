#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package "apache2"

template "/var/www/html/index.html" do
	source "index_ben.html"
	owner "root"
	group "root"
	mode "0644"
end

service "apache2" do
	action [:enable,:start]
end
