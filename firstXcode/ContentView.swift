//
//  ContentView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var showGreeting = true
    @State private var age = 24

    var body: some View {
        NavigationStack{
            VStack(alignment: .leading,spacing: 12){
                Text("Summary").font(.largeTitle)
 
                boxContent(title:"Absence Days",dec:"Exceeding 15 days of absences without an excuse will disqualify you from the program.",precentage: "5/15")
              
                boxContent(title:"Absence Days",dec:"Exceeding 15 days of absences without an excuse will disqualify you from the program.",precentage: "5/15")
                
                boxContent(title:"Absence Days",dec:"Exceeding 15 days of absences without an excuse will disqualify you from the program.",precentage: "5/15")
                
                Spacer()
                
                
            }
            .padding(.all)
            .background(Color(#colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1) )).ignoresSafeArea()
            .navigationTitle("Juman Dhaher").padding(.top)
            /*.navigationBarItems(leading:
                VStack(alignment: .leading) {
                   Text("Juman Dhaher").font(.headline)
                Text("jdhaher@twq.idserve.net").font(.subheadline)
            }
             )*/
            .toolbar{
              
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("Sign out")
                }
            }
            
        }
    }
    
    func boxContent(title: String,dec:String,precentage:String) -> some View  {
       return ZStack (alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 25).fill(Color.white)
            HStack{
                VStack(alignment:.leading){
                    Text(title).font(.title2)
                    Text(dec).font(Font.system(size: 12)).frame(maxWidth:140)
                }
                Spacer()
                ZStack {
                           Circle()
                               .stroke(
                                   Color.red.opacity(0.5),
                                   lineWidth: 15
                               )
                    Text(precentage).font(.title3)
                           Circle()
                        .trim(from: 0, to: 0.8) // 1
                               .stroke(
                                   Color.red,
                                   lineWidth: 15
                               )
                       }
                        
            }.padding()

        } .background(Color.white)
            .cornerRadius(12)
            .frame(width: .infinity,height: 130)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
        ContentView().preferredColorScheme(.dark)
    }
}
