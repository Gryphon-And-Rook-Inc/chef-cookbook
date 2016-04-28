include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "2.1.1-p76"

execute "global ruby 2.0.0" do
    action :run
    command "rbenv global '2.1.1-p76'"
end

rbenv_gem "bundler" do
  ruby_version "2.1.1-p76"
end

rbenv_gem "ruby-shadow" do
  ruby_version "2.1.1-p76"
end