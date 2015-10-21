file "/usr/local/share/jboss/standalone/configuration/standalone.xml" do
	owner 'root'
	group 'root'
	mode 0755
	content ::File.open("/vagrant/standalone.xml").read
	action :create
end
