#
# Be sure to run `pod lib lint AXAListView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AXAListView'
  s.version          = '0.1.3'
  s.summary          = 'A simple and convenient UIStackView subclass to create lists dynamically from code.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AXAListView is an object that inherit UIStackView. You only have to install it once and use it as a list view programmatically with datasource protocol or closures.
                       DESC

  s.homepage         = 'https://github.com/HaraldBregu/AXAListView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Harald Bregu' => 'harald.bregu@gmail.com' }
  s.source           = { :git => 'https://github.com/HaraldBregu/AXAListView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/HaraldBregu'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AXAListView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AXAListView' => ['AXAListView/Assets/*.png']
  # }
  s.swift_version = '3.0'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # s.dependency 'Another', '~> 2.3'
end
