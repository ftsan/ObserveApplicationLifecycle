import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }
}

extension AppDelegate {
    
    func applicationWillEnterForeground(application: UIApplication) {
        AppLifecycleObservable.sharedInstance.applicationWillEnterForeground()
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        AppLifecycleObservable.sharedInstance.applicationDidEnterBackground()
    }
}
