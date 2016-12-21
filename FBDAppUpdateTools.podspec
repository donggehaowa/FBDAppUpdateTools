
Pod::Spec.new do |s|
  s.name         = "FBDAppUpdateTools"
  s.version      = "0.1"
  s.summary      = "FBDAppUpdateTools 是根据自己的APP在AppStore的版本信息和本地版本信息进行匹配后作出让用户去AppStore进行相关的更细的界面，目的为了更好的节省开发时间！解释权归冯宝东所有，如果涉及到版权信息，联系我删除代码 "
  s.homepage     = "https://github.com/donggehaowa/FBDAppUpdateTools"
  s.license      = "MIT"
  s.author             = { "feng" => "601291766@qq.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/donggehaowa/FBDAppUpdateTools.git", :tag => "#{s.version}" }
  s.source_files  = "FBDAppUpdateToolsClass/*.{h,m}"
  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "Resources/*.png"
  s.resources = "Resources/*.png","Resources/*.jpg"
  s.requires_arc = true

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  #  s.framework  = "UIKit"
   s.frameworks = "UIKit", "CoreText"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
end
