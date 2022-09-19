//
//  ContentView.swift
//  ListDemo
//
//  Created by Esperanza on 2022-09-19.
//

import SwiftUI

struct ContentView: View {
  
  var animals = ["Rabbit", "Zebra", "Monkey", "Bear", "Deer"]
  @State var animal: [String] = []
  
    var body: some View {
      VStack {
        List(animal, id: \.self) { cuties in
          Text(cuties)
        }
        Button {
          animal.append(animals.randomElement()!)
        } label: {
          Text("Create an animal list.")
            .padding()
            .bold()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
