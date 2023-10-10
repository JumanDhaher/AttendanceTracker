//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct SendExcuseView: View{
    var body:some View{
      
            ScrollView{

            }.padding().navigationTitle(Text("Send Excuse"))
    }
    
}



struct SendExcuseView_Previews: PreviewProvider {
    static var previews: some View {
        SendExcuseView().preferredColorScheme(.light)
        SendExcuseView().preferredColorScheme(.dark)
    }
}

