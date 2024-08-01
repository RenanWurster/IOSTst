//
//  DetailStepper.swift
//  MeineErsteApp
//
//  Created by Renan Wurster on 01.08.24.
//

import SwiftUI

struct DetailStepper: View {
    //Stepper in View
    @State private var value: Int = 0
    //DatePicker
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        VStack{
            DatePicker("Datum auswählen", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            let dateFormatted = selectedDate.formatted(date: .complete, time: .shortened
        )
            Text("Ausgewähltes Datum: \(dateFormatted)")
        }.padding(20)
        
        Spacer().frame(height: 100)
        Divider()
        
        VStack{
            Stepper("Add", value: $value, in: 0...100)
            Text("Wert: \(value)")
        }.padding(20)
        
        
    }
}

#Preview {
    DetailStepper()
}
