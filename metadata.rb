name             'cdap'
maintainer       'Cask Data, Inc.'
maintainer_email 'ops@cask.co'
license          'Apache 2.0'
description      'Installs/Configures Cask Data Application Platform (CDAP)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.23.0'

%w(apt ark git hadoop java maven nodejs ntp yum yum-epel).each do |cb|
  depends cb
end

depends 'krb5_utils'
recommends 'ambari' # ~FC053

%w(amazon centos debian redhat scientific ubuntu).each do |os|
  supports os
end

source_url 'https://github.com/caskdata/cdap_cookbook' if respond_to?(:source_url)
issues_url 'https://issues.cask.co/browse/COOK/component/10603' if respond_to?(:issues_url)
