//
//  monthlyLeaveHours.swift
//  firstXcode
//
//  Created by Juman Dhaher on 01/04/1445 AH.
//

import SwiftUI

struct MonthlyLeaveHours: View {
    let data = HomeViewModel().GetMonthlyLeave()
 
    var body:some View{
            ScrollView{
                VStack(alignment: .leading){
                    if(!data.accepted.isEmpty){
                        LateHoursView().printTitle(title: "Accepted")
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
                    
                    if(data.accepted.isEmpty){
                        VStack{
                            Spacer(minLength: 250)
                            Text("You haven't used your monthly hours").frame(maxWidth: .infinity)
                        }.frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                
        }.padding().navigationTitle(Text("Absence Days"))
            .background(Color("Background"))
    }
}

struct MonthlyLeaveHours_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyLeaveHours().preferredColorScheme(.light)
        MonthlyLeaveHours().preferredColorScheme(.dark)
    }
}
