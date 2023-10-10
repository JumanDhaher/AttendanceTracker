//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct LateHoursView: View{
    var body:some View{
            ScrollView{

        }.padding().navigationTitle(Text("Late Hours"))
    }
    
}



struct LateHoursView_Previews: PreviewProvider {
    static var previews: some View {
        LateHoursView().preferredColorScheme(.light)
        LateHoursView().preferredColorScheme(.dark)
    }
}

