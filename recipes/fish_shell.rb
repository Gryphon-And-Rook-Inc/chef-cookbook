execute "clone fish" do                                      
    action :run
    command "if [ ! -d fish-shell ]; then  git clone git://github.com/fish-shell/fish-shell.git; fi"
end

execute "install curses" do                                      
    action :run
    command "apt-get -y install libncurses5-dev libncursesw5-dev"
end

execute "install fish" do                                      
    action :run
    command "which fish; if [ ! $? -eq 0 ]; then cd fish-shell && autoconf && ./configure && make && make install && cd ..; fi"
end

execute "link fish" do                                      
    action :run
    command "which fish; if [ $? -eq 0 ]; then grep `which fish` /etc/shells; if [ ! $? -eq 0 ]; then which fish >> /etc/shells; fi; fi"
end
