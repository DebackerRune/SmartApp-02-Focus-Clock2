# Contributing to Focus Clock

Thank you for your interest in contributing to Focus Clock!

## Development Setup

### Prerequisites

- Flutter SDK (>=3.0.0 <4.0.0)
- Dart SDK (comes with Flutter)
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Getting Started

1. Clone the repository:
```bash
git clone https://github.com/DebackerRune/SmartApp-02-Focus-Clock2.git
cd SmartApp-02-Focus-Clock2
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Running Tests

Run all tests:
```bash
flutter test
```

Run tests with coverage:
```bash
flutter test --coverage
```

### Code Quality

We use `flutter_lints` for code quality. Before submitting a PR, ensure:

1. No analysis warnings:
```bash
flutter analyze
```

2. Code is properly formatted:
```bash
flutter format .
```

3. All tests pass:
```bash
flutter test
```

## Project Structure

```
lib/
├── main.dart              # Entry point, routing, and theme configuration
├── clock_screen.dart      # Main clock screen with analog/digital display
├── clock_painter.dart     # Custom painter for analog clock rendering
└── settings_screen.dart   # Settings screen with preferences

test/
└── widget_test.dart       # Widget tests

web/
├── index.html            # Web entry point
└── manifest.json         # Web app manifest
```

## Architecture Guidelines

### Using flutter_hooks

This project uses `flutter_hooks` for functional component logic:

- Use `HookWidget` instead of `StatefulWidget`
- Use `useState` for local state
- Use `useEffect` for side effects
- Use `useMemoized` for expensive computations
- Use `useStream` for stream subscriptions

Example:
```dart
class MyWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    
    return ElevatedButton(
      onPressed: () => counter.value++,
      child: Text('Count: ${counter.value}'),
    );
  }
}
```

### Material 3 Design

- Always use `Theme.of(context).colorScheme` for colors
- Use `GoogleFonts.inter()` for all typography
- Ensure `useMaterial3: true` in ThemeData
- Follow Material 3 component guidelines

### Responsive Design

- Use `LayoutBuilder` or `MediaQuery` for responsive layouts
- Test in both portrait and landscape orientations
- Ensure no clipping occurs in landscape mode
- Consider different screen sizes (phones, tablets)

### Null Safety

- All code must be null-safe
- Use `required` for required parameters
- Use `??` operator for null-coalescing
- Avoid using `!` operator; prefer safe navigation

## Coding Standards

### Naming Conventions

- Classes: `PascalCase`
- Functions/Methods: `camelCase`
- Constants: `lowerCamelCase`
- Private members: prefix with `_`

### File Organization

- One widget per file for major components
- Group related functionality
- Separate business logic from UI
- Keep files under 300 lines when possible

### Comments

- Use `///` for public API documentation
- Use `//` for implementation comments
- Document complex algorithms
- Avoid obvious comments

### Import Order

1. Dart SDK imports
2. Flutter imports
3. Package imports
4. Relative imports

Example:
```dart
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import 'clock_painter.dart';
```

## Adding New Features

### Clock Display Features

When adding clock display features:
1. Update `ClockPainter` for analog changes
2. Update `ClockScreen` for digital/layout changes
3. Maintain separation of concerns
4. Ensure updates every second

### Settings Features

When adding new settings:
1. Add toggle in `SettingsScreen`
2. Use `useState` for local state
3. Consider persistence (SharedPreferences)
4. Update UI to respect setting

### Testing New Features

- Add widget tests for UI components
- Add unit tests for business logic
- Test in multiple orientations
- Test light and dark themes
- Test on different screen sizes

## Pull Request Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run tests and linters
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

### PR Checklist

- [ ] Code follows project style guidelines
- [ ] Tests added for new functionality
- [ ] All tests pass
- [ ] No analyzer warnings
- [ ] Code is formatted
- [ ] Documentation updated if needed
- [ ] Tested on multiple screen sizes
- [ ] Tested in both light and dark themes

## Bug Reports

When reporting bugs, please include:

- Flutter version (`flutter --version`)
- Device/Platform
- Steps to reproduce
- Expected behavior
- Actual behavior
- Screenshots if applicable

## Feature Requests

Feature requests are welcome! Please:

- Check if the feature already exists
- Explain the use case
- Describe the proposed solution
- Consider Material 3 design guidelines

## Questions?

Feel free to open an issue for questions or discussions.

## License

By contributing, you agree that your contributions will be licensed under the same license as the project.
