Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "ActivInViews"
s.summary = "ActivInViews: Easy and fast activity indicator for all of your views!"
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Evgenii Kuzmin" => "e.kuzmin.kzn@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/EVGKZN/ActivInViews"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/EVGKZN/ActivInViews.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'SnapKit'

# 8
s.source_files = "ActivInViews/**/*.{swift}"

# 9
s.resources = "ActivInViews/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "4.2"

end
