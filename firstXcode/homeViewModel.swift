import Foundation

class HomeViewModel{
    func GetData() -> UserModel{
        let email = UserDefaults.standard.string(forKey: "email")?.lowercased()
        var userData : UserModel
        userData = UserModel(userName: "First",
                             numOfAbsence: "15",
                             numOfAbsencePrecentage: 0.0,
                             numOfLate: "4",
                             numOfLatePrecentage: 0.0,
                             numOfLeave: "2",
                             numOfLeavePrecentage: 0.0)
        if( email == "jdhaher23@twq.idserve.net") {
            userData = UserModel(userName: "Juman Dhaher",
                                 numOfAbsence: "0",
                                 numOfAbsencePrecentage: 0.0,
                                 numOfLate: "0",
                                 numOfLatePrecentage: 0.0,
                                 numOfLeave: "0",
                                 numOfLeavePrecentage: 0.0)
            return userData
        }
        else if (email ==  "reema23@twq.idserve.net"){
            userData = UserModel(userName: "Reema Mohmmad",
                                 numOfAbsence: "13",
                                 numOfAbsencePrecentage: 0.8,
                                 numOfLate: "2",
                                 numOfLatePrecentage: 0.5,
                                 numOfLeave: "2",
                                 numOfLeavePrecentage: 100)
            return userData
        }
        else if (email == "saram@twq.idserve.net"){
            userData = UserModel(userName: "Sara Mohmmad",
                                 numOfAbsence: "12",
                                 numOfAbsencePrecentage: 0.7,
                                 numOfLate: "2",
                                 numOfLatePrecentage: 0.5,
                                 numOfLeave: "2",
                                 numOfLeavePrecentage: 0.0)
            return userData
        }else if(email == "ralmazyad23@twq.idserve.net"){
            userData = UserModel(userName: "Raghad Almazayd",
                                 numOfAbsence: "2",
                                 numOfAbsencePrecentage: 0.3,
                                 numOfLate: "3",
                                 numOfLatePrecentage: 0.2,
                                 numOfLeave: "1",
                                 numOfLeavePrecentage: 0.5)
            return userData
        }else if(email == "malmutairi23@twq.idserve.net"){
            userData = UserModel(userName: "Majd Almutairi",
                                 numOfAbsence: "6",
                                 numOfAbsencePrecentage: 0.55,
                                 numOfLate: "1",
                                 numOfLatePrecentage: 0.2,
                                 numOfLeave: "2",
                                 numOfLeavePrecentage: 100)
            return userData
        }
        return userData
    }
    
    func GetAbsenceData() -> AbsenceModel{
        let email = UserDefaults.standard.string(forKey: "email")?.lowercased()
        var userData : AbsenceModel
        userData = AbsenceModel(
            pending: [
                ],
           accepted: [
           ],
           rejected: [
                 ])
        if( email == "jdhaher23@twq.idserve.net") {
            userData = AbsenceModel(pending:[
                     ], accepted: [
                ], rejected: [
                 ])
            return userData
        }
        else if (email ==  "reema23@twq.idserve.net"){
            userData = AbsenceModel(pending:[
                Excuse(Date:"15 Oct 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Pending",notes:""),
            ], accepted: [
                Excuse(Date:"1 Sep 2023" , type:"Absence Excuse" , excuse: "Marriage Leave",status: "Accepted",notes:""),
                Excuse(Date:"2 Sep 2023" , type:"Absence Excuse" , excuse: "Marriage Leave",status: "Accepted",notes:""),
                Excuse(Date:"3 Sep 2023" , type:"Absence Excuse" , excuse: "Marriage Leave",status: "Accepted",notes:""),
                Excuse(Date:"4 Sep 2023" , type:"Absence Excuse" , excuse: "Marriage Leave",status: "Accepted",notes:""),
                Excuse(Date:"5 Sep 2023" , type:"Absence Excuse" , excuse: "Marriage Leave",status: "Accepted",notes:""),
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),  Excuse(Date:"18 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),
            ], rejected: [
                Excuse(Date:"2 Oct 2023" , type:"Absence Excuse" , excuse: "Rainy Day",status: "Rejected",notes:"Inappropriate use of monthly leave"),
                Excuse(Date:"5 Oct 2023" , type:"Absence Excuse" , excuse: "Flat tire",status: "Rejected",notes:""),
                Excuse(Date:"11 Oct 2023" , type:"Absence Excuse" , excuse: "Travel",status: "Rejected",notes:""),
                Excuse(Date:"12 Oct 2023" , type:"Absence Excuse" , excuse: "Travel",status: "Rejected",notes:""),
                Excuse(Date:"17 Oct 2023" , type:"Absence Excuse" , excuse: "Flat tire",status: "Rejected",notes:""),
            ])
            return userData
        }
        else if (email == "saram@twq.idserve.net"){
            userData = AbsenceModel(pending:[
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Pending",notes:""),
            ], accepted: [
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),
            ], rejected: [
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Monthly Leave",status: "Rejected",notes:"Appropriate use of monthly leave"),
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Rejected",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Rejected",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Rejected",notes:""),  Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Rejected",notes:""),
            ])
            return userData
        }else if(email == "ralmazyad23@twq.idserve.net"){
            userData = AbsenceModel(pending:[
            ], accepted: [
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),
            ], rejected: [
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Flat Tire",status: "Rejected",notes:"Inappropriate use is not accepted")
            ])
            return userData
        }else if(email == "malmutairi23@twq.idserve.net"){
            userData = AbsenceModel(pending:[
            ], accepted: [
                Excuse(Date:"17 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),
                Excuse(Date:"18 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),
                Excuse(Date:"20 Sep 2023" , type:"Absence Excuse" , excuse: "Sick Leave",status: "Accepted",notes:""),
                Excuse(Date:"12 Oct 2023" , type:"Absence Excuse" , excuse: "Examination",status: "Accepted",notes:""),
                Excuse(Date:"13 Oct 2023" , type:"Absence Excuse" , excuse: "Examination",status: "Accepted",notes:""),
            ], rejected: [
                Excuse(Date:"20 Oct 2023" , type:"Absence Excuse" , excuse: "Rainy Day",status: "Rejected",notes:"Inappropriate use is not accepted")
            ])
            return userData
        }
        return userData
    }
    
    
    
    func GetLateHours() -> LateHoursModel{
        let email = UserDefaults.standard.string(forKey: "email")?.lowercased()
        var userData : LateHoursModel
        userData = LateHoursModel(
            pending: [
              ],
           accepted: [
              ],
           rejected: [
                  ])
        if( email == "jdhaher23@twq.idserve.net") {
            userData = LateHoursModel(pending:[
                   ], accepted: [
                ], rejected: [
             ])
            return userData
        } else if (email ==  "reema23@twq.idserve.net"){
            userData = LateHoursModel(pending:[
                Excuse(Date:"22 Oct 2023" , type:"Late Arrival Excuse" , excuse: "1 hour",status: "Pending",notes:""),
            ], accepted: [
                Excuse(Date:"20 Oct 2023" , type:"Late Arrival Excuse" , excuse: "1 hour",status: "Accepted",notes:""),
            ], rejected: [
            ])
            return userData
        }
        else if (email == "saram@twq.idserve.net"){
            userData = LateHoursModel(pending:[
                Excuse(Date:"17 Sep 2023" , type:"Late Arrival Excuse" , excuse: "30 minutes",status: "Pending",notes:""),
            ], accepted: [
                Excuse(Date:"17 Sep 2023" , type:"Late Arrival Excuse" , excuse: "30 minutes",status: "Accepted",notes:""),
            ], rejected: [
                Excuse(Date:"17 Sep 2023" , type:"Late Arrival Excuse" , excuse: "30 minutes",status: "Rejected",notes:"Inappropriate use of monthly leave"),
            ])
            return userData
        }else if(email == "ralmazyad23@twq.idserve.net"){
            userData = LateHoursModel(pending:[
            ], accepted: [
            ], rejected: [
                Excuse(Date:"17 Sep 2023" , type:"Late Arrival Excuse" , excuse: "3 hours",status: "Rejected",notes:" Excuse is declined"),
            ])
            return userData
        }else if(email == "malmutairi23@twq.idserve.net"){
            userData = LateHoursModel(pending:[
            ], accepted: [
                Excuse(Date:"30 Sep 2023" , type:"Late Arrival Excuse" , excuse: "1 hours",status: "Accepted",notes:""),
            ], rejected: [
               
            ])
            return userData
        }
        return userData
    }
    
    class LateHoursModel{
        var pending: [Excuse]
        var accepted : [Excuse]
        var rejected : [Excuse]
        init(pending: [Excuse], accepted: [Excuse], rejected: [Excuse]) {
            self.pending = pending
            self.accepted = accepted
            self.rejected = rejected
        }
        
    }
    
    
    class AbsenceModel{
        var pending: [Excuse]
        var accepted : [Excuse]
        var rejected : [Excuse]
        init(pending: [Excuse], accepted: [Excuse], rejected: [Excuse]) {
            self.pending = pending
            self.accepted = accepted
            self.rejected = rejected
        }
        
    }
    
    class MonthlyLeaveModel{
        var accepted : [Excuse]
        init( accepted: [Excuse]) {
            self.accepted = accepted
        }
        
    }
    
    func GetMonthlyLeave() -> MonthlyLeaveModel{
        let email = UserDefaults.standard.string(forKey: "email")?.lowercased()
        var userData : MonthlyLeaveModel
        userData = MonthlyLeaveModel(
           accepted: [
              ])
        if( email == "jdhaher23@twq.idserve.net") {
            userData = MonthlyLeaveModel(
                accepted: [
                   ])
            return userData
        } else if (email ==  "reema23@twq.idserve.net"){
            userData = MonthlyLeaveModel(
                accepted: [
                        Excuse(Date:"10 Sep 2023" , type:"Monthly Leave" , excuse: "2 hours",status: "Accepted",notes:"")
                   ])
            return userData
        }
        else if (email == "saram@twq.idserve.net"){
            userData = MonthlyLeaveModel(
                accepted: [
                    Excuse(Date:"10 Sep 2023" , type:"Monthly Leave" , excuse: "2 hours",status: "Accepted",notes:"")
                   ])
            return userData
        }else if(email == "ralmazyad23@twq.idserve.net"){
            userData = MonthlyLeaveModel(
                accepted: [
                    Excuse(Date:"10 Sep 2023" , type:"Monthly Leave" , excuse: "1 hours",status: "Accepted",notes:"")
                   ])
            return userData
        }else if(email == "malmutairi23@twq.idserve.net"){
            userData = MonthlyLeaveModel(
                accepted: [
                    Excuse(Date:"10 Sep 2023" , type:"Monthly Leave" , excuse: "2 hours",status: "Accepted",notes:"")
                   ])
            return userData
        }
        return userData
    }
    
    struct Excuse : Hashable{
        var Date : String
        var type : String
        var excuse : String
        var status: String
        var notes: String
        
        init(Date: String, type: String, excuse: String, status: String, notes: String) {
            self.Date = Date
            self.type = type
            self.excuse = excuse
            self.status = status
            self.notes = notes
        }
    }
    
 
    
    class UserModel{
        var userName: String
        var numOfAbsence : String
        var numOfAbsencePrecentage : Double
        var numOfLate : String
        var numOfLatePrecentage : Double
        var numOfLeave : String
        var numOfLeavePrecentage : Double
        
        init(userName: String, numOfAbsence: String,
             numOfAbsencePrecentage: Double,
             numOfLate: String,
             numOfLatePrecentage: Double,
             numOfLeave:String,
             numOfLeavePrecentage: Double
        ) {
            self.userName = userName
            self.numOfAbsence = numOfAbsence
            self.numOfAbsencePrecentage = numOfAbsencePrecentage
            self.numOfLate=numOfLate
            self.numOfLatePrecentage = numOfLatePrecentage
            self.numOfLeave = numOfLeave
            self.numOfLeavePrecentage = numOfLeavePrecentage
            
        }
    }
    
}
