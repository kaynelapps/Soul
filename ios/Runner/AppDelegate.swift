import Flutter
import UIKit
import Firebase
import GoogleMobileAds
import FBAudienceNetwork
import sign_in_with_apple
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage
import FirebaseCrashlytics

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
        Crashlytics.crashlytics().setCrashlyticsCollectionEnabled(true)
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
