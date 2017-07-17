#
# Be sure to run `pod lib lint VHSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VHSwift'
  s.version          = '0.1.0'
  s.summary          = 'VHSwift is Swift Extension for iOS Application.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
VHSwift is Swift Extension for iOS Application. Install library into project, never have to write this generic code again!
                       DESC

  s.homepage         = 'https://github.com/vipuldudhat/VHSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vipul Dudhat' => 'vipul@sccinfotech.com' }
  s.source           = { :git => 'https://github.com/vipuldudhat/VHSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'VHSwift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VHSwift' => ['VHSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
