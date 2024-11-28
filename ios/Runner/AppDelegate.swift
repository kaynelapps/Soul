import Flutter
import UIKit
import Firebase
import GoogleMobileAds
import FBAudienceNetwork

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        FirebaseApp.configure()

        GADMobileAds.sharedInstance().start(completionHandler: nil)
        FBAudienceNetworkAds.initialize(with: nil)

        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
