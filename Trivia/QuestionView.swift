//
//  QuestionView.swift
//  Trivia
//
//  Created by Devon Arnone on 10/27/25.
//

import SwiftUI

struct Question: Identifiable, Codable {
    var id = UUID()
    let question: String
    let A: String
    let B: String
    let C: String
    let D: String
    let answer: String
}

struct QuestionView: View {
    let question: Question
    @State private var result: String?

    var body: some View {
        VStack {
            Text(question.question)
                .font(.title)
                .padding()
            
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    Button(action: {checkAnswer("A")}) {
                        Text("A: \(question.A)")
                            .padding(8)
                            .frame(width: 150, height: 100)
                            .background(Color(.systemGray6))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                            .contentShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    Button(action: {checkAnswer("B")}) {
                        Text("B: \(question.B)")
                            .padding(8)
                            .frame(width: 150, height: 100)
                            .background(Color(.systemGray6))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                            .contentShape(RoundedRectangle(cornerRadius: 8))
                    }
                }

                HStack(spacing: 10) {
                    Button(action: {checkAnswer("C")}) {
                        Text("C: \(question.C)")
                            .padding(8)
                            .frame(width: 150, height: 100)
                            .background(Color(.systemGray6))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                            .contentShape(RoundedRectangle(cornerRadius: 8))
                    }

                    Button(action: {checkAnswer("D")}) {
                        Text("D: \(question.D)")
                            .padding(8)
                            .frame(width: 150, height: 100)
                            .background(Color(.systemGray6))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                            .contentShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
            .padding()
            
            if let result = result {
                Text(result)
                    .font(.headline)
                    .foregroundColor(result == "Correct!" ? .green : .red)
                    .padding()
            }
        }
    }
    
    func checkAnswer(_ selected: String) {
        if selected == question.answer {
            result = "Correct!"
        } else {
            result = "Try again!"
        }
    }
}

#Preview {
    QuestionView(question: Question(
            question: "What is the capital of France?",
            A: "Paris",
            B: "London",
            C: "Berlin",
            D: "Madrid",
            answer: "A"
    ))
}
