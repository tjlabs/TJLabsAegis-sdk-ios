
Pod::Spec.new do |s|
  s.name             = 'TJLabsAegisSDK'
  s.version          = '0.0.2'
  s.summary          = 'TJLabsAegisSDK for iOS'
  s.swift_version    = '5.0'
  s.description      = 'Developed by TJLABS'

  s.homepage         = 'https://www.tjlabscorp.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tjlabs-dev' => 'dev@tjlabscorp.com' }
  s.source           = { :git => 'https://github.com/tjlabs/TJLabsAegis-sdk-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'
  
  s.static_framework = true
  s.source_files = 'TJLabsAegisSDK/Classes/**/*'
  
  s.vendored_frameworks = 'Frameworks/TJLabsAuth.xcframework',
                          'Frameworks/TJLabsAegis.xcframework',
                          'Frameworks/TJLabsCommon.xcframework'
                          
  # s.resource_bundles = {
  #   'TJLabsAegisSDK' => ['TJLabsAegisSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
