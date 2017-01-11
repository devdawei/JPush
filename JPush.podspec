

Pod::Spec.new do |s|

s.name         = 'JPush'
s.summary      = '使用CocoaPods的方式集成极光推送服务。'
s.version      = '1.0.0'
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.authors      = { 'devdawei' => '2549129899@qq.com' }
s.homepage     = 'https://github.com/devdawei'

s.platform     = :ios
s.ios.deployment_target = '7.0'
s.requires_arc = true

s.source       = { :git => 'https://github.com/devdawei/JPush.git', :tag => s.version.to_s }
s.source_files = 'JPushSDK/*.{h}'

s.vendored_frameworks = 'JPushSDK/*.a'
s.frameworks = 'Foundation', 'UIKit', 'CFNetwork', 'CoreFoundation', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Security', 'AdSupport', 'UserNotifications'
s.libraries = 'z', 'resolv'

s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/JPushSDK/*.{h}' }

end
