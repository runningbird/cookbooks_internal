rightscale_marker :begin

template "/etc/postfix/main.cf" do
  source "main.cf.erb"
  variables(
    :destinations => node[:postfix][:destinations],
    :networks => node[:postfix][:networks]
  )
end

template "#{node[:postfix][:deploy_dir]}/datasource.pl" do
  source "datasource.pl.erb"
  variables(
    :gc_username => node[:postfix][:gc_username],
    :gc_password => node[:postfix][:gc_password],
    :database_name => node[:postfix][:db_name],
    :database_hostname => node[:postfix][:db_host],
    :database_username => node[:postfix][:db_user],
    :database_password => node[:postfix][:db_pass]
  )
end

rightscale_marker :end
