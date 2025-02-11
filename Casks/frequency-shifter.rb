cask "frequency-shifter" do
  version "1.1.1"
  sha256 "65cd69c2072f3afc08b761e94ab536af8b0f5a159a6283660543e83d7f62f5df"

  url "https://www.fullbucket.de/music/dl/freqshifter_#{version.dots_to_underscores}_mac.pkg"
  name "Frequency Shifter"
  desc "Bode frequency shifter"
  homepage "https://www.fullbucket.de/music/freqshifter.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "freqshifter_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.FreqShifter",
    "com.fullbucket.vst.pkg.FreqShifter",
  ]
end
