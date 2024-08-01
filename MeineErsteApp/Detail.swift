//
//  Detail.swift
//  MeineErsteApp
//
//  Created by Renan Wurster on 31.07.24.
//

import SwiftUI


struct Detail: View {
    //Slider in View
    @State private var value: Double = 1.0
    @State private var passwrod: String = ""
    var body: some View {
        VStack(spacing: 20){
            Slider(value: $value, in: 0...100)
            Text(String(format: "%.2f", value))
            
        }.padding(20)
        Spacer().frame(height: 100)
        VStack(spacing: 20){
            SecureField("Password eingeben", text: $passwrod)
            Text("Eingegebenes Passwort: \(passwrod)")
        }.padding(20)
    }
}

#Preview {
    Detail()
}
