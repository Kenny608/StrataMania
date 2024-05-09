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
                    MyListItem(title: "\(stratagem.title)", input: "\(stratagem.input)")
                }
                .padding()
            }
            .navigationBarTitle("Stratagem Viewer")
            .foregroundColor(.blue)
            .listStyle(.plain)
        }
    }
}

struct MyListItem: View {
    var title: String
    var input: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(title)")
                .font(.headline)
            Text("\(input)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}

struct StrataView: View {
    var strataInfo: Stratagem
    var body: some View {
        VStack (alignment: .center, spacing: 25){
            Text("\(strataInfo.title)")
                .font(.largeTitle)
            Text("\(strataInfo.summary)")
                .font(.body)
            Text("\(strataInfo.tip)")
                .font(.headline)
            Spacer()
        }
    }
}
struct StratagemView_preview: PreviewProvider {
    static var previews: some View {
        StratagemView()
    }
}
