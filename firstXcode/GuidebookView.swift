//
//  GuidebookView.swift
//  firstXcode
//
//  Created by Juman Dhaher on 23/03/1445 AH.
//

import SwiftUI

struct GuidBookView: View{
    var body:some View{
            ScrollView{
                VStack(alignment: .leading){
                    Text("Policy attendance system policy").font(.title2)
                    
            Text("""
            
            • Learners should attend their weekly sessions at the specified time according to the schedule, and perform their required tasks during the weekdays from Sunday to Thursday from 9:00 am to 1:00 pm or from 2:00 pm to 6:00 pm except on official holidays. The student affairs coordinator and the student advisor should be informed if the learner is absent for any conditions.
            
            • Leraners must check in to verify their attendence once they enter the academy’s building. If the check in was late by more than 15 minutes, late attendance will be counted for the learners.
             
            • Attendance and absence is counted during workshops and meetings•
            
            • The permitted absence days for the learner is 15 days at most during the academy’s program without an excuse.
            
            • The learner has a credit of 2 hours leave per month that she can use after informing the students affairs coordinator.
            
            • Official holidays are applied at the academy in line with the leave regulations of the Kingdom of Saudi Arabia in cases of marriage, birth, death, etc.
            
            • Official holidays of the country are applied in the academy for all national holidays.
            
            • The academy’s program will be held online in case of emergency situations.
            
            • Excused absences will be counted at the time of exams if the academy’s program time conflicts with the exam time.
            
            • The learner must inform the student affiars coordinator upon joining the academy of any family, health, or psychological problems she suffers from
            
            • When the learner is absent due to illness, hospitalization, or force conditions, the learner must send an official excuse, noting that if the learner is absent for 5 consecutive days without informing the student affairs coordinator, she will be immediately excluded from the program.
            
            - Required documents:
            
            1- Staying in hospital - A report from Sehaty Platform must be provided.
             
            2- Force conditions - Official reports that prove these conditions must be provided.
            
            3- Losing a family member (Grandparents/ Parents/ Children/ Siblings) - A copy of death certificate from the hospital or the concerned authority + A copy of the family card must be provided.
            
            - Warnings and notices:
            
            • A first notice is sent to the learner when the number of absence days without an official excuse exceeds 3 consecutive days.
            
            • A second notice is sent to the learner when the number of absence days without an official excuse exceeds 10 separate days.
            
            • A final warning is sent to the learner when the number of absence days without an official excuse exceeds 14 days.
            
            • The learner will be excluded from the academy and prevented from completeing the program and obtainig the academic certificate when the number of days of absence without an official excuse exceeds 15 days.
            
            • Official excuses and documents must be provided to the student affairs coordinator to count it as an excused absence.
            
            • When the learner’s late hours reaches 4 hours of late attendence, it will be counted as an unexcused absence.
            
            • When the learner leaves without checking out, one hour will be counted of her late hours.
            
            • The Academy has the full right to deprive the learner of the academic certificate when she is absent in application review sessions (App review) without providing an offical excuse.
            
            
            """)
                }.multilineTextAlignment(.leading).padding()
            }.padding()  .background(Color("Background")).navigationTitle(Text("The Guide Book"))
        }
    
}



struct GuidBookView_Previews: PreviewProvider {
    static var previews: some View {
        GuidBookView().preferredColorScheme(.light)
        GuidBookView().preferredColorScheme(.dark)
    }
}

