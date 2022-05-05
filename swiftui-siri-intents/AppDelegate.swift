import Intents
import IntentsUI
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
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
}
