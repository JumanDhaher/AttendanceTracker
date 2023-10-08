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
                    boxContent(title:"Absence Days",dec:"Exceeding 15 days of absences without an excuse will disqualify you from the program.",precentageText: "5/15",precentage:0.5,firstColor:  Color.pink.opacity(0.5),secondColor: Color.pink)
                })
                NavigationLink(destination:LateHoursView(), label:{
                    boxContent(title:"Late Hours",dec:"Arriving late for a total of 4 hours will be counted as an unexcused absence.",precentageText: "1/4",precentage:0.8,firstColor:  Color.cyan.opacity(0.5),secondColor: Color.cyan)
                })
                boxContent(title:"Monthly Leave",dec:"You are allowed 2 hours of monthly leave each month.",precentageText: "0/2",precentage:100,firstColor:  Color.purple.opacity(0.5),secondColor: Color.purple)
                
                Text("The Guide book").font(.title)
                
                NavigationLink(destination: GuidBookView(), label:{
                    ZStack(alignment:.trailing){
                        RoundedRectangle(cornerRadius: 25).fill(Color.white)
                        Text("• يجب على المتدربة تسجيل الدخول لاحتساب الحضور بمجرد الدخول لمبنى الأكاديمية، وعند التأخر ١٥ دقيقة في تسجيل الدخول سيتم تلقائياً احتساب تأخير المتدربات.").multilineTextAlignment(.trailing).lineLimit(4).padding().foregroundColor(.black)
                    }.background(Color.white)
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
            .background(Color(#colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1) )).ignoresSafeArea()
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
            RoundedRectangle(cornerRadius: 25).fill(Color.white)
            HStack{
                VStack(alignment:.leading){
                    Text(title)
                        .font(.title2)
                        .foregroundColor(.black)
                    Text(dec)
                        .font(Font.system(size: 12))
                        .frame(maxWidth:140)
                        .foregroundColor(.gray)
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
                        .foregroundColor(.black)
                    Circle()
                        .trim(from: 0, to: precentage) // 1
                        .stroke(
                        secondColor,
                        lineWidth: 15
                     ).rotationEffect(.degrees(-90))
                    }
            }.padding()

        } .background(Color.white)
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

