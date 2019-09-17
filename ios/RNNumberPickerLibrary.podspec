
Pod::Spec.new do |s|
  s.name         = "RNNumberPickerLibrary"
  s.version      = "1.0.0"
  s.summary      = "A React native number picker library"
  s.description  = "A React native number picker library for iOS and Android"
  s.homepage     = "https://github.com/flowridr/react-native-number-picker-ultra"
  s.license      = "MIT"
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/flowridr/react-native-number-picker-ultra.git", :tag => "master" }
  s.source_files  = "RNNumberPickerLibrary/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  