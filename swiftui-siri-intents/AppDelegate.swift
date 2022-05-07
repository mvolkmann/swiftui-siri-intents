import Intents
import IntentsUI
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    /*
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        print("in app delegate")
        return true
    }
    
    func application(
        _ application: UIApplication,
        handlerFor intent: INIntent
    ) -> Any? {
        print("got intent with handlerFor")
    }
    
    func application(
        _ application: UIApplication,
        continue userActivity: NSUserActivity,
        restorationHandler: @escaping ([UIUserActivityRestoring]?
    ) -> Void) -> Bool {
        print("got intent with restorationHandler")
        return true
    }
    */
    func application(
        _ application: UIApplication,
        continue userActivity: NSUserActivity,
        restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void
    ) -> Bool {
        print("AppDelegate: activityType = \(userActivity.activityType)")
        if userActivity.activityType == "SetBackgroundColor" { // correct literal?
            print("got match")
            let intent = userActivity.interaction?.intent as? SetBackgroundColorIntent
            if let intent = intent {
                print("new color = \(String(describing: intent.color))")
                // The demo Soup app uses a ViewController.
                // What is the equivalent in an app that doesn't use those?
            } else {
                print("got nil intent")
            }
        }
        return true
    }
}
