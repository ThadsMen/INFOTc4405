//
//  ForecastRowView.swift
//  FinalProject
//
//  Created by Thadeus Meneses on 12/7/22.
//

import SwiftUI

struct ForecastRowView: View {
    var forecast:Forecast
    init(forcast: Forecast) {
        self.forecast = forcast
    }
    var body: some View {
        HStack{
            Image("\(forecast.pic)")
                .padding(.trailing, 24.0)
            
            VStack{
                
                Text("\(forecast.date)").font(.headline).fontWeight(.heavy)
                HStack{
                    Text("\(forecast.temp_hi)\u{00B0}F")
                        .font(.headline)
                    
                    Text("\(forecast.temp_low)\u{00B0}F")
                        .font(.headline)
                }
            }
        }
    }
}


