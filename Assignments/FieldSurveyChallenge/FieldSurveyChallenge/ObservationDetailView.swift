//
//  ObservationDetailView.swift
//  FieldSurveyChallenge
//
//  Created by Thadeus Meneses on 12/3/22.
//

import SwiftUI

struct ObservationDetailView: View {
    var dateFormatter = DateFormatter()
    
    var observation:Observation
    init(observation: Observation) {
        self.observation = observation
        dateFormatter.dateFormat = "MMM d, yyyy 'at' h:mm:ss a"
    }
    var body: some View {
        VStack(alignment:.leading){
            Text("Observation").font(.largeTitle).fontWeight(.bold)
            
            HStack{
                Image("\(observation.classification)")
                VStack(alignment:.leading){
                    Text("\(observation.title)").fontWeight(.bold)
                    Text("\(dateFormatter.string(from: observation.date))")
                }
                
                
                Spacer()
            }
            Text("\(observation.description)")
            Spacer()
            
            
        }.padding()
    }
}

struct ObservationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ObservationDetailView(observation: getObservationData()!.observations[0])
    }
}
