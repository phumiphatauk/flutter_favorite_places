# 📍 Flutter Favorite Places

A beautiful and feature-rich location-based app built with Flutter, SQLite, and Google Maps. Capture and save your favorite places with photos, GPS coordinates, and interactive maps!

## ✨ Features

- 📸 **Camera Integration** - Take photos directly within the app using device camera
- 🗺️ **Interactive Google Maps** - View and select locations on beautiful Google Maps
- 📍 **GPS Location Services** - Get your current location with one tap
- 🏪 **Local Storage** - Save places permanently with SQLite database
- 🎨 **Beautiful UI** - Dark theme with custom purple color scheme and Ubuntu Condensed fonts
- 🔄 **State Management** - Reactive state management powered by Riverpod
- 📱 **Cross-Platform** - Runs seamlessly on iOS, Android, Web, macOS, Windows, and Linux
- 🔒 **Environment Security** - Secure API key management with dotenv
- 📍 **Address Geocoding** - Automatic address resolution from GPS coordinates
- 🖼️ **Image Management** - Efficient image storage and retrieval
- ⚡ **Smooth Navigation** - Intuitive navigation between screens

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (v3.8.0 or higher)
- Dart SDK (compatible with Flutter version)
- Google Maps API key
- A device or emulator to run the app

### 🔧 Google Maps API Setup

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select existing one
3. Enable the following APIs:
   - Maps SDK for Android
   - Maps SDK for iOS
   - Maps Static API
   - Geocoding API
4. Create credentials and get your API key
5. Restrict the API key for security (optional but recommended)

### 📥 Installation

1. Clone this repository:
```bash
git clone https://github.com/phumiphatauk/flutter_favorite_places.git
```

2. Navigate to the project directory:
```bash
cd flutter_favorite_places
```

3. Install dependencies:
```bash
flutter pub get
```

4. Create a `.env` file in the root directory:
```env
GOOGLE_MAPS_API_KEY=your_google_maps_api_key_here
```

5. Run the app:
```bash
flutter run
```

## 🎮 How to Use

### Adding a New Place
1. **Open the app** and tap the **+** button in the app bar
2. **Enter a title** for your favorite place
3. **Take a photo** by tapping the camera area
4. **Choose location** using one of these methods:
   - **Get Current Location**: Tap to use GPS and get your current coordinates
   - **Select on Map**: Choose any location on the interactive Google Maps
5. **Save the place** by tapping the "Add Place" button

### Managing Your Places
- **View All Places**: Browse your saved places in the main screen
- **View Details**: Tap any place to see the full-size photo and map
- **Interactive Map**: Tap the map preview to open full Google Maps view
- **Persistent Storage**: All places are automatically saved to your device

### Location Features
- **GPS Integration**: Automatically detect your current location
- **Address Resolution**: GPS coordinates are converted to readable addresses
- **Map Selection**: Pick any location worldwide using Google Maps
- **Static Map Preview**: See a preview image of the location

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS  
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 📦 Dependencies

```yaml
dependencies:
  flutter: sdk
  cupertino_icons: ^1.0.8        # iOS-style icons
  google_fonts: ^6.2.1           # Beautiful typography (Ubuntu Condensed)
  uuid: ^4.5.1                   # Unique ID generation
  flutter_riverpod: ^2.6.1       # Reactive state management
  image_picker: ^1.1.2           # Camera and gallery access
  location: ^8.0.0               # GPS location services
  http: ^1.4.0                   # HTTP client for API calls
  flutter_dotenv: ^5.2.1         # Environment variable management
  google_maps_flutter: ^2.12.2   # Google Maps integration
  google_maps_flutter_ios: ^2.15.2 # iOS-specific Maps implementation
  path_provider: ^2.1.5          # File system access
  path: ^1.9.1                   # Path manipulation utilities
  sqflite: ^2.4.2               # SQLite database

dev_dependencies:
  flutter_test: sdk
  flutter_lints: ^5.0.0          # Code quality and style linting
```

## 🏗️ Project Structure

```
lib/
├── main.dart                    # App entry point and theme configuration
├── models/
│   └── place.dart              # Place and PlaceLocation data models
├── providers/
│   └── user_places.dart        # Riverpod state management for places
├── screens/
│   ├── places.dart             # Main places list screen
│   ├── add_place.dart          # Add new place form
│   ├── map.dart                # Interactive Google Maps screen
│   └── places_detail.dart      # Place detail view
└── widgets/
    ├── image_input.dart        # Camera capture widget
    ├── location_input.dart     # GPS and map location picker
    └── places_list.dart        # Places list display widget
```

## 🎨 Design Features

- **Dark Theme**: Elegant dark theme with custom purple accent colors
- **Ubuntu Condensed Font**: Beautiful typography throughout the app
- **Custom Color Scheme**: Purple gradient theme with dark background
- **Material Design 3**: Modern Material Design components
- **Responsive Layout**: Adapts to different screen sizes
- **Interactive Elements**: Smooth transitions and hover effects

## 🔧 Technical Features

- **SQLite Database**: Local database for persistent storage
- **Riverpod State Management**: Reactive and scalable state management
- **Google Maps Integration**: Interactive maps with marker placement
- **Camera Integration**: Direct camera access for photo capture
- **GPS Services**: Real-time location detection
- **Geocoding API**: Convert coordinates to human-readable addresses
- **Image Management**: Efficient image storage in device directories
- **Environment Configuration**: Secure API key management
- **Cross-Platform Compatibility**: Single codebase for multiple platforms

## 🗄️ Database Schema

The app uses SQLite with the following table structure:

```sql
CREATE TABLE user_places(
  id TEXT PRIMARY KEY,
  title TEXT,
  image TEXT,
  loc_lat REAL,
  loc_lng REAL,
  address TEXT
)
```

## 🌐 Google APIs Used

- **Maps Static API**: For generating static map preview images
- **Geocoding API**: For converting coordinates to addresses
- **Maps SDK**: For interactive map functionality

## 📍 Place Model Structure

```dart
class Place {
  final String id;              // Unique identifier
  final String title;           // User-defined place name
  final File image;             // Captured photo file
  final PlaceLocation location; // GPS coordinates and address
}

class PlaceLocation {
  final double latitude;        // GPS latitude
  final double longitude;       // GPS longitude
  final String address;         // Formatted address
}
```

## 🔒 Permissions Required

### Android
- `INTERNET` - For Google Maps and Geocoding API
- `ACCESS_FINE_LOCATION` - For GPS location services
- `ACCESS_COARSE_LOCATION` - For approximate location
- `CAMERA` - For taking photos

### iOS
- Location Services - For GPS functionality
- Camera - For photo capture
- Photo Library - For image access

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/phumiphatauk/flutter_favorite_places/issues).

### How to Contribute
1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 🌟 Future Enhancements

- 🔍 **Search Functionality** - Search places by name or address
- 📂 **Categories** - Organize places into categories (restaurants, landmarks, etc.)
- 🌟 **Rating System** - Rate your favorite places
- 📝 **Notes** - Add detailed notes to each place
- 🔄 **Cloud Sync** - Sync places across devices
- 📤 **Export/Import** - Share places with friends
- 🏷️ **Tags** - Add custom tags to places
- 📊 **Statistics** - View analytics about your places

## 🔒 Environment Variables

Create a `.env` file in your project root:

```env
GOOGLE_MAPS_API_KEY=your_google_maps_api_key_here
```

**Important**: 
- Never commit your `.env` file to version control
- The `.env` file is already included in `.gitignore`
- Get your API key from Google Cloud Console

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Google Maps team for excellent mapping services
- Riverpod team for reactive state management
- SQLite team for robust local database
- Google Fonts team for beautiful typography
- Community contributors and testers

## 📧 Contact

Project Link: [https://github.com/phumiphatauk/flutter_favorite_places](https://github.com/phumiphatauk/flutter_favorite_places)
