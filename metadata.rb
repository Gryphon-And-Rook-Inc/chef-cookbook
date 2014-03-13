name             'creoadamo'
maintainer       'David Higgins'
maintainer_email 'creo@adamo.ca'
license          'All rights reserved'
description      'Installs/Configures creoadamo recipes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe           "creoadamo::apt_update",       "Update apt-get"
recipe           "creoadamo::fish_shell",       "Compile, Install, and link Fish shell"
recipe           "creoadamo::groups",           "Create and manage groups"
recipe           "creoadamo::nodejs",           "Install Nodejs and Package Manager"
recipe           "creoadamo::ruby-1.9.3-p362",  "Install ruby_build, rbenv, and ruby 1.9.3-p362"
recipe           "creoadamo::ruby-2.0.0-p195",  "Install ruby_build, rbenv, and ruby 2.0.0-p195"
recipe           "creoadamo::ruby-2.0.0-p247",  "Install ruby_build, rbenv, and ruby 2.0.0-p247"
recipe           "creoadamo::ruby-2.1.1",       "Install ruby_build, rbenv, and ruby 2.1.1"
recipe           "creoadamo::ruby-2.1.1-p76",   "Install ruby_build, rbenv, and ruby 2.1.1-p76"

%w{ rbenv ruby_build users chef-solo-search apt build-essential git }.each do |cb|
  depends cb
end
