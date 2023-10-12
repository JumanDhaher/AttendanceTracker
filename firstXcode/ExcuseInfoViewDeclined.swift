//
//  ExcuseInfoViewDeclined.swift
//  firstXcode
//
//  Created by Juman Dhaher on 27/03/1445 AH.
//

import SwiftUI

struct ExcuseInfoViewDeclined: View {
    var body: some View {
        List {
            Section(header: Text("Date")) {
                Text("04 sept 2023")
            }
            Section(header: Text("Excuse Type")) {
                Text("Monthly leave")
            }
            Section(header: Text("Status")) {
                Text("Accepted")
            }
            Section(header: Text("Notes")) {
                Text("Appropriate use of monthly leave")
            }
        }.navigationTitle(Text("Declined Status"))
            .background(Color("Background"))
    }
}

struct ExcuseInfoViewDeclined_Previews: PreviewProvider {
    static var previews: some View {
        ExcuseInfoViewDeclined().preferredColorScheme(.light)
        ExcuseInfoViewDeclined().preferredColorScheme(.dark)
    }
}
