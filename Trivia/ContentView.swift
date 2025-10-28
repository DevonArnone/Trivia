//
//  ContentView.swift
//  Trivia
//
//  Created by Devon Arnone on 10/27/25.
//

import SwiftUI

struct ContentView: View {
        // store questions
    @State private var questions: [Question] = []
    var body: some View {
        NavigationStack {
            List {
                ForEach(questions) { question in
                    NavigationLink(destination: QuestionView(question: question)) {
                        Text(question.question)
                    }
                }
            }
            .navigationTitle("Trivia")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        questions.shuffle()
                    } label: {
                        Image(systemName: "shuffle")
                    }
                }
            }
            
        }
        .onAppear {
            if let url = Bundle.main.url(forResource: "questions", withExtension: "json"),
                   let data = try? Data(contentsOf: url),
                   let decoded = try? JSONDecoder().decode([Question].self, from: data) {
                    questions = decoded
                }
            }
        }
    }


#Preview {
    ContentView()
}
