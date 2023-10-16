//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct AbsenceDaysView: View{
    let data = HomeViewModel().GetAbsenceData()
 
    var body:some View{
            ScrollView{
                VStack(alignment: .leading){
                    if(!data.pending.isEmpty){
                        LateHoursView().printTitle(title: "Pending \(data.pending.count)")
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
                        LateHoursView().printTitle(title: "Accepted \(data.accepted.count)")
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
                        LateHoursView().printTitle(title: "Declined \(data.rejected.count)")
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
                            Text("You don't have any absence excuses").frame(maxWidth: .infinity)
                        }.frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                
        }.padding().navigationTitle(Text("Absence Days"))
            .background(Color("Background"))
    }
    
}//end of struct



struct AbsenceDaysView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceDaysView().preferredColorScheme(.light)
        AbsenceDaysView().preferredColorScheme(.dark)
    }
}

