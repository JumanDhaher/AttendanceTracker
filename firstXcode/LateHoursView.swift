//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct LateHoursView: View{
    
    var body:some View{
        ScrollView{
            VStack(alignment: .leading){
                printTitle(title: "Pending")
                
                NavigationLink(destination: ExcuseInfoView(), label:{
                    createInfoBox(label: "1 Oct 2023", info: "Late Arrival Excuse"+"\n30 minutes", excuseStatus: "Pending")
                })//end of navigation link

                printTitle(title: "Accepted")
                
                NavigationLink(destination: ExcuseInfoView(), label:{
                    createInfoBox(label: "25 Sep 2023", info: "Late Arrival Excuse"+"\n1 hour", excuseStatus: "Accepted")
                })//end of navigation link
                
                printTitle(title: "Declined")
                
                printDefaultMsg(message: "declined")
            }//end of VStack
            
        }.padding().navigationTitle(Text("Late Hours"))
            .background(Color("Background"))
    }//body view
    
    //function that creates boxes of each absence day and its infromation
    func createInfoBox(label: String, info: String, excuseStatus: String) -> some View{
        @State var status : String
        return ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 16).fill(Color("CardColor"))
            ZStack{
                GroupBox(label: Text(label)
                    .foregroundColor(Color.black))
                {
                    Text(info)
                        .font(.callout)
                        .foregroundColor(Color("SubtitleColor"))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.leading, -162)
                        .padding(.top, -5)
                    
                }.backgroundStyle(Color("CardColor"))//this is the color for the group box background
            }//end of 1st zstack
            
            showExcuseStatus(status: excuseStatus) //2nd zstack
        }//end of big card zstack
        
    }//end of createInfoBox function
    
    //function that shows the state of each absence's excuse
    func showExcuseStatus(status: String) -> some View{
        return ZStack{
            
            if status == "Pending" {
                showPendingStatus()
            }
            else if status == "Accepted"{
                showAcceptedStatus()
            }
            else if status == "Declined"{
                showDeclinedStatus()
            }
        }

    }//end of showExcuseStatus function
    
    //create functions that return views of each excuse status
    func showPendingStatus() -> some View{
        return ZStack{
            Color("pendingColor")
                .frame(width: 95.0, height: 30.0)
                .cornerRadius(16)
            Text("Pending")
                .fontWeight(.medium)
                .foregroundColor(.white)
        }.padding(.leading, 245)
    }
    
    func showAcceptedStatus() -> some View{
        return ZStack{
            Color("acceptedColor")
                .frame(width: 95.0, height: 30.0)
                .cornerRadius(16)
            Text("Accepted")
                .fontWeight(.medium)
                .foregroundColor(.white)
        }.padding(.leading, 245)
    }
    
    func showDeclinedStatus() -> some View{
        return ZStack{
            Color("declinedColor")
                .frame(width: 95.0, height: 30.0)
                .cornerRadius(16)
            Text("Declined")
                .fontWeight(.medium)
                .foregroundColor(.white)
        }.padding(.leading, 245)
    }
    
    func printTitle(title: String) -> some View{
        return Text(title)
            .fontWeight(.bold)
            .padding()
            .font(.title2)
    }
    func printDefaultMsg(message: String) -> some View{
        return Text("No "+message+" excuses")
            .font(.callout)
            .foregroundColor(Color("SubtitleColor"))
            .padding(.leading)
    }
    
}//end of struct



struct LateHoursView_Previews: PreviewProvider {
    static var previews: some View {
        LateHoursView().preferredColorScheme(.light)
        LateHoursView().preferredColorScheme(.dark)
    }
}

