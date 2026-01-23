import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyD_y423Zc8tzp2_y6w_MMj3UuZxTwvX3uk")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
