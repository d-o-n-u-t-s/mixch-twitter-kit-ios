Pod::Spec.new do |s|
  s.name              = "TwitterKit"
  s.version           = "3.4.2.2"
  s.summary           = "Increase user engagement and app growth."
  s.homepage          = "https://github.com/twitter/twitter-kit-ios"
  s.documentation_url = "https://github.com/twitter/twitter-kit-ios/wiki"
  s.social_media_url  = "https://twitter.com/TwitterDev"
  s.authors           = "Twitter"
  s.platform          = :ios, "9.0"
  s.source            = { :git => 'https://github.com/d-o-n-u-t-s/mixch-twitter-kit-ios.git',
                          :tag => "v#{s.version}"
                        }

  s.source_files      = [ 'TwitterKit/TwitterKit/{Networking,Persistence,Resources,Social,Supporting Files,TwitterShareExtensionUI}/**/*.{h,m}',
                          'TwitterKit/TwitterKit/External/Punycode Cocoa/Pod/*.{h,m}',
                          'TwitterKit/TwitterKit/*.{h,m}',
                          'TwitterKit/libextobjc/*.h'
                        ]
  s.exclude_files     = 'TwitterKit/TwitterKit/**/{TWTRTimelineViewController}.{h,m}'

pch_AF = <<-EOS
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <TwitterCore/TWTRDefines.h>
#define IS_UIKIT_AVAILABLE (TARGET_OS_IOS || TARGET_OS_TV)

#ifndef NS_DESIGNATED_INITIALIZER
    #if __has_attribute(objc_designated_initializer)
        #define NS_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
    #else
        #define NS_DESIGNATED_INITIALIZER
    #endif
#endif

#import "EXTKeyPathCoding.h"
#import "EXTScope.h"
EOS
  s.prefix_header_contents = pch_AF

  s.requires_arc      = true
  s.license           = { :type => "Commercial",
                          :text => "Twitter Kit: Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md"
                        }
  s.resources         = [ "TwitterKit/TwitterKitResources.bundle" ]
  s.frameworks        = "CoreText", "QuartzCore", "CoreData", "CoreGraphics", "Foundation", "Security", "UIKit", "CoreMedia", "AVFoundation", "SafariServices"
end
