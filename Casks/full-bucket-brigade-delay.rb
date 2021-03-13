cask "full-bucket-brigade-delay" do
  version "1.2.4"
  sha256 "f27c81043adc3b1a5500a4bfccd6f639fde7b35a8eeb0f3e9cd2d4d42d9bb9b6"

  url "https://www.fullbucket.de/music/dl/fbdelay_#{version.dots_to_underscores}_mac.pkg"
  name "Full Bucket Brigade Delay"
  desc "BBD analog delay simulation"
  homepage "https://www.fullbucket.de/music/fbdelay.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fbdelay_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.FBDelay",
    "com.fullbucket.vst.pkg.FBDelay",
  ]

  caveats do
    reboot
  end
end
