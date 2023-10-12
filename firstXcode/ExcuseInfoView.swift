import SwiftUI

struct ExcuseInfoView: View {
    var body: some View {
        List {
            Section(header: Text("Date")) {
                Text("04 sept 2023")
            }
            Section(header: Text("Excuse Type")) {
                Text("Monthly leave")
            }
            Section(header: Text("Status")) {
                Text("Accepted")
            }
            Section(header: Text("Notes")) {
                Text("Appropriate use of monthly leave")
            }
        }.navigationTitle(Text("Excuse Information"))
            .background(Color("Background"))
    }
}


struct ExcuseInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ExcuseInfoView().preferredColorScheme(.light)
        ExcuseInfoView().preferredColorScheme(.dark)
    }
}






