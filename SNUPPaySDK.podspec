Pod::Spec.new do |s|

  s.name = "SNUPPaySDK"
  s.version = "3.3.6"
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
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.frameworks = 'CFNetwork','SystemConfiguration','Security'
  s.libraries = 'z'
  s.source_files = 'paymentcontrol/inc/*.h'
  s.vendored_libraries = 'paymentcontrol/libs/libPaymentControlMini.a'
end