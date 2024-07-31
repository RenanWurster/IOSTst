//
//  ContentView.swift
//  MeineErsteApp
//
//  Created by Renan Wurster on 30.07.24.
//

import SwiftUI


struct Person{
    var name: String
    var age: Int
    var height: Double
}

struct PersonView: View {
    var person: Person
    var body: some View {
        VStack{
            Text("Name: \(person.name)")
            Text("Age: \(person.age)")
            Text("Height: \(person.height)")
        }
    }
}



struct ContentView: View {
    
    var persons = [Person(name: "Renan", age: 34, height: 1.79), Person(name: "Amanda", age: 34, height: 1.68)]
        
    var body: some View{
        VStack{
            PersonView(person: persons[0])
            Divider()
            PersonView(person: persons[1])
        }
        
    }
}

#Preview {
    ContentView()
}
