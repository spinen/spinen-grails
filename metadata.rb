name             @cookbook_name
maintainer       'SPINEN'
maintainer_email  @author 
license          'MIT'
description      'Installs/Configures' @cookbook_name
long_description 'Installs/Configures' @cookbook_name
version          '0.1.0'

%w(

).each do |cookbook|
  depends cookbook
end