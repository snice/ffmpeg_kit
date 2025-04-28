Pod::Spec.new do |s|
  s.name         = "ffmpeg_kit"
  s.version      = "6.0"
  s.summary      = "ffmpeg_kit"
  s.homepage     = "https://github.com/snice/ffmpeg_kit"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "snice" => "zhuzheteng@gmail.com" }
  s.source       = { :git => "https://github.com/snice/ffmpeg_kit.git", :tag => "#{s.version}"}
  s.default_subspec = 'Core'
  s.platform     = :ios, '13.0'

  s.subspec 'Core' do |ss|
    ss.frameworks = 'AudioToolbox', 'CoreMedia', 'VideoToolbox'
    ss.vendored_frameworks = 'Frameworks/*.{framework,xcframework}'
    ss.libraries = 'c++','iconv','z'
  end

end