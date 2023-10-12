
import SwiftUI

struct ExcuseInfoViewAccpted: View {
    var body: some View {
        ScrollView{
                HStack {
                    Button("←") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } // تحتاج الي ترتيب بالظهور
                    
                    Text("30 sept 2023")
                        .bold()
                    }
            
                    
                    Section(header: Text("Excuse Type")) {
                        Text("Monthly leave")
                    }
                    
                    Section(header: Text("Date")) {
                        Text("04 sept 2023")
                    }
                    
                    Section(header: Text("Status")) {
                        Text("Accepted")
                    }
                    
                    Section(header: Text("Notes")) {
                        Text("Appropriate use of monthly leave")
                    }
                    
        }.frame(alignment: .leading)
    }
}

struct ExcuseInfoView2_Previews: PreviewProvider {
    static var previews: some View {
        ExcuseInfoViewAccpted().preferredColorScheme(.light)
        ExcuseInfoViewAccpted().preferredColorScheme(.dark)
    }
}
