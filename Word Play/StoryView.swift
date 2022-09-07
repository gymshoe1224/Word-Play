//
//  StoryView.swift
//  Word Play
//
//  Created by Chris Markiewicz on 9/2/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    func writeStory() -> String {
        return "Today I went to my favorite Taco Stand called the \(words.adjective0) \(words.animal0). Unlike most food stands, they cook and prepare the food in a \(words.noun1) while you \(words.verb0). The best thing on the menu is the \(words.adjective1) \(words.noun0). Instead of ground beef they fill the taco with \(words.foods1), cheese, and top it off with a salsa made from \(words.foods0). If that doesn't make your mouth water, then it' just like \(words.person0) always says: \(words.saying0)!"
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words : Words())
    }
}
