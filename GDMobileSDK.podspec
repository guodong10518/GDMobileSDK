Pod::Spec.new do |s|
	s.name = 'GDMobileSDK'
	s.version = '0.1.5'
	s.summary = 'GD SDK for iOS developers'
	s.homepage = 'https://github.com/guodong10518/GDMobileSDK'
	s.license = 'MIT'
	s.author = { 'guodong10518' => 'guodong10518@163.com' }
	s.platform = :ios, '7.0'
	s.source = { :git => 'https://github.com/guodong10518/GDMobileSDK.git', :tag => s.version }
    s.requires_arc = true

    s.resource = 'GDMobileSDK/GDMobileSDKResource.bundle'
    s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
    s.vendored_libraries = 'GDMobileSDK/libGDMobileSDK.a'
    s.source_files = 'GDMobileSDK/Header/**/*.h'
    s.public_header_files = 'GDMobileSDK/Header/**/*.h'
    s.frameworks = 'UIKit', 'Security', 'MapKit', 'CoreLocation', 'AVFoundation', 'QuartzCore', 'JavaScriptCore'
    s.dependency 'JSONModel', '~> 1.0.2'
    s.dependency 'SDWebImage', '~> 3.7.1'
    s.dependency 'MJRefresh'
    s.dependency 'MBProgressHUD', '~> 0.9.1'
    s.dependency 'IQKeyboardManager'
    s.dependency 'NJKWebViewProgress'
end