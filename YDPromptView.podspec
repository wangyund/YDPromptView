Pod::Spec.new do |s|
  s.name     = 'YDExtension'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X YDExtension framework.'
  s.homepage = 'https://github.com/wangyund/YDExtension'
  s.social_media_url = 'https://github.com/wangyund/YDExtension'
  s.authors  = { 'wangyund' => 'wuyezhiguhun@163.com' }
  s.source   = { :git => 'https://github.com/wangyund/YDPromptView.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  s.public_header_files = 'YDPromptView/Headers/YDPromptView.h'
  s.source_files = 'YDPromptView/Headers/YDPromptView.h'

  s.frameworks = 'UIKit','Foundation'  
  
  s.subspec 'PromptHUD' do |ss|
    ss.source_files = 'YDPromptView/PromptHUD/*.{h,m}'

  end

  s.subspec 'View' do |ss|
    ss.source_files = 'YDPromptView/Extension/*.{h,m}'

  end


end
