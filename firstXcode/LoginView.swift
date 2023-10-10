//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct LoginView: View{
    
    @State var email : String = ""

    var body:some View{
        NavigationStack{
            VStack(alignment:.leading){
                
                Spacer()

                Text("Email")
                TextField("email @ twq.idserve.net",text: $email)
                    .padding()
                    .background(Color("CardColor")).foregroundColor(Color("SubtitleColor"))
                    .cornerRadius(10)
                HStack{
                    Image(systemName: "info.circle")
                    Text("Insert your achademic email").foregroundColor(Color("TitleColor"))
                }
                
                NavigationLink(destination: ContentView(),
                               label:{
                    
                    HStack{
                        Spacer()
                        Text("Login")
                        Spacer()

                    }
                })
                
                Spacer()
                
            }
            .padding().padding().background(Color("Background"))
        }
        .navigationTitle(Text("Lgoin"))
            .navigationBarBackButtonHidden(true)
    }
    
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.light)
        LoginView().preferredColorScheme(.dark)
    }
}

