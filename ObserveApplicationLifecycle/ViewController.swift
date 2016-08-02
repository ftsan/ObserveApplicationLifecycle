import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        addAppLifecycleObservable()
    }
}

// MARK: - AppLifecycleObserver

extension ViewController: AppLifecycleObserver {

    func addAppLifecycleObservable() {
        AppLifecycleObservable.sharedInstance.add(self, selector: .observeViewWillEnterForeground, name: .ApplicationWillEnterForeground)
        AppLifecycleObservable.sharedInstance.add(self, selector: .observeViewDidEnterBackground, name: .ApplicationDidEnterBackground)
    }
    
    func observeViewWillEnterForeground() {
        print("viewWillEnterForeground")
    }
    
    func observeViewDidEnterBackground() {
        print("viewDidEnterBackground")
    }
}

// MARK: - Selector

private extension Selector {
    
    static let observeViewWillEnterForeground = #selector(ViewController.observeViewWillEnterForeground)
    
    static let observeViewDidEnterBackground = #selector(ViewController.observeViewDidEnterBackground)
}
