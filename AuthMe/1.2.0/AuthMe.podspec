Pod::Spec.new do |spec|
  spec.name         = "AuthMe"
  spec.version      = "1.2.0"
  spec.summary      = "AuthMe framework"
  spec.description  = <<-DESC
  AuthMe Framework
                   DESC

  spec.homepage     = "https://authme.com"
  spec.license      = "BSD"
  # spec.license      = { :type => "BSD", :file => "LICENSE" }

  spec.author             = { "Mikimoto" => "mikimoto.c@authme.com",
                              "Evan" => "evan.wu@authme.com" }

  spec.platform     = :ios, "11.0"
  spec.ios.deployment_target = "11.0"

  spec.source       = { :git => "https://github.com/AuthMe01/AuthMe_iOS.git", :tag => "#{spec.version}" }

  spec.swift_version = "4.2"
  spec.ios.vendored_frameworks = 'AuthMe.xcframework'

  spec.libraries = "c++"

end
