#
# Be sure to run `pod lib lint CloudmersiveCDRApiClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "CloudmersiveCDRApiClient"
    s.version          = "2.0.0"

    s.summary          = "CDR API"
    s.description      = <<-DESC
                         Use the Content Disarm and Reconstruction API to remove security risks from documents by tearing them down, removing unsafe content and rebuilding them.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/Cloudmersive/Cloudmersive.APIClient.ObjectiveC.CDR"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/Cloudmersive/Cloudmersive.APIClient.ObjectiveC.CDR.git", :tag => "#{s.version}" }
    s.author       = { "Cloudmersive" => "support@cloudmersive.com" }

    s.source_files = 'client/CloudmersiveCDRApiClient/**/*.{m,h}'
    s.public_header_files = 'client/CloudmersiveCDRApiClient/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end

