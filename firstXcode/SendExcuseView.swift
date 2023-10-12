//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI
import Firebase

struct SendExcuseView: View{
@State private var selectedDate = Date.now
@State private var title = ""
@State private var excuseType = ""
@State private var note = ""
@State private var presentImporter = false
@State private var maxChars: Int = 150
@State private var inputText: String = ""


var body:some View{
    VStack{
        Color.gray.opacity(0.1)
            .cornerRadius(8)
            .ignoresSafeArea(.all)
            .overlay {
                ZStack{
                    ScrollView{
                        VStack {
                            VStack(alignment:.leading ,spacing: 18) {
                                HStack{
                                    Text("Title:")
                                    Spacer()
                                    Picker("Excuse Category",
                                           selection: $title) {
                                        Text("Absence Excuse")
                                            .tag("Absence Excuse")
                                        Text("Late Arrival Excuse")
                                            .tag("Late Arrival Excuse")
                                        Text("Leave Hour Excuse")
                                            .tag("Leave Hour Excuse")
                                        
                                    };
                                    
                                }
                                
                            }
                            Divider()
                            HStack{
                                
                                Text ("  Excuse Type: ")
                                Spacer()
                                Picker("Excuse Category",
                                       selection: $excuseType) {
                                    Text("Sick leave")
                                        .tag("Sick leave")
                                    Text("Examination Leave")
                                        .tag("Examination Leave")
                                    Text("Marriage Leave")
                                        .tag("Marriage Leave")
                                    Text("Emergency Leave")
                                        .tag("Emergency Leave")
                                    Text("Late Arrival")
                                        .tag("Late Arrival")
                                    Text("Monthly Leave")
                                        .tag("Monthly Leave")
                                };
                                
                            }
                            Divider()
                            HStack{
                                
                                Spacer()
                                DatePicker(selection: $selectedDate, in: ...Date.now, displayedComponents: .date) {
                                    Text("Select a date")
                                }
                                
                                
                            }
                            Divider()
                            VStack(alignment: .leading){
                                
                                Text("  Description:")
                                    .multilineTextAlignment(.leading)
                                
                                TextField("Note", text: $note )
                                    .position(CGPoint(x: 150,y: 5))
                                    .padding()
                                    .frame(width: 350,height: 201.0)
                                    .background(Color("CardColor"))
                                    .cornerRadius(16)
                                    .position(CGPoint(x: 180,y: 100))
                                
                                
                                Button(action: {
                                    print("Button tapped!")
                                    presentImporter = true
                                }) {
                                    HStack {
                                        Image(systemName:"paperclip.circle.fill")
                                            .foregroundColor(Color.white)
                                        
                                        Text("Attach File")
                                            .foregroundColor(Color.white)
                                        
                                        
                                    }
                                }
                                .padding()
                                .frame(width: 140,height: 45)
                                .background(Color("GreenColor"))
                                .cornerRadius(8)
                                .position(CGPoint(x: 285,y: 25))
                                .fileImporter(isPresented: $presentImporter, allowedContentTypes: [.pdf]) { result in
                                    
                                    switch result {
                                    case .success(let url):
                                        print(url)
                                        
                                    case .failure(let error):
                                        print(error)
                                    }
                                }
                                
                                Spacer()
                                
                            }}
                    }
                }.padding()
            }
            .navigationTitle(Text("Send Excuse"))
            .toolbar{
                Button("Send") {
                    SendEmailButton()
                }
            }
        
    }
    
}

;

    
    
    func SendEmailButton(){
        print("title : "+title)
        print("Excuse Type: "+excuseType)
        print(selectedDate)
        print("note : " + note)
    }
}



struct SendExcuseView_Previews: PreviewProvider {
static var previews: some View {
    SendExcuseView().preferredColorScheme(.light)
    SendExcuseView().preferredColorScheme(.dark)
}
}



