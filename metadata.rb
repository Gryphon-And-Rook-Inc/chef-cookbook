name             'gnr_cookbook'
maintainer       'David Higgins'
maintainer_email 'david@gryphonandrook.com'
license          'All rights reserved'
description      'Installs/Configures Gryphon & Rook recipes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe           'opsworks-cookbook-custom-env::custom_env',  'Install Custom Env for OpsWorks'
recipe           'opsworks_custom_env::configure',   'Configure Custom Env for OpsWorks'
recipe           'whenever::default',                'Configure Whenever OpsWorks'

%w{ rbenv ruby_build users chef-solo-search apt build-essential git }.each do |cb|
  depends cb
end
