cask 'quicksilver' do
  if MacOS.release <= :snow_leopard
    version '1.0.0-16384'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.release <= :mountain_lion
    version '1.2.0-16399'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.4.1-16409'
    sha256 'eaa49618720db8889e041bc9559448ed438a9ab6926596f5061bc6215d5ff94f'
  end

  url "https://qs0.qsapp.com/plugins/download.php?qsversion=#{version.sub(%r{^.*?-}, '')}.dmg"
  name 'Quicksilver'
  homepage 'https://qsapp.com/'
  license :apache

  app 'Quicksilver.app'

  zap delete: [
                '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                '~/Library/Application Support/Quicksilver',
              ]
end
