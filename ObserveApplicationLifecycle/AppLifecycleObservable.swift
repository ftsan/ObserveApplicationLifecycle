import Foundation

/// Subject
final class AppLifecycleObservable {
    
    static let sharedInstance = AppLifecycleObservable()
    
    private let notificationCenter = NSNotificationCenter.defaultCenter()
    
    func add(observer: AppLifecycleObserver, selector: Selector, name: AppLifecycleObservable.NotificationName) {
        notificationCenter.addObserver(observer, selector: selector, name: name.rawValue, object: nil)
    }
    
    func applicationWillEnterForeground() {
        notificationCenter.postNotificationName(NotificationName.ApplicationWillEnterForeground.rawValue, object: nil)
    }
    
    func applicationDidEnterBackground() {
        notificationCenter.postNotificationName(NotificationName.ApplicationDidEnterBackground.rawValue, object: nil)
    }
}

// MARK: - NotificationName

extension AppLifecycleObservable {
    
    enum NotificationName: String {
        case ApplicationWillEnterForeground
        case ApplicationDidEnterBackground
    }
}
