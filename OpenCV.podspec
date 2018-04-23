Pod::Spec.new do |s|
  s.name         = "OpenCV"
  s.version      = "3.3.1"
  s.summary      = "OpenCV (Computer Vision) for iOS"
  s.homepage     = "https://opencv.org/"

  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.authors       = "https://github.com/opencv/opencv/graphs/contributors"

  s.platform     = :ios
  s.source       = { 
    :http => "https://www.dropbox.com/s/2q0jgu2cghy7xns/ios.zip?dl=0", 
  }
  s.prepare_command = "touch Empty.m && mv ios/opencv2.framework/Versions/A/opencv2 ios/libopencv2Static.a && mv ios/opencv2.framework/Versions/A/Headers ios/include" 
  s.source_files = 'Empty.m', 'ios/include/**/*.{h,hpp}'
  s.public_header_files = 'ios/include/**/*.{h,hpp}'
  s.header_mappings_dir = 'ios/include'
  s.vendored_libraries = 'ios/libopencv2Static.a'
  s.frameworks = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'opencv2', 'QuartzCore', 'UIKit'
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-force_load \"${PODS_ROOT}/OpenCV/ios/libopencv2Static.a\"" }
  s.header_dir = 'opencv2'
  s.libraries = 'c++'
  s.user_target_xcconfig = { "CLANG_WARN_DOCUMENTATION_COMMENTS" => "NO" }
  s.requires_arc = false
end
