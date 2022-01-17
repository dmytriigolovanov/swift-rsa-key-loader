Pod::Spec.new do |s|
  s.name             = 'RSAKeyLoader'
  s.version          = '1.2.0'
  s.summary          = 'RSA Key Loader'

  s.description      = <<-DESC
Loading RSA Private / Public Key from file.
                       DESC

  s.homepage         = 'https://github.com/dmytriigolovanov/swift-rsa-key-loader'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dmytrii Golovanov' => 'dmyrii.golovanov@google.com' }

  s.source           = {
    :git => 'https://github.com/dmytriigolovanov/swift-rsa-key-loader.git',
    :tag => 'v' + s.version.to_s
  }

  s.preserve_paths = [
    "README.md"
  ]

  s.ios.deployment_target = "9.0"

  s.swift_version = "5.0"

  s.source_files  = "Sources/RSAKeyLoader/**/*"
end