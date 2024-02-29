# Uncomment the next line to define a global platform for your project
 platform :ios, '11.0'

source 'https://cdn.cocoapods.org/'
source 'https://github.com/auzankyu/specs.git'

target 'AppMain' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  pod 'ModuleA'
  pod 'ModuleC', :git => 'https://github.com/auzankyu/ModuleC.git', :branch => 'main'
  
  #  pod 'ModuleB', :path => '../ModuleB'


end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
               end
          end
   end
end
