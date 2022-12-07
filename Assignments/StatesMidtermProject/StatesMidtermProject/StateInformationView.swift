//
//  StateInformationView.swift
//  StatesMidtermProject
//
//  Created by Thadeus Meneses on 11/29/22.
//

import SwiftUI

struct StateInformationView: View {
    var state:USState
    
    var body: some View {
        
        VStack{
            Text(state.name).font(.largeTitle).fontWeight(.bold)
            Text("\(state.rank)")
            Text("The one and only \(state.name) with a density of \(state.density)").font(.title3).padding(.top).foregroundColor(.gray)
            
            LineChartView(state: state)
                .padding(.top)
                
            
        }
    }
}

struct StateInformationView_Previews: PreviewProvider {
    static var previews: some View {
        StateInformationView(state:USStates.list[0])
    }
}
