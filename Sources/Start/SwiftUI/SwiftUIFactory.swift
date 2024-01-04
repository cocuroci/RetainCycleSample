import SwiftUI
import UIKit

enum SwiftUIFactory {
    static func make() -> some View {
        let state = SwiftUIView.ViewState()
        let presenter = SwiftUIPresenter()
        let interactor = SwiftUIInteractor(presenter: presenter)
        let view = SwiftUIView(interactor: interactor, viewState: state)
        presenter.viewStating = state
        return view
    }

    static func makeViewController() -> UIViewController {
        let view = Self.make()
        return UIHostingController(rootView: view)
    }
}
