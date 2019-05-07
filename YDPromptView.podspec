Pod::Spec.new do |s|
  s.name     = 'YDPromptView'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X YDPromptView framework.'
  s.homepage = 'https://github.com/wangyund/YDPromptView'
  s.social_media_url = 'https://github.com/wangyund/YDPromptView'
  s.authors  = { 'wangyund' => 'wuyezhiguhun@163.com' }
  s.source   = { :git => 'https://github.com/wangyund/YDPromptView.git', :tag => s.version, :submodules => true }
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.public_header_files = 'YDPromptView/YDPromptView/Headers/YDPromptView.h'
  s.source_files = 'YDPromptView/YDPromptView/Headers/YDPromptView.h'

  s.frameworks = 'UIKit','Foundation'
  s.requires_arc = true
  
  s.subspec 'PromptHUD' do |ss|
    ss.source_files = 'YDPromptView/YDPromptView/PromptHUD/*.{h,m}'
    ss.requires_arc = true
  end

  s.subspec 'Extension' do |ss|
    ss.source_files = 'YDPromptView/YDPromptView/Extension/*.{h,m}'
    ss.requires_arc = true
  end


end
