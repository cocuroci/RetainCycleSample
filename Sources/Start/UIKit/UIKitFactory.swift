import UIKit

enum UIKitFactory {
    static func make(showLeak: Bool = false) -> UIViewController {
        let presenter: UIKitPresenting = showLeak ? UIKitPresenterLeak() : UIKitPresenterNoLeak()
        let interactor = UIKitInteractor(presenter: presenter)
        let viewController = UIKitViewController(interactor: interactor)
        presenter.viewController = viewController

        return viewController
    }
}
