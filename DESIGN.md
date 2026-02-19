# Focus Clock - Visual Design Documentation

## Clock Screen (Main Screen)

### Layout
```
┌─────────────────────────────────────┐
│ ┌─────────────────────────────────┐ │
│ │   Focus Clock        [⚙️]       │ │ AppBar
│ └─────────────────────────────────┘ │
│                                     │
│         ┌───────────────┐           │
│         │               │           │
│         │   ●    12     │           │
│         │               │           │
│         │9      ●    3  │           │
│         │               │           │  Analog Clock
│         │       ●       │           │
│         │   6           │           │
│         │               │           │
│         └───────────────┘           │
│                                     │
│          23:45:12                   │  Digital Time
│                                     │
│    Wednesday, February 19, 2026     │  Date Display
│                                     │
└─────────────────────────────────────┘
```

### Features
- **AppBar**: Material 3 styled with "Focus Clock" title and settings icon
- **Analog Clock**: Circular clock with:
  - Hour hand (50% radius, primary color, thick)
  - Minute hand (70% radius, secondary color, medium)
  - Second hand (80% radius, tertiary color, thin)
  - Tick marks at 12 positions (thicker at 3, 6, 9, 12)
  - Center dot
  - Border circle
- **Digital Time**: Large, bold Inter font showing HH:MM:SS
- **Date**: Smaller Inter font showing full date

### Responsive Behavior
- **Portrait**: Clock takes 80% of smaller dimension
- **Landscape**: Clock takes 80% of height, fonts scale down
- **SingleChildScrollView**: Prevents clipping in all orientations

## Settings Screen

### Layout
```
┌─────────────────────────────────────┐
│ ┌─────────────────────────────────┐ │
│ │ [←]  Settings                   │ │ AppBar
│ └─────────────────────────────────┘ │
│                                     │
│  Clock Preferences                  │
│                                     │
│  ┌─────────────────────────────────┐│
│  │ [🕐] 24-Hour Format     [Toggle]││  Card
│  │  Display time in 24-hour format ││
│  └─────────────────────────────────┘│
│                                     │
│  ┌─────────────────────────────────┐│
│  │ [⏱️] Show Seconds       [Toggle]││  Card
│  │  Display seconds on the clock   ││
│  └─────────────────────────────────┘│
│                                     │
│  ┌─────────────────────────────────┐│
│  │ [📅] Show Date          [Toggle]││  Card
│  │  Display the current date below ││
│  └─────────────────────────────────┘│
│                                     │
│  Appearance                         │
│                                     │
│  ┌─────────────────────────────────┐│
│  │ [🎨] Material 3 Theme           ││  Info Card
│  │  Follows system theme prefs     ││
│  └─────────────────────────────────┘│
│                                     │
│       Focus Clock v1.0.0            │
│                                     │
└─────────────────────────────────────┘
```

### Features
- **Three Toggle Settings**: Each in a Material 3 Card with icon, title, subtitle
- **Appearance Section**: Info card showing Material 3 theme
- **Version Footer**: App version at bottom
- **Responsive**: Max width 600px in landscape mode

## Color Scheme (Material 3)

### Light Theme
- Primary: Blue seed color
- Secondary: Derived from seed
- Tertiary: Derived from seed
- Surface: White/Light gray
- onSurface: Dark gray/Black

### Dark Theme
- Primary: Blue seed color (adapted)
- Secondary: Derived from seed
- Tertiary: Derived from seed
- Surface: Dark gray
- onSurface: White/Light gray

## Typography (Google Fonts Inter)

- **AppBar Title**: Inter, Weight 600
- **Digital Time**: Inter, Weight 700, Size 48 (32 in landscape)
- **Date**: Inter, Weight 400, Size 20 (16 in landscape)
- **Settings Headers**: Inter, Weight 600, Size 20
- **Settings Titles**: Inter, Weight 500
- **Settings Subtitles**: Inter, Size 12
- **Footer**: Inter, Size 14

## Animations

- **Clock Hands**: Update smoothly every second
- **Navigation**: Material 3 page transitions
- **Switches**: Material 3 animated toggles

## Accessibility

- **Tooltips**: Settings icon has tooltip
- **Color Contrast**: Material 3 ensures WCAG compliance
- **Touch Targets**: Minimum 48x48 logical pixels
- **Semantic Labels**: All icons have semantic meaning
