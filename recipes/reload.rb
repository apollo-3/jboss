bash "reload jboss" do
        cwd "/usr/local/share/jboss/bin/"
        code <<-EOH
                ./jboss-cli.sh -c --command=:reload
        EOH
end
