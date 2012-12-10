# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'formotion'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Wino'
  app.identifier = "com.youreawino.wino"
  app.provisioning_profile = "/Users/jimknight/Library/MobileDevice/Provisioning Profiles/brother.mobileprovision"
  app.vendor_project('vendor/zxing-2.0/iphone/ZXingWidget', :xcode, :target => 'ZXingWidget', :headers_dir => 'Classes')
  app.frameworks += ['AddressBook','AddressBookUI','AudioToolbox','AVFoundation','CoreMedia','CoreVideo']
  app.libs += ['/usr/lib/libiconv.dylib']
  
  # app.codesign_certificate = "iPhone Developer: Lava Tech Inc (46VXBRL66A)"
end