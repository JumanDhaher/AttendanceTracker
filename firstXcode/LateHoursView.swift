//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct LateHoursView: View{
    let data = HomeViewModel().GetLateHours()

    var body:some View{
        ScrollView{
            VStack(alignment: .leading){
                if(!data.pending.isEmpty){
                    printTitle(title: "Pending \(data.pending.count)")
                     ForEach(data.pending, id: \.self) { pending in
                       NavigationLink(
                                    destination: ExcuseInfoView(
                                        Date: pending.Date,
                                        type: pending.type,
                                        excuse: pending.excuse,
                                        status: pending.status,
                                        notes: pending.notes
                                    ), label:{
                                       LateHoursView().createInfoBox(label: pending.Date, info: "\(pending.type)\n\(pending.excuse)", excuseStatus: "Pending")
                                   })
                 }
                }
                

                if(!data.accepted.isEmpty){
                    printTitle(title: "Accepted \(data.accepted.count)")
                    ForEach(data.accepted, id: \.self) { accepted in
                        NavigationLink(destination: ExcuseInfoView(
                            Date: accepted.Date,
                            type: accepted.type,
                            excuse: accepted.excuse,
                            status: accepted.status,
                            notes: accepted.notes
                        ), label:{
                            LateHoursView().createInfoBox(label: accepted.Date, info:"\(accepted.type)\n\(accepted.excuse)",
                                                        excuseStatus: "Accepted")
                        })//end of navigation link
                    }
                }
                
                if(!data.rejected.isEmpty){
                    printTitle(title: "Declined \(data.rejected.count)")
                    ForEach(data.rejected, id: \.self) { rejected in
                        NavigationLink(destination: ExcuseInfoView(
                            Date: rejected.Date,
                            type: rejected.type,
                            excuse: rejected.excuse,
                            status: rejected.status,
                            notes: rejected.notes ), label:{
                            LateHoursView().createInfoBox(label: rejected.Date, info:"\(rejected.type)\n\(rejected.excuse)",
                                                        excuseStatus: "Declined")
                        })//end of navigation link
                    }
                }
                
                if((data.pending.isEmpty) && (data.accepted.isEmpty) && (data.rejected.isEmpty)){
                    VStack{
                        Spacer(minLength: 250)
                        Text("You don't have any late hours excuses").frame(maxWidth: .infinity)
                    }.frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }

             
                
            }//end of VStack
            
        }.padding()  .background(Color("Background")).navigationTitle(Text("Late Hours Details "))
          
    }//body view
    
    //function that creates boxes of each absence day and its infromation
    func createInfoBox(label: String, info: String, excuseStatus: String) -> some View{
        @State var status : String
        return ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 16).fill(Color("CardColor"))
            ZStack{
                GroupBox(label: Text(label)
                    .foregroundColor(Color("TitleColor")))
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

