Pod::Spec.new do |s|
  s.name             = 'flutter_lib_pod'
  s.version          = '0.1.0'
  s.summary          = 'A short description of flutter_lib_pod.'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/NothingLuo/flutter_lib_pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NothingLuo' => 'nothing_lu@163.com' }
  s.source           = { :git => 'https://github.com/NothingLuo/flutter_lib_pod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'


  # 添加编译出来的依赖库
  s.static_framework = true
  p = Dir::open("ios_frameworks/framework")
  arr = Array.new
  arr.push('ios_frameworks/framework/Release/*.xcframework')
  s.ios.vendored_frameworks = arr

end
