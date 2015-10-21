bash "stop jboss" do
	cwd "/usr/local/share/jboss/bin/"
	code <<-EOH
		./jboss-cli.sh --connect command=:shutdown
	EOH
end
