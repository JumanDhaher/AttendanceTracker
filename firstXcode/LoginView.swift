//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI
import Firebase


struct LoginView: View{
    static var emailUser: String = ""

    @State private var email : String = ""
    @State private var errorMessage : String = ""
    @State private var userIsLoggedIn : Bool = false
    @State var showingAlert: Bool = false


    var body:some View{
        NavigationStack{
            if(userIsLoggedIn){
                ContentView()
            }else{
                VStack(alignment:.leading){
                    
                    Spacer()
                    Image("logo").resizable().frame(width: 300,height: 300)
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
                                .bold()
                                .frame(width: 95.0, height: 30.0)
                                .background(Color("GreenColor")).foregroundColor(.white)
                                .cornerRadius(8)
                            Spacer()
                        }
                    }.onAppear{
                        Auth.auth().addStateDidChangeListener{(auth ,user) in
                            if user != nil{
                                userIsLoggedIn.toggle()
                            }
                        }
                    } .alert(errorMessage, isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                    }
                    
                    Spacer()
                    
                }
                .padding().padding().background(Color("Background"))
            }
              //  .navigationTitle(Text("Lgoin"))
                //.navigationBarBackButtonHidden(true)
        }
    }
    
    
    func login(){
        print("tittle",email)
        UserDefaults.standard.set(self.email, forKey: "email")
        LoginView.emailUser = email
        Auth.auth().signIn(withEmail: email.lowercased(), password: "1234567"){result,error in
            if error != nil{
                print(error!.localizedDescription)
                errorMessage=error!.localizedDescription
                showingAlert = true
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

