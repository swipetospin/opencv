Pod::Spec.new do |s|
   s.name = 'OpenCV'
   s.version = '3.3.1'
   s.license = 'MIT'
   s.homepage = "https://github.com/ameerSpincar/opencv.git"
   s.summary = 'OpenCV (Computer Vision) for iOS.'
   s.author = { "Ameer SpinCar" =>  "ameer@spincar.com" }
   s.source = { :git => 'https://github.com/ameerSpincar/opencv.git', :tag => s.version }
end
