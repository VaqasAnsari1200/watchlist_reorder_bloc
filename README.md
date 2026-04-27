# Watchlist Reorder App (Flutter + BLoC)

This project is a Flutter-based implementation of a stock watchlist interface, inspired by the 021Trade application.

The main objective is to allow users to reorder stocks in a watchlist using Flutter's BLoC architecture pattern.

---

##  Features

- Display a list of stocks in a watchlist
- Reorder stocks using drag and drop
- Dedicated "Edit Watchlist" screen for reordering
- Clean and minimal UI inspired by trading applications
- State management using BLoC
- Modular and scalable project structure

---

##  Approach

The application follows the BLoC (Business Logic Component) pattern to separate UI from business logic.

- `WatchlistBloc` handles all state changes
- Events like `LoadWatchlist`, `ReorderWatchlist`, and `SaveWatchlist` are used
- State is immutable and managed using `Equatable`

Reordering is implemented using Flutter’s `ReorderableListView`, with updates handled inside the BLoC layer.

---

##  Project Structure
lib/
│
├── core/
│
├── features/
│ └── watchlist/
│ ├── data/
│ │ └── models/
│ ├── presentation/
│ │ ├── bloc/
│ │ ├── screens/
│ │ └── widgets/


This structure ensures separation of concerns and scalability.

---

##  Key Decisions

- Reordering functionality is placed inside a separate "Edit Watchlist" screen to match real-world trading app UX
- BLoC is used to ensure predictable state management
- Reusable widgets are created for cleaner UI code

---

##  UI Notes

- Simple and clean UI inspired by trading apps
- Includes search bar, watchlist display, and edit functionality
- Designed to be responsive and minimal

---

## 🛠 Tech Stack

- Flutter
- flutter_bloc
- equatable

---

##  How to Run

```bash
flutter pub get
flutter run