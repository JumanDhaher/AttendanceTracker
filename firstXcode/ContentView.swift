//
//  ContentView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var isActive : Bool = false

    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(alignment: .leading,spacing: 12){
                Text("Summary").font(.largeTitle)
                
                NavigationLink(destination:AbsenceDaysView(), label:{
                    boxContent(title:"Absence Days",dec:"Exceeding 15 days of absences without an excuse will disqualify you from the program.",precentageText: "5/15",precentage:0.5,
                               firstColor: Color("PinkColor").opacity(0.5) ,secondColor:Color("PinkColor"))
                })
                NavigationLink(destination:LateHoursView(), label:{
                    boxContent(title:"Late Hours",dec:"Arriving late for a total of 4 hours will be counted as an unexcused absence.",precentageText: "1/4",precentage:0.8,
                               firstColor:Color("GreenColor").opacity(0.5),
                               secondColor:Color("GreenColor"))
                })
                    boxContent(title:"Monthly Leave",dec:"You are allowed 2 hours of monthly leave each month.",precentageText: "0/2",precentage:0.5,
                               firstColor:Color("PurpleColor").opacity(0.5),
                        secondColor:Color("PurpleColor")
                )
                
                Text("The Guide book").font(.title)
                
                NavigationLink(destination: GuidBookView(), label:{
                    ZStack(alignment:.center){
                        RoundedRectangle(cornerRadius: 25).fill(Color("GreenColor"))
                        Image(systemName: "book.circle.fill").resizable().frame(width: 80, height: 80).foregroundColor(Color("CardColor"))

                    }.background(Color("GreenColor"))
                        .cornerRadius(12)
                        .frame(height: 120)
                })
              
                
                NavigationLink(
                    destination: SendExcuseView(),
                    label:{
                    HStack{
                        Spacer()
                        Text("Send my excuse")
                        Image(systemName: "plus.app")
                    }.padding()
                })
               
                Spacer()
                
            }
            .padding(.all)
            .background(  Color("Background")).ignoresSafeArea(.all)
            .navigationTitle("Juman Dhaher")
            .padding(.top)
            .toolbar{
                NavigationLink(destination: LoginView(), label:{
                    Text("Sign out")
                })
            }
            }
        } .navigationBarBackButtonHidden(true)
    }
    
    func boxContent(title: String,dec:String,precentageText:String,precentage:Double,firstColor:Color,secondColor:Color) -> some View  {
       return ZStack (alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 25).fill(Color("CardColor"))
            HStack{
                VStack(alignment:.leading){
                    Text(title)
                        .font(.title2)
                        .foregroundColor(Color("TitleColor"))
                    Text(dec)
                        .font(Font.system(size: 12))
                        .frame(maxWidth:140)
                        .foregroundColor(Color("SubtitleColor"))
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                ZStack {
                   Circle()
                   .stroke(
                     firstColor,
                     lineWidth: 15
                    )
                    Text(precentageText)
                        .font(.title3)
                        .foregroundColor(Color("TitleColor"))
                    Circle()
                        .trim(from: 0, to: precentage) // 1
                        .stroke(
                        secondColor,
                        lineWidth: 15
                     ).rotationEffect(.degrees(-90))
                    }
            }.padding()

        } .background(Color("CardColor"))
            .cornerRadius(12)
            .frame(height: 130)
    }
    
}
   

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
        ContentView().preferredColorScheme(.dark)
    }
}

