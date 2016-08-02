Pod::Spec.new do |s|
  s.name             = 'NSPod'
  s.version          = '0.1.0'
  s.summary          = 'A NSPod help me to init private pod.'
  s.description      = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  s.homepage         = 'https://github.com/nwios/NSPod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nawaf aldosari' => 'nawafd@outlook.sa' }
  s.source           = { :git => 'https://github.com/nwios/NSPod.git', :tag => s.version }
  s.social_media_url = 'https://twitter.com/nwios'
  s.ios.deployment_target = '8.0'
  s.source_files = 'NSPod/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'AVFoundation'
end
