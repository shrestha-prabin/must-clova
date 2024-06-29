import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
        let flutterChannel = FlutterMethodChannel(
            name: "task.must.app/ekyc",
            binaryMessenger: controller.binaryMessenger
        )
        flutterChannel.setMethodCallHandler({
            [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
            
            guard call.method == "startEKyc" else {
                result(FlutterMethodNotImplemented)
                return
            }
            
            self?.navigateToEkycSession()
        })
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func navigateToEkycSession() {
        let viewController = VerifyIdCardDomainViewController()
        self.window!.rootViewController = viewController
        self.window!.makeKeyAndVisible()
    }
}
