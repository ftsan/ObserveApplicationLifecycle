import UIKit

// MARK: - AppLifecycleObserver

protocol AppLifecycleObserver: class {
    
    func addAppLifecycleObservable()
    
    func observeViewWillEnterForeground()
    
    func observeViewDidEnterBackground()
}

extension AppLifecycleObserver where Self: UIViewController {
    
    func observeViewWillEnterForeground() {
        print("viewWillEnterForeground")
    }
    
    func observeViewDidEnterBackground() {
        print("viewDidEnterBackground")
    }
}
