cask "deputy" do
  version "1.2.6"
  sha256 "5292cdf95967ceeeef9987db439528249cadd8da6effb9649b188b3c885c2c26"

  url "https://www.fullbucket.de/music/dl/deputy_#{version.dots_to_underscores}_mac.pkg"
  name "The Deputy Mark II"
  desc "String synthesizer"
  homepage "https://www.fullbucket.de/music/deputy.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "deputy_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.Deputy",
    "com.fullbucket.vst.pkg.Deputy",
  ]

  caveats do
    reboot
  end
end
