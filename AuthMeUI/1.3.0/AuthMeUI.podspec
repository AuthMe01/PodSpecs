Pod::Spec.new do |spec|
  spec.name         = "AuthMeUI"
  spec.version="1.3.0"
  spec.summary      = "AuthMeUI framework"

  spec.description  = <<-DESC
  AuthMeUI Framework
                   DESC

  spec.homepage     = "https://authme.com"
  spec.license      = "BSD"
  spec.author             = { "Mikimoto" => "mikimoto.c@authme.com",
                              "Evan" => "evan.wu@authme.com" }
  spec.platform     = :ios, "11.0"
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://github.com/AuthMe01/AuthMeUI_iOS.git", :tag => "#{spec.version}" }

  spec.swift_version = "4.2"
  spec.ios.vendored_frameworks = 'AuthMeUI.xcframework'
  spec.dependency "AuthMe"
end
