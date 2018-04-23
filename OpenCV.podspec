Pod::Spec.new do |s|
   s.name = 'OpenCV'
   s.version = '3.4.1'
   s.license = 'BSD'

   s.summary = 'OpenCV (Computer Vision) for iOS.'
   s.homepage = 'http://opencv.org'
   s.documentation_url = 'http://opencv.org'
   s.author = 'OpenCV'

   s.source = { :git => 'https://github.com/opencv/opencv.git', :tag => s.version }
end
