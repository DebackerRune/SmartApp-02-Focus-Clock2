# Visual Mockup - Focus Clock App

## Clock Screen - Light Theme (Portrait)

```
╔═══════════════════════════════════════════════╗
║  Focus Clock                      ⚙️           ║
╠═══════════════════════════════════════════════╣
║                                               ║
║                    12                         ║
║            ┏━━━━━━━━━━━━━┓                    ║
║        9   ┃      •      ┃   3                ║
║            ┃    ╱ │      ┃                    ║
║            ┃   ╱  │      ┃                    ║
║            ┃  •───┼───•  ┃                    ║
║            ┃      │    ╲ ┃                    ║
║            ┃      │     ╲┃                    ║
║            ┃      •      ┃                    ║
║            ┗━━━━━━━━━━━━━┛                    ║
║                    6                          ║
║                                               ║
║           23:45:12                            ║
║                                               ║
║     Wednesday, February 19, 2026              ║
║                                               ║
║                                               ║
╚═══════════════════════════════════════════════╝
```

## Settings Screen - Light Theme (Portrait)

```
╔═══════════════════════════════════════════════╗
║  ← Settings                                   ║
╠═══════════════════════════════════════════════╣
║                                               ║
║  Clock Preferences                            ║
║                                               ║
║  ┌───────────────────────────────────────┐   ║
║  │ 🕐  24-Hour Format            ●━━━○   │   ║
║  │     Display time in 24-hour format    │   ║
║  └───────────────────────────────────────┘   ║
║                                               ║
║  ┌───────────────────────────────────────┐   ║
║  │ ⏱️   Show Seconds             ●━━━○   │   ║
║  │     Display seconds on the clock      │   ║
║  └───────────────────────────────────────┘   ║
║                                               ║
║  ┌───────────────────────────────────────┐   ║
║  │ 📅  Show Date                 ●━━━○   │   ║
║  │     Display the current date below    │   ║
║  └───────────────────────────────────────┘   ║
║                                               ║
║  Appearance                                   ║
║                                               ║
║  ┌───────────────────────────────────────┐   ║
║  │ 🎨  Material 3 Theme                  │   ║
║  │     Follows system theme preferences  │   ║
║  └───────────────────────────────────────┘   ║
║                                               ║
║           Focus Clock v1.0.0                  ║
║                                               ║
╚═══════════════════════════════════════════════╝
```

## Clock Screen - Landscape Mode

```
╔════════════════════════════════════════════════════════════════════════╗
║  Focus Clock                                                  ⚙️        ║
╠════════════════════════════════════════════════════════════════════════╣
║                                                                        ║
║              12                       23:45:12                         ║
║         ┏━━━━━━━━━┓                                                    ║
║     9   ┃    •    ┃   3            Wednesday, February 19, 2026        ║
║         ┃  ╱ │  ╲ ┃                                                    ║
║         ┃ •──┼──• ┃                                                    ║
║         ┃    │    ┃                                                    ║
║         ┗━━━━━━━━━┛                                                    ║
║              6                                                         ║
║                                                                        ║
╚════════════════════════════════════════════════════════════════════════╝
```

## Color Scheme

### Light Theme
- **Background**: White/Light Gray
- **Text**: Dark Gray/Black
- **Primary**: Blue (Hour hand, AppBar icons)
- **Secondary**: Purple/Teal (Minute hand)
- **Tertiary**: Orange/Red (Second hand)

### Dark Theme
- **Background**: Dark Gray/Black
- **Text**: White/Light Gray
- **Primary**: Light Blue (Hour hand, AppBar icons)
- **Secondary**: Light Purple/Teal (Minute hand)
- **Tertiary**: Light Orange/Red (Second hand)

## Interactions

1. **Tap Settings Icon**: Navigates to Settings Screen
2. **Tap Back Arrow**: Returns to Clock Screen
3. **Toggle Switches**: Enable/disable preferences (not persisted)
4. **Clock Updates**: Real-time every second

## Font Specification

All text uses **Google Fonts Inter**:
- AppBar: Weight 600
- Digital Time: Weight 700, Size 48 (32 in landscape)
- Date: Weight 400, Size 20 (16 in landscape)
- Settings Headers: Weight 600, Size 20
- Settings Text: Weight 500
- Settings Subtitles: Size 12
