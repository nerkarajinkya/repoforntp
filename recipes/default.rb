#
# Cookbook:: ntp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package 'ntp' do
action [:install]
end


service 'ntp' do
action [:start , :enable]
end


#execute 'ntpstat' do 
##command '/usr/bin/ntpstat'
##ignore failure true
##only_if  { File.exist?('/usr/bin/ntpstat') }
##end
##command = '/usr/bin/ntpstat'
hostname = node['hostname']
ip = node['ipaddress']
file '/home/ajinkyan/ntp.log' do
 content "hostname is : #{hostname}   ip is : #{ip}   "   #details are : #{command}"
# #puts op is #{command}
 end

 execute '/usr/bin/ntpstat >> /home/ajinkyan/ntp.log'do

 end
