import Foundation

protocol SwiftUIPresenting: AnyObject {
    var viewStating: ViewStating? { get set }
    func presentLabel(counter: Int)
}

final class SwiftUIPresenter: SwiftUIPresenting {
    weak var viewStating: ViewStating?

    func presentLabel(counter: Int) {
        viewStating?.displayLabelValue(value: "New value \(counter)")
    }
}
