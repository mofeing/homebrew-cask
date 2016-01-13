cask 'coconutbattery' do
  if MacOS.release <= :tiger
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  elsif MacOS.release <= :snow_leopard
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version '3.2.1'
    sha256 'b403fb2cb79e487192d8754e5c5fd3df3b47bc39a85b5c834305a9029490e749'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.gsub('.', '_')}.zip"
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml',
            :sha256 => 'b85b4fac576e6ca1d6c05110d9fb1ccccd895ef9312ccbedd1bfa432c9e4d5b2'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'
  license :bsd

  app 'coconutBattery.app'
end
