import SwiftUI
struct Stratagem: Identifiable {
    var id = UUID()
    var title: String
    var summary: String
    var tip: String
    var input: String
}
struct StratagemView: View {
    let Stratagems = StrataBase
    
    var body: some View {
        NavigationView {
            List(Stratagems) { stratagem in
                NavigationLink(destination: StrataView(strataInfo: stratagem)) {
                    Text("\(stratagem.title)")
                }
                .padding()
            }
            .navigationBarTitle("Stratagem Viewer")
        }
    }
}
struct StrataView: View {
    var strataInfo: Stratagem
    var body: some View {
        VStack (spacing: 30) {
            Text("\(strataInfo.title)")
                .font(.largeTitle)
            Text("\(strataInfo.summary)")
                .font(.body)
            Text("\(strataInfo.tip)")
                .font(.headline)
        }
    }
}
struct StratagemView_preview: PreviewProvider {
    static var previews: some View {
        StratagemView()
    }
}
