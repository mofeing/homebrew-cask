cask 'devonthink-pro-office' do
  version '2.8.8'
  sha256 'dbed3e907dd1a55c6fddccb8aadc88b88bf4d65bacfa143c0a50eec77844f280'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.dmg.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          :sha256 => 'bced38e905538830b9294a676c6dbdc5ab4be7326245aaa39b79472de45794b4'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :commercial

  depends_on :macos => '>= :mountain_lion'
  container :nested => 'DEVONthink_Pro_Office.dmg'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', :target => 'DEVONthink Pro Office.app'
end
