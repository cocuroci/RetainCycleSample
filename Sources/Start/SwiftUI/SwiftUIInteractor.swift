import Foundation

protocol SwiftUIInteracting {
    func getLabelValue()
}

final class SwiftUIInteractor: SwiftUIInteracting {
    private let presenter: SwiftUIPresenting
    private var counter: Int

    deinit {
        debugPrint(#file)
    }

    init(presenter: SwiftUIPresenting) {
        self.counter = 0
        self.presenter = presenter
    }

    func getLabelValue() {
        counter += 1
        presenter.presentLabel(counter: counter)
    }
}

