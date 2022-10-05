platform :ios, '12.0'

flutter_application_path = '../flutter_module'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')


post_install do |installer|
  flutter_post_install(installer)
end

target 'HotSearch' do

  use_frameworks!

  install_all_flutter_pods(flutter_application_path)

end
