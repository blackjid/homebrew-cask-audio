cask "span" do
  version "3.10"
  sha256 "c356d86a24483464278f35a83a9b970cbaf00f7cecaebe485adb535b1db55213"

  url "https://www.voxengo.com/files/VoxengoSPAN_#{version.no_dots}_Mac_AU_AAX_setup.dmg"
  appcast "https://www.voxengo.com/product/span/",
          must_contain: version.no_dots
  name "Voxengo SPAN"
  desc "Spectrum analyzer plugin"
  homepage "https://www.voxengo.com/product/span/"

  audio_unit_plugin "SPAN.component"
  artifact "ProTools AAX/SPAN.aaxplugin",
           target: "/Library/Application Support/Avid/Audio/Plug-Ins/SPAN.aaxplugin"
end
