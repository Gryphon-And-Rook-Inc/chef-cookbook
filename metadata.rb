name             'gnr_cookbook'
maintainer       'David Higgins'
maintainer_email 'david@gryphonandrook.com'
license          'All rights reserved'
description      'Installs/Configures Gryphon & Rook recipes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe           'gryphonandrook::apt_update',       'Update apt-get'
recipe           'gryphonandrook::fish_shell',       'Compile, Install, and link Fish shell'
recipe           'gryphonandrook::groups',           'Create and manage groups'
recipe           'gryphonandrook::nodejs',           'Install Nodejs and Package Manager'
recipe           'gryphonandrook::ruby-1.9.3-p362',  'Install ruby_build, rbenv, and ruby 1.9.3-p362'
recipe           'gryphonandrook::ruby-2.0.0-p195',  'Install ruby_build, rbenv, and ruby 2.0.0-p195'
recipe           'gryphonandrook::ruby-2.0.0-p247',  'Install ruby_build, rbenv, and ruby 2.0.0-p247'
recipe           'gryphonandrook::ruby-2.1.1',       'Install ruby_build, rbenv, and ruby 2.1.1'
recipe           'gryphonandrook::ruby-2.1.1-p76',   'Install ruby_build, rbenv, and ruby 2.1.1-p76'
recipe           'opsworks-cookbook-custom-env::custom_env',  'Install Custom Env for OpsWorks'
recipe           'opsworks_custom_env::configure',   'Configure Custom Env for OpsWorks'
recipe           'whenever::default',                'Configure Whenever OpsWorks'

%w{ rbenv ruby_build users chef-solo-search apt build-essential git }.each do |cb|
  depends cb
end
