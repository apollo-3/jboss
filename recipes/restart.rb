bash "restart jboss" do
	cwd "/usr/local/share/jboss/bin/"
	code <<-EOH
		./jboss-cli.sh -c "--command=:shutdown(restart=true)"
	EOH
end
