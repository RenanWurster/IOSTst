//
//  DetailFoto.swift
//  MeineErsteApp
//
//  Created by Renan Wurster on 01.08.24.
//

import SwiftUI

struct DetailFoto: View {
    var imageName: String
        var text: String
    
    var body: some View {
        VStack{
            Text(text)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 300)
        }.navigationTitle("DetailFoto")
    }
}

#Preview {
    DetailFoto(imageName: "image", text: "title")
}
