include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "1.9.3-p362"

execute "global ruby 1.9.3" do                                      
    action :run
    command "rbenv global '1.9.3-p362'"
end

rbenv_gem "bundler" do
  ruby_version "1.9.3-p362"
end

rbenv_gem "ruby-shadow" do
  ruby_version "1.9.3-p362"
end