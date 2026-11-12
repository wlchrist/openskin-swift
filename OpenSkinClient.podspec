Pod::Spec.new do |s|
  s.name = 'OpenSkinClient'
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  s.version = '0.2.0'
  s.source = { :git => 'https://github.com/wlchrist/openskin-swift.git', :tag => 'v0.2.0' }
  s.authors = 'OpenSkin'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://openskin.dev'
  s.summary = 'OpenSkin Platform Swift SDK'
  s.description = 'Typed Swift client for the OpenSkin Platform API.'
  s.source_files = 'Sources/OpenSkinClient/**/*.swift'
end
