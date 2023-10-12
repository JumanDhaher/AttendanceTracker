//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI
import Firebase

struct LoginView: View{
    
    @State private var email : String = ""
    @State private var userIsLoggedIn : Bool = false
    

    var body:some View{
        NavigationStack{
            if(userIsLoggedIn){
                ContentView()
            }else{
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
                    
                    Button{
                        login()
                    } label:{
                        HStack{
                            Spacer()
                            Text("Login")
                            Spacer()
                        }
                    }.onAppear{
                        Auth.auth().addStateDidChangeListener{(auth ,user) in
                            if user != nil{
                                userIsLoggedIn.toggle()
                            }
                        }
                    }
                    
                    Spacer()
                    
                }
                .padding().padding().background(Color("Background"))
            }
              //  .navigationTitle(Text("Lgoin"))
                //.navigationBarBackButtonHidden(true)
        }.navigationBarHidden(true)
    }
    
    
    func login(){
        print("tittle",email)
        
        Auth.auth().signIn(withEmail: email.lowercased(), password: "1234567"){result,error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }
    
}




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.light)
        LoginView().preferredColorScheme(.dark)
    }
}

