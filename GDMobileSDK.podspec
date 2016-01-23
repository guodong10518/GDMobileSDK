Pod::Spec.new do |s|
	s.name = 'GDMobileSDK'
	s.version = '0.1.3'
	s.summary = 'GD SDK for iOS developers'
	s.homepage = 'https://github.com/guodong10518/GDMobileSDK'
	s.license = 'MIT'
	s.author = { 'guodong10518' => 'guodong10518@163.com' }
	s.platform = :ios, '7.0'
	s.source = { :git => 'https://github.com/guodong10518/GDMobileSDK.git', :tag => s.version }
    s.requires_arc = true
    s.resource = 'GDMobileSDK/GDMobileSDKResource.bundle'
    s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
    s.vendored_libraries = 'GDMobileSDK/*.a'

    s.default_subspec = 'GDUtils', 'GDBasics', 'GDViews', 'GDControllers', 'GDStorages', 'GDNetwork'

    s.subspec 'GDUtils' do |utils|
        utils.source_files = 'GDMobileSDK/Header/GDUtils/*.h'
        utils.public_header_files = 'GDMobileSDK/Header/GDUtils/*.h'
        utils.frameworks = 'UIKit', 'Security', 'MapKit', 'CoreLocation', 'AVFoundation', 'QuartzCore'
        utils.dependency 'JSONModel', '~> 1.0.2'
        utils.dependency 'SDWebImage', '~> 3.7.1'
        utils.dependency 'MJRefresh'
        utils.dependency 'MBProgressHUD', '~> 0.9.1'
        utils.dependency 'IQKeyboardManager'
        utils.dependency 'NJKWebViewProgress'
    end

    s.subspec 'GDBasics' do |basics|
        basics.source_files = 'GDMobileSDK/Header/GDBasic/*.h'
        basics.public_header_files = 'GDMobileSDK/Header/GDBasic/*.h'
        basics.frameworks = 'JavaScriptCore'
        basics.dependency 'GDMobileSDK/GDUtils'
    end

    s.subspec 'GDViews' do |views|
        views.source_files = 'GDMobileSDK/Header/GDViews/**/*.h'
        views.public_header_files = 'GDMobileSDK/Header/GDViews/**/*.h'
        views.header_mappings_dir = 'GDMobileSDK/Header/GDViews/'
        views.frameworks = 'MediaPlayer'
        views.dependency 'GDMobileSDK/GDUtils'
    end

    s.subspec 'GDControllers' do |controllers|
        controllers.source_files = 'GDMobileSDK/Header/GDControllers/*.h'
        controllers.public_header_files = 'GDMobileSDK/Header/GDControllers/*.h'
        controllers.dependency 'GDMobileSDK/GDUtils'
    end

    s.subspec 'GDStorages' do |storages|
        storages.source_files = 'GDMobileSDK/Header/GDStorages/*.h'
        storages.public_header_files = 'GDMobileSDK/Header/GDStorages/*.h'
        storages.dependency 'GDMobileSDK/GDUtils'
    end

    s.subspec 'GDNetwork' do |network|
        network.source_files = 'GDMobileSDK/Header/GDNetwork/*.h'
        network.public_header_files = 'GDMobileSDK/Header/GDNetwork/*.h'
        network.dependency 'GDMobileSDK/GDUtils'
    end

    s.subspec 'GDServices' do |services|
        services.source_files = 'GDMobileSDK/Header/GDServices/*.h'
        services.public_header_files = 'GDMobileSDK/Header/GDServices/*.h'
        services.dependency 'GDMobileSDK/GDUtils'
        services.dependency 'GDMobileSDK/GDNetwork'
    end
end