Pod::Spec.new do |s|
  s.name              = "TwitterCore"
  s.version           = "3.2.0.1"
  s.summary           = "Increase user engagement and app growth."
  s.homepage          = "https://github.com/twitter/twitter-kit-ios"
  s.documentation_url = "https://github.com/twitter/twitter-kit-ios/wiki"
  s.social_media_url  = "https://twitter.com/TwitterDev"
  s.authors           = "Twitter"
  s.platforms         = { :ios => "9.0", :tvos => "9.0" }
  s.source            = { :git => 'https://github.com/d-o-n-u-t-s/mixch-twitter-kit-ios.git',
                          :tag => "v#{s.version}"
                        }
  s.source_files      = [ 'TwitterCore/TwitterCore/**/*.{h,m}',
                          'TwitterCore/TwitterCore-dynamic/TwitterCore.h',
                          'TwitterCore/libextobjc/*.h'
                        ]

  pch_AF = <<-EOS
#import <Foundation/Foundation.h>
#import "TWTRDefines.h"
#import "EXTKeyPathCoding.h"
#import "EXTScope.h"
EOS
  s.prefix_header_contents = pch_AF

  s.requires_arc      = true
  s.license           = { :type => "Commercial",
                          :text => "Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md"
                        }
  s.ios.frameworks    = [ "Accounts", "CoreData", "CoreGraphics", "Foundation", "Security", "Social", "UIKit" ]
  s.tvos.frameworks   = [ "CoreData", "CoreGraphics", "Foundation", "Security", "UIKit" ]
end
