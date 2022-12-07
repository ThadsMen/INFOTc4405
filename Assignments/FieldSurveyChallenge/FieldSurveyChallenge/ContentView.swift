//
//  ContentView.swift
//  FieldSurveyChallenge
//
//  Created by Thadeus Meneses on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    var observationData:ObservationData! = getObservationData()
    
    var body: some View{
        VStack{
            NavigationView{
                List{
                    ForEach(observationData.observations,id:\.self){
                        observation in
                        NavigationLink(destination:ObservationDetailView(observation:observation)){
                            ObservationRow(classification: observation.classification, title: observation.title, date: observation.date)
                        }.navigationTitle("Field Survey")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
