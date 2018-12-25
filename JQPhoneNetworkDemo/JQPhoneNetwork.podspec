Pod::Spec.new do |s|
s.name         = "JQPhoneNetwork"
s.version      = "1.0.1"
s.summary      = "Mobile phone network type: Mobile | Unicom | Telecom; Mobile network status monitoring: Unknown, no network, 2g, 3g, 4g."
s.homepage     = "https://github.com/xiaohange/JQPhoneNetwork"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "Hari" => "532167805@qq.com" }
s.platform     = :ios, "8.0"
s.ios.deployment_target = "8.0"
s.source       = { :git => "https://github.com/xiaohange/JQPhoneNetwork.git", :tag => s.version.to_s }
s.social_media_url = 'https://weibo.com/hjq995'
s.requires_arc = true
s.source_files = 'JQPhoneNetwork/JQPhoneNetwork.h'
#存放引用的资源,如图片,plist文件等
#s.resources = 'JQPhoneNetwork/**/*'

s.subspec 'PhoneHelper' do |ph|
ph.source_files = 'JQPhoneNetwork/PhoneHelper/**/*'
end

s.subspec 'NetworkListener' do |ct|
ct.source_files = 'JQPhoneNetwork/NetworkListener/**/*'
ct.requires_arc = false
ct.dependency 'JQPhoneNetwork/PhoneHelper'
ct.dependency 'AFNetworking'
end

end
