import Foundation

protocol UIKitInteracting {
    func getLabelValue()
}

final class UIKitInteractor: UIKitInteracting {
    private let presenter: UIKitPresenting
    private var counter: Int

    deinit {
        debugPrint(#file)
    }

    init(presenter: UIKitPresenting) {
        self.counter = 0
        self.presenter = presenter
    }

    func getLabelValue() {
        counter += 1
        presenter.presentLabel(counter: counter)
    }
}
