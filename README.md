# 🧠 Trivia App (SwiftUI)

A clean, lightweight multiple-choice trivia game built using SwiftUI. Questions are loaded from a JSON file, displayed in a list, and answered on a dedicated question screen with immediate feedback.


## 🚀 Overview

This app presents a list of trivia questions loaded from a bundled questions.json file.
Users can:
	•	Browse all available questions
	•	Tap a question to open the quiz screen
	•	Select from four answer choices
	•	Get instant “Correct!” or “Try again!” feedback
	•	Shuffle the question order anytime

Everything is handled locally—no network required.


## 🎨 Features

📚 Question List
	•	Displays all trivia questions from the JSON file
	•	Uses SwiftUI’s NavigationStack + NavigationLink
	•	Includes a shuffle button to randomize order

❓ Question Screen
	•	Four multiple-choice buttons (A, B, C, D)
	•	Clean two-column layout
	•	Buttons styled with rounded rectangles
	•	Instant feedback appears below answers

📄 JSON Loading
	•	Loads questions.json from the app bundle
	•	Decoded into an array using Codable
	•	Question struct handles all fields

💬 Immediate Feedback
	•	Green “Correct!”
	•	Red “Try again!”
	•	Smooth and simple state-driven UI
  

## 📱 How to Run
	1.	Open in Xcode 15+
	2.	Add your questions.json to the project bundle
	3.	Run on any simulator or device
	4.	Tap a question and start answering

Example JSON format:

[
  {
    "question": "What is the capital of France?",
    "A": "Paris",
    "B": "London",
    "C": "Berlin",
    "D": "Madrid",
    "answer": "A"
  }
]


## 🧭 Future Roadmap

🏆 Score Tracking
	•	Count correct answers
	•	Add streaks, multipliers, or XP

📊 Results Screen
	•	Show summary after answering all questions
	•	Track performance over time

🎨 Improved UI
	•	Animated button feedback
	•	Color changes for correct/incorrect choices
	•	Card-style question layout

🎮 Game Modes
	•	Timed mode (countdown clock)
	•	Survival mode (one wrong = game over)
	•	Categories (Sports, History, Science…)

🌐 Online Trivia (Long-Term)
	•	Fetch trivia from an API
	•	Daily question challenges
	•	User-submitted questions
