cask 'daisydisk' do
  if MacOS.release == :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
  else
    version :latest
    sha256 :no_check
    url 'https://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  end

  appcast 'https://www.daisydiskapp.com/downloads/appcastFeed.php',
          :sha256 => '6d4ff00bbcb357beeb22859d931c098aad448192f0ff93376a31cbb23e2d294f'
  name 'DaisyDisk'
  homepage 'https://www.daisydiskapp.com'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'DaisyDisk.app'

  postflight do
    suppress_move_to_applications
  end
end
