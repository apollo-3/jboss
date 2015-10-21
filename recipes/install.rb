package "unzip" do
	action :install
end

bash "extract jboss" do
cwd "/usr/local/share/"
	code <<-EOH
		unzip -o jboss.zip
		mv wildfly-10.0.0.CR3 jboss 
		jboss/bin/add-user.sh admin admin
	EOH
	not_if {File.exists?("/usr/local/share/jboss")}
end
