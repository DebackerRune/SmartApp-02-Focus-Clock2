# Focus Clock - Flutter Application

A responsive Flutter Clock application built with Material 3 design and functional components using flutter_hooks.

## Features

### Clock Screen
- **Analog Clock Display**: Beautiful analog clock face with hour, minute, and second hands
- **Digital Time Display**: Clear 24-hour digital time display in HH:MM:SS format
- **Date Display**: Shows the current date with full weekday and month names
- **Real-time Updates**: Clock updates every second using stream-based reactive programming
- **Responsive Design**: Automatically adapts to portrait and landscape orientations
  - In landscape mode, UI scales appropriately to prevent clipping
  - Uses LayoutBuilder and MediaQuery for responsive sizing

### Settings Screen
- **Clock Preferences**: Toggle options for:
  - 24-hour format display
  - Show/hide seconds
  - Show/hide date
- **Appearance Section**: Material 3 theme that follows system preferences
- **Responsive Layout**: Optimized for both portrait and landscape modes

## Technical Implementation

### Architecture
- **Functional Components**: Uses `flutter_hooks` for all component logic
  - `useStream` for real-time clock updates
  - `useState` for settings state management
  - `useMemoized` for optimized stream creation

### Design
- **Material 3**: Full Material 3 design system with dynamic color schemes
- **Typography**: Google Fonts Inter used throughout the application
- **Theme Support**: Automatic light/dark theme switching based on system preferences
- **Color Scheme**: Semantic color usage (primary, secondary, tertiary) from Material 3

### Code Quality
- **Null Safety**: Strict null safety enabled
- **Separation of Concerns**: Clock painter logic separated from UI components
- **Clean Architecture**: Modular file structure with clear responsibilities

### Responsive Features
- Uses `LayoutBuilder` to detect screen dimensions
- Adapts clock size based on available space
- Adjusts font sizes in landscape mode
- `SingleChildScrollView` prevents content clipping
- Maximum width constraints in landscape for better UX

## Project Structure

```
lib/
├── main.dart              # Application entry point with routing and theme
├── clock_screen.dart      # Main clock screen with analog and digital display
├── clock_painter.dart     # Custom painter for analog clock rendering
└── settings_screen.dart   # Settings screen with toggle preferences
```

## Dependencies

- **flutter_hooks**: ^0.20.5 - Functional component logic
- **google_fonts**: ^6.1.0 - Inter font family

## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0 <4.0.0)
- Dart SDK

### Installation

1. Clone the repository:
```bash
git clone https://github.com/DebackerRune/SmartApp-02-Focus-Clock2.git
cd SmartApp-02-Focus-Clock2
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

### Building

Build for release:
```bash
flutter build apk --release  # For Android
flutter build ios --release  # For iOS
```

## Navigation

- **Home Screen**: Displays the analog clock, digital time, and date
- **Settings**: Tap the settings icon in the AppBar to access preferences

## Features Highlights

✅ Material 3 design system  
✅ Functional components with flutter_hooks  
✅ Responsive layout for all orientations  
✅ Inter font family from Google Fonts  
✅ Real-time clock updates every second  
✅ Separated painter logic from UI  
✅ Strict null safety  
✅ Clean navigation with named routes  
✅ Theme-aware with light/dark mode support  

## License

This project is created as part of a Smart Application development course.