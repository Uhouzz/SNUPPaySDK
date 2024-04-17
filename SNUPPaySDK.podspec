Pod::Spec.new do |s|

  s.name = "SNUPPaySDK"
  s.version = "3.5.0"
  s.license = {
    :type => "Copyright",
    :text => "中国银联 版权所有."
  }
  s.summary = "IOS版银联手机控件支付开发"
  s.homepage = "https://open.unionpay.com/ajweb/index"
  s.author      = { 'unionpay' => 'https://open.unionpay.com/ajweb/index' }
  s.source       = { :git => "https://github.com/iOSBoy/SNUPPaySDK.git", :tag => s.version }
  s.platform = :ios
  
  s.requires_arc = true
  s.frameworks = 'CFNetwork','SystemConfiguration'
  s.libraries = 'z'
  s.vendored_frameworks = 'UPPaymentControlMini.xcframework'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' 
  }
end
