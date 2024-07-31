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
    
    var persons = [Person(name: "Renan", age: 34, height: 1.79), Person(name: "Amanda", age: 34, height: 1.68), Person(name: "Alice", age: 2, height: 0.92), Person(name: "Vo Marli", age: 60, height: 1.76), Person(name: "Vo Jordan", age: 61, height: 1.77)]
        
    var body: some View{
        Button{
            print("Button wurde geklickt")
        } label: {
            Text("Click mich!")
        }
        VStack{
            ScrollView{
            PersonView(person: persons[0])
            Divider()
            PersonView(person: persons[1])
            Divider()
            PersonView(person: persons[2])
            Divider()
            PersonView(person: persons[3])
            Divider()
            PersonView(person: persons[4])
            Divider()
            PersonView(person: persons[3])
            Divider()
            PersonView(person: persons[4])
                Divider()
                PersonView(person: persons[3])
                Divider()
                PersonView(person: persons[4])
                Divider()
                PersonView(person: persons[3])
                Divider()
                PersonView(person: persons[4])
            }
        }
        ZStack{
            Image("beach")
                .resizable()
                .frame(width: 300, height: 300)
            Text("Hallo")
        }
        
    }
}

#Preview {
    ContentView()
}
