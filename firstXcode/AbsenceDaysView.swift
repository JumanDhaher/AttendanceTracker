//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct AbsenceDaysView: View{
    var body:some View{
            ScrollView{
                VStack(alignment: .leading){
                    LateHoursView().printTitle(title: "Pending")
                    NavigationLink(destination: ExcuseInfoView(), label:{
                        LateHoursView().createInfoBox(label: "17 Sep 2023", info: "Absence Excuse:\nSick Leave", excuseStatus: "Pending")
                    })//end of navigation link
                    
                    LateHoursView().printTitle(title: "Accepted")
                    
                    NavigationLink(destination: ExcuseInfoView(), label:{
                        LateHoursView().createInfoBox(label: "26 Sep 2023", info: "Absence Excuse:\nExamination Leave", excuseStatus: "Accepted")
                    })//end of navigation link
                    NavigationLink(destination: ExcuseInfoView(), label:{
                        LateHoursView().createInfoBox(label: "18 Sep 2023", info: "Absence Excuse:\nExamination Leave", excuseStatus: "Accepted")
                    })//end of navigation link
                    
                    LateHoursView().printTitle(title: "Declined")
                    
                    NavigationLink(destination: ExcuseInfoView(), label:{
                        LateHoursView().createInfoBox(label: "30 Sep 2023", info: "Absence Excuse:\nMonthly Leave", excuseStatus: "Declined")
                    })//end of navigation link
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

