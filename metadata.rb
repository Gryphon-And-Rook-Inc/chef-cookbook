name             'creoadamo'
maintainer       'David Higgins'
maintainer_email 'creo@adamo.ca'
license          'All rights reserved'
description      'Installs/Configures creoadamo recipes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe           "creoadamo::groups", "Create and manage groups"
recipe           "creoadamo::ruby-1.9.3-p362", "Install ruby_build, rbenv, and ruby 1.9.3-p362"

%w{ rbenv ruby_build users chef-solo-search apt build-essential git }.each do |cb|
  depends cb
end
