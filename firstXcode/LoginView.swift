//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct LoginView: View{

    var body:some View{
        NavigationView{
            ScrollView{
                
                NavigationLink(destination: ContentView(),
                 label:{
                    Text("Login")
                })
                
            }
        }.padding().navigationTitle(Text("Lgoin"))
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
    
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.light)
        LoginView().preferredColorScheme(.dark)
    }
}

