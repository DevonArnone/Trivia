//
//  ContentView.swift
//  Trivia
//
//  Created by Devon Arnone on 10/27/25.
//

import SwiftUI

struct ContentView: View {
        // store questions
    
    var body: some View {
        NavigationStack {
            List {
                // Add NavigationLink to QuestionView for each question
            }
            // Add navigationTitle
            // Add shuffle button in toolbar
        }
        .onAppear {
            let url: URL = Bundle.main.url(forResource: "questions", withExtension: "json")!
            let data = try! Data(contentsOf: url)
            // decode the questions
        }
    }
}

#Preview {
    ContentView()
}
