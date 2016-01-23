Pod::Spec.new do |s|
	s.name = 'GDMobileSDK'
	s.version = '0.1.4'
	s.summary = 'GD SDK for iOS developers'
	s.homepage = 'https://github.com/guodong10518/GDMobileSDK'
	s.license = 'MIT'
	s.author = { 'guodong10518' => 'guodong10518@163.com' }
	s.platform = :ios, '7.0'
	s.source = { :git => 'https://github.com/guodong10518/GDMobileSDK.git', :tag => s.version }
    s.requires_arc = true

    s.default_subspec = 'GDCore'

    s.subspec 'GDCore' do |core|
        core.resource = 'GDMobileSDK/GDMobileSDKResource.bundle'
        core.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
        core.vendored_libraries = 'GDMobileSDK/libGDMobileSDK.a'
        core.source_files = 'GDMobileSDK/Header/**/*.h'
        core.public_header_files = 'GDMobileSDK/Header/**/*.h'
        core.frameworks = 'UIKit', 'Security', 'MapKit', 'CoreLocation', 'AVFoundation', 'QuartzCore', 'JavaScriptCore'
        core.dependency 'JSONModel', '~> 1.0.2'
        core.dependency 'SDWebImage', '~> 3.7.1'
        core.dependency 'MJRefresh'
        core.dependency 'MBProgressHUD', '~> 0.9.1'
        core.dependency 'IQKeyboardManager'
        core.dependency 'NJKWebViewProgress'
    end

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