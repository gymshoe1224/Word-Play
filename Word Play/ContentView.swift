//
//  ContentView.swift
//  Word Play
//
//  Created by Chris Markiewicz on 9/2/22.
//

import SwiftUI

//Madlib : Today I went to my favorite Taco Stand called the . Unlike most food stands, they cook and prepare the food in a while you . The best thing on the menu is the . Instead of ground beef they fill the taco with , cheese, and top it off with a salsa made from . If that doesn't make your mouth water, then it' just like always says: !

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeHolder: "foods", variable: $words.foods0)
                    CustomTextField(placeHolder: "foods", variable: $words.foods1)
                    CustomTextField(placeHolder: "verb", variable: $words.verb0)
                }
                HStack {
                    CustomTextField(placeHolder: "noun", variable: $words.noun0)
                    CustomTextField(placeHolder: "noun", variable: $words.noun1)
                    CustomTextField(placeHolder: "saying", variable: $words.saying0)
                }
                HStack {
                    CustomTextField(placeHolder: "animal", variable: $words.animal0)
                    CustomTextField(placeHolder: "person", variable: $words.person0)
                }
                HStack {
                    CustomTextField(placeHolder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeHolder: "adjective", variable: $words.adjective1)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct Words {
    var foods0 = ""
    var foods1 = ""
    var verb0 = ""
    var noun0 = ""
    var noun1 = ""
    var saying0 = ""
    var adjective0 = ""
    var adjective1 = ""
    var animal0 = ""
    var person0 = ""
}

struct CustomTextField : View {
    let placeHolder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeHolder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
