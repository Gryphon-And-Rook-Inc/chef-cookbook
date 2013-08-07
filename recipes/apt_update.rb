execute "update apt-get" do                                      
    action :run
    command "apt-get -y update"
end
