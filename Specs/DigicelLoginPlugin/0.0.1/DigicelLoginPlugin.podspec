Pod::Spec.new do |s|
  s.name                = 'DigicelLoginPlugin'
  s.version             = '0.0.1'
  s.summary             = 'A plugin for Digicel login & subscription for Zapp iOS (V2.0.0)'
  s.description         = 'Plugin to make login & subscription with DigiCel for Zapp iOS'
  s.homepage            = 'https://github.com/Digicel-Sportsmax/DigicelLoginPluginProduction'
  s.license             = 'MIT'
  s.author              = { "Mohieddine Zarif" => "mohieddine.zarif@gotocme.com" }
  s.source              = { :git => 'git@github.com:Digicel-Sportsmax/DigicelLoginPluginProduction.git', :tag => s.version.to_s }

  s.ios.deployment_target = "10.0"
  s.platform            = :ios, '10.0'
  s.requires_arc        = true
  s.static_framework    = true
  s.swift_version       = '5.1'

  s.subspec 'Core' do |c|
    c.frameworks = 'UIKit'

    c.source_files = 'Classes/**/*.{swift}'
    c.resources = ['Resources/**/*.{xib,png}']

    c.dependency 'ZappPlugins'
    c.dependency 'ApplicasterSDK'
    c.dependency 'Alamofire'
    c.dependency 'CleengLogin', '~> 3.0.0'

  end

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
                }

  s.default_subspec = 'Core'

end
