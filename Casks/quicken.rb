cask "quicken" do
  version "5.17.5,517.34953.100"
  sha256 "fdca78421fdaa10f0b48e928ac7c36724108ac35906e45fbfb5e95c70043adcf"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.after_comma}/Quicken-#{version.after_comma}.zip"
  appcast "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
  name "Quicken"
  homepage "https://www.quicken.com/mac"

  depends_on macos: ">= :el_capitan"

  app "Quicken.app"

  zap trash: [
    "~/Library/Preferences/com.quicken.Quicken.plist",
    "~/Library/Application Support/Quicken",
  ]
end
