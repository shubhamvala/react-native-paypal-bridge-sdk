require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name         = "RNPaypalSdk"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNPaypalSdk
                   DESC
  s.homepage     = "n/a"
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/shubhamvala/react-native-paypal-bridge-sdk", :tag => "master" }
  s.source_files = "**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "PayPal-iOS-SDK"
  #s.dependency "others"

end

  