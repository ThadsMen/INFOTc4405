//
//  LineChartView.swift
//  StatesMidtermProject
//
//  Created by Thadeus Meneses on 11/29/22.
//

import SwiftUI
import Charts

struct LineChartView: View {

    var state:USState
    var body: some View {
        VStack{
            Text("Population Growth")
            Chart{
                LineMark(
                    x: .value("Shape Type", "2010"),
                    y: .value("Total Count", state.pop2010)
                )
                LineMark(
                    x: .value("Shape Type", "2018"),
                    y: .value("Total Count", state.pop2018)
                )
                LineMark(
                    x: .value("Shape Type", "Current"),
                    y: .value("Total Count", state.pop)
                )
            }.chartYScale(domain:(state.pop2018-4000000)...(state.pop+1000000)).scaledToFit()
                
            
        }
    }
}

struct LineChartView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView(state:USStates.list[0])
    }
}
