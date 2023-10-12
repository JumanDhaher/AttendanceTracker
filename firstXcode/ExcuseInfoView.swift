import SwiftUI

struct ExcuseInfoView: View {
    var body: some View {
        
        ScrollView{
            VStack {
                HStack {
                    Button("←") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } // تحتاج الي ترتيب بالظهور
                    Text("30 sept 2023")
                        .bold()
                 }
                
                
                VStack {
                    Section(header: Text("Excuse Type")) {
                        Text("Monthly leave")
                    }
                    
                    Section(header: Text("Date")) {
                        Text("30 sept 2023")
                    }
                    
                    Section(header: Text("Status")) {
                        Text("Declinet")
                    }
                    
                    Section(header: Text("Notes")) {
                        Text("Inappropriate use of monthly leave")
                    }
                    
                }
                
            }
        }}
}


struct ExcuseInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ExcuseInfoView().preferredColorScheme(.light)
        ExcuseInfoView().preferredColorScheme(.dark)
    }
}






