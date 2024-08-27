//
//  ContentView.swift
//  AppStorageTest
//
//  Created by Conner Yoon on 8/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @AppStorage("Name") var name : String?
    @State var textInField : String
    var body: some View {
        VStack{
            
            if let previousName = name {
                    Text("Hello \(previousName)!")
                    Text("Would you like to change your name?")
                
                
            }else{
                Text("Hi, what should I call you?")
            }
            TextField("", text: $textInField).textFieldStyle(.roundedBorder)
            Button("Save"){
                name = textInField
            }
            Button("Forget"){
                name = nil
            }
        }
    }

   
}

#Preview {
    ContentView(textInField: (""))
       
}
