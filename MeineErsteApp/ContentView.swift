//
//  ContentView.swift
//  MeineErsteApp
//
//  Created by Renan Wurster on 30.07.24.
//

import SwiftUI


struct Person: Identifiable{
    var id: UUID = UUID()
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

enum Fruit: String, CaseIterable, Identifiable {
    case apple = "Apple"
    case banane = "Banana"
    case orange = "Orange"
    case kiwi = "Kiwi"
    case lemon = "Lemon"
    case erdbeere = "Strawberry"
    case himbeere = "Blueberry"
    var id: String { self.rawValue}
}


struct ContentView: View {
    
    @State private var selected: Fruit = .apple
    @State private var navigateToDetail = false
    var persons = [
        Person(name: "John Doe", age: 28, height: 1.80),
        Person(name: "Jane Smith", age: 32, height: 1.65),
        Person(name: "Emily Johnson", age: 25, height: 1.70),
        Person(name: "Michael Brown", age: 45, height: 1.78),
        Person(name: "Sarah Davis", age: 37, height: 1.72),
        Person(name: "David Wilson", age: 29, height: 1.82),
        Person(name: "Laura Martinez", age: 41, height:1.68),
        Person(name: "James Garcia", age: 33, height: 1.77)
    ]
        
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: Detail()) {
                    Text("Navigation to Slider and SecureFiel")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                .fixedSize()
                .padding(30)
              
               NavigationLink(destination: DetailStepper()) {
                    Text("Navigation to Stepper and DatePicker")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                .fixedSize()
                
                
                ScrollView {
                    ForEach(persons) { person in
                        VStack {
                            Text("Name: \(person.name)")
                            Text("Age: \(person.age.description)")
                            Text("Height: \(person.height.description)")
                            Divider()
                        }
                    }
                }.frame(height: 150)
                
                Divider()
                
                Picker("select a fruit", selection: $selected) {
                    ForEach(Fruit.allCases) { fruit in
                        Text(fruit.rawValue).tag(fruit)
                    }
                }
                .pickerStyle(.automatic)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(["beach", "foto1", "foto2", "foto3"], id: \.self){ imageName in
                            NavigationLink(destination: DetailFoto(imageName: imageName , text: imageName.capitalized)) {
                                VStack{
                                    Text(imageName.capitalized)
                                    Image(imageName)
                                        .resizable()
                                        .frame(width: 200, height: 150)
                                        .clipShape(Rectangle())
                                }
                            }.padding(20)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
