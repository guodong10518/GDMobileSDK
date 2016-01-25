Pod::Spec.new do |s|
	s.name = 'GDMobileSDK'
	s.version = '0.1.7'
	s.summary = 'GD SDK for iOS developers'
	s.homepage = 'https://github.com/guodong10518/GDMobileSDK'
	s.license = 'MIT'
	s.author = { 'guodong10518' => 'guodong10518@163.com' }
	s.platform = :ios, '7.0'
	s.source = { :git => 'https://github.com/guodong10518/GDMobileSDK.git', :tag => s.version }
    s.requires_arc = true
    s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

    s.deprecated = true
end