import SwiftUI

protocol ViewStating: AnyObject {
    func displayLabelValue(value: String)
}

struct SwiftUIView: View {
    private let interactor: SwiftUIInteracting
    @StateObject private var viewState: ViewState

    init(interactor: SwiftUIInteracting, viewState: ViewState) {
        self.interactor = interactor
        self._viewState = StateObject(wrappedValue: viewState)
    }

    var body: some View {
        VStack(spacing: 8) {
            Button("Get Label Value with SwiftUI") {
                interactor.getLabelValue()
            }
            Text(viewState.labelValue)
        }
    }
}

extension SwiftUIView {
    final class ViewState: ViewStating, ObservableObject {
        @Published var labelValue: String = ""

        func displayLabelValue(value: String) {
            labelValue = value
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIFactory.make()
    }
}
