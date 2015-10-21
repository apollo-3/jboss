remote_file "/usr/local/share/jboss/standalone/deployments/testweb.zip" do
	source "http://www.cumulogic.com/download/Apps/testweb.zip"
end

bash "extract testweb.zip" do
	cwd "/usr/local/share/jboss/standalone/deployments/"
	code <<-EOH
		unzip -o testweb.zip
	        mv testweb/testweb.xml ./
	        rm -r testweb
		rm testweb.zip
	EOH
end

include_recipe 'jboss::restart'
