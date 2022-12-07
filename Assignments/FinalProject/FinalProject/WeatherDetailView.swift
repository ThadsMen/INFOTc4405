//
//  WeatherDetailView.swift
//  FinalProject
//
//  Created by Thadeus Meneses on 12/7/22.
//

import SwiftUI
let backgroundGradient = LinearGradient(
    colors: [Color.indigo.opacity(0.2), Color.blue],
    startPoint: .top, endPoint: .bottom)


struct WeatherDetailView: View {
    
    var observation:Forecast
    init(observation: Forecast) {
        self.observation = observation
    }
    
    var body: some View {
        ZStack{
            backgroundGradient
            
        
        VStack(alignment:.center){
            Image("\(observation.pic)")
            Text("There will be a high of \(observation.temp_hi) and a low of \(observation.temp_hi).")
            Text("There is a \(observation.precip) chance of rain fall! and the sky will be \(observation.clouds) covered in clouds")
        }.padding()
    
        }.ignoresSafeArea()
        
    }
}

