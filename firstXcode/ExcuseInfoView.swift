import SwiftUI

struct ExcuseInfoView: View {
    var Date : String
    var type : String
    var excuse : String
    var status: String
    var notes: String

    var body: some View {
        List {
            Section(header: Text("Date")) {
                Text(Date)
            }
            Section(header: Text(type)) {
                Text(excuse)
            }
            Section(header: Text("Status")) {
                Text(status)
            }
            Section(header: Text("Notes")) {
                Text(notes)
            }
        }.navigationTitle(Text("Excuse Information"))
            .background(Color("Background"))
    }
}


struct ExcuseInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ExcuseInfoView(Date:"",type: "",excuse: "",status: "",notes: "").preferredColorScheme(.light)
        ExcuseInfoView(Date:"",type: "",excuse: "",status: "",notes: "").preferredColorScheme(.dark)
    }
}






