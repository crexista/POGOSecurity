Pod::Spec.new do |s|
  s.name     = 'POGOSecurity'
  s.version  = '0.0.1'
  s.license  = '...'
  s.authors  = { 'crexista' => 'fake@fake.xxx' }
  s.homepage = 'crexista'
  s.summary = 'POGOSecurity'
  s.source = { :git => 'https://github.com/crexista/POGOSecurity' }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
end
