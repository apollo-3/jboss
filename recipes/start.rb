bash "start jboss" do
        cwd "/usr/local/share/jboss/bin/"
        code <<-EOH
		./standalone.sh >/dev/null 2>&1 & 
	EOH
end
