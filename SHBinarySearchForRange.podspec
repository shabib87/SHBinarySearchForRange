
Pod::Spec.new do |s|
  s.name             = 'SHBinarySearchForRange'
  s.version          = '0.1.2'
  s.summary          = 'A simple library to perform binary search to find the nearest double/float value from a double/float array for a given double/float.'

  s.description      = <<-DESC
This cocoapod helps to find the nearest ceiling double/float value from a double/float array by performing a binary search operation. 
                       DESC

  s.homepage         = 'https://github.com/shabib87/SHBinarySearchForRange'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ahmad Shabibul Hossain' => 'shabib.sust@gmail.com' }
  s.source           = { :git => 'https://github.com/shabib87/SHBinarySearchForRange.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/shabib_hossain'

  s.ios.deployment_target = '8.0'
  s.requires_arc        = true

  s.source_files = 'SHBinarySearchForRange/Classes/**/*'

  s.frameworks          = 'Foundation'
end
