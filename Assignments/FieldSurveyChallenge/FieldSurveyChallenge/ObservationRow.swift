//
//  ObservationRow.swift
//  FieldSurveyChallenge
//
//  Created by Thadeus Meneses on 12/3/22.
//

import SwiftUI

struct ObservationRow: View {

    let dateFormatter = DateFormatter()
    var classification:String
    var title:String
    var date:Date
    init(classification: String, title: String, date: Date) {
        self.classification = classification
        self.title = title
        self.date = date
        dateFormatter.dateFormat = "MMM d, yyyy 'at' h:mm:ss a"
    }
    var body: some View {
        HStack{
            Image(self.classification)
                .padding(.trailing, 24.0)
            
            VStack(alignment:.leading){
                Text(self.title)
                    .font(.headline)
                Text("\(dateFormatter.string(from: self.date))")
                    .font(.footnote)
            }
        }
    }
}

struct ObservationRow_Previews: PreviewProvider {

        
    static var previews: some View {
        ObservationRow(classification:"bird",title:"Red-Tailed-Hawk",date:Date(timeIntervalSinceReferenceDate: -123456789.0))
    }
}
