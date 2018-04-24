Pod::Spec.new do |s|
  s.name         = "OpenCV"
  s.version      = "3.3.1"
  s.summary      = "OpenCV (Computer Vision) for iOS."
  s.homepage     = "http://github.com/SebastienThiebaud/OpenCV-iOS"

  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { "Sebastien THIEBAUD" => "sthiebaud@icloud.com" }
  s.platform     = :ios

  s.source       = { 
    :http => "https://www.dropbox.com/s/2q0jgu2cghy7xns/ios.zip?dl=0", 
  }

  s.prepare_command = "touch Empty.m && mv ios/opencv2.framework/Versions/A/opencv2 ios/libopencv2Static.a && mv ios/opencv2.framework/Versions/A/Headers ios/include"

  s.source_files = 'Empty.m', 'ios/include/**/*.{h,hpp}'
  s.header_mappings_dir = 'opencv2'
  s.preserve_paths = '*'
  s.frameworks = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'opencv2', 'QuartzCore', 'UIKit'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/OpenCV' }
end
