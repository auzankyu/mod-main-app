# Uncomment the next line to define a global platform for your project
 platform :ios, '12.0'

source 'https://cdn.cocoapods.org/'
source 'https://github.com/auzankyu/specs.git'

target 'AppMain' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  pod 'ModuleA'
  pod 'ModuleC'
#  pod 'ModuleA', :path => '../ModuleA'
#  pod 'ModuleC', :path => '../ModuleC'
#  pod 'ModuleD', :path => '../ModuleD'

#  pod 'ModuleA', :git => 'https://github.com/auzankyu/ModuleA.git', :branch => 'main'
#  pod 'ModuleC', :git => 'https://github.com/auzankyu/ModuleC.git', :branch => 'main'
  

end
#
#def append_header_search_path(target, path)
#    target.build_configurations.each do |config|
#        # Note that there's a space character after `$(inherited)`.
#        config.build_settings["HEADER_SEARCH_PATHS"] ||= "$(inherited) "
#        config.build_settings["HEADER_SEARCH_PATHS"] << path
#    end
#end

pre_install do |installer|
    # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
    Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
#                  config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
#                  append_header_search_path(target, "$(PLATFORM_DIR)/Developer/Library/Frameworks")
               end
          end
   end
end
