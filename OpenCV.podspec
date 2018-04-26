Pod::Spec.new do |s|
  s.name         = "OpenCV"
  s.version      = "3.3.1"
  s.summary      = "OpenCV (Computer Vision) for iOS"
  s.homepage     = "https://opencv.org/"
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.authors       = "https://github.com/opencv/opencv/graphs/contributors"
 
  s.platform     = :ios
  s.source       = { 
    :git => "https://github.com/swipetospin/openCV-SpinCar.git"
  }
  
  s.prepare_command = "mv ios/opencv2.framework/Versions/A/opencv2.txt ios/opencv2 && mv ios/opencv2.framework/Versions/A/Headers ios/include"
  s.source_files = 'ios/include/**/*.{h,hpp}'
  s.header_mappings_dir = 'opencv2'
  s.preserve_paths = 'opencv2.framework'
  s.frameworks = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'opencv2', 'QuartzCore', 'UIKit'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/OpenCV/' }
end
