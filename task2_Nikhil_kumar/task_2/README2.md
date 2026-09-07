# 🏋️ Workout & Fitness Tracker App

A modern, modular fitness tracking application built with **Flutter**. The app helps users manage their daily workout routines, monitor target sets and repetitions, and track workout sessions with a real-time responsive timer.

---

## 📱 Features

- **Dynamic Routine Cards (`Container3`):** Modular, reusable workout cards that parse and display metrics directly from local JSON datasets.
- **Real-Time Workout Timer:**
  - Start / Pause / Auto-finish states managed with periodic ticks.
  - Quick seek controls (`+5s` and `-5s`) with bounded clamping.
  - Real-time `MM:SS` duration formatting and animated progress indicator.
- **Data-Driven Architecture:** Clean deserialization using `factory .fromJson` constructors to keep UI and data layers separated.
- **Dark Aesthetic UI:** Clean, distraction-free dark interface with high-contrast accent highlights.

---

## 🛠️ Tech Stack & Concepts

- **Framework:** Flutter
- **Language:** Dart
- **State Management:** Flutter `StatefulWidget` & encapsulated widget state
- **Asynchronous Flow:** `dart:async` (`Timer.periodic`)
- **Data Storage & Parsing:** Local JSON assets via `rootBundle` and `dart:convert` (`jsonDecode`)

---

## 📁 Project Structure

lib/
├── code_structure/       # Layout structures & views
├── code_widgets/         # Reusable design system widgets
│   ├── container/        # Container3 and card components
│   ├── text/             # Custom typography widgets
│   └── timer/            # WorkoutTimer component
├── models/               # Data models for serialization
└── main.dart             # Application entry point

assets/
└── data/
    └── workouts.json     # Exercise routines & metrics dataset

---

## ⚙️ Getting Started

### Prerequisites

- Flutter SDK (v3.0.0 or later)
- Android Studio / VS Code with Flutter extension
- A connected device or emulator

### Installation

1. Clone the repository:
   git clone https://github.com/your-username/fitness-tracker-app.git
   cd fitness-tracker-app

2. Install dependencies:
   flutter pub get

3. Verify assets in pubspec.yaml:
   Ensure the data asset path is included under the flutter block:
   flutter:
     assets:
       - assets/data/workouts.json

4. Run the app:
   flutter run

---

## 📊 Sample Data Format

The application consumes exercise routines structured in assets/data/workouts.json:

[
  {
    "id": 1,
    "title": "Push Ups",
    "reps": "115",
    "sets": "15",
    "weight": "150",
    "exercise": "5"
  }
]

---

## 💡 Key Architectural Highlights

- **Encapsulated State:** The WorkoutTimer manages its own timer ticks and lifecycle independently, preventing unnecessary parent tree rebuilds.
- **Resource Cleanup:** Background ticker instances are safely stopped inside the dispose() lifecycle method to prevent memory leaks.
- **Factory Constructors:** Container3.fromJson() allows seamless transition between hardcoded parameters and incoming JSON maps.