name             '@cookbook_name'
maintainer       'SPINEN'
maintainer_email  '@author' 
license          'MIT'
description      'Installs/Configures @cookbook_name'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

%w(

).each do |cookbook|
  depends cookbook
end