//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct AbsenceDaysView: View{
    var body:some View{
            ScrollView{

        }.padding().navigationTitle(Text("Absence Days"))
    }
    
}



struct AbsenceDaysView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceDaysView().preferredColorScheme(.light)
        AbsenceDaysView().preferredColorScheme(.dark)
    }
}

