# Pet Finder App

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

An example of riverpod architecture which use "[petfinder](https://www.petfinder.com/developers/v2/docs/)" api.

## App Architecture and Folder Structure

The code of the app implements clean architecture to separate the UI, domain and data layers with a feature-first approach for folder structure.

### Demo
![demo](https://github.com/dipakp2726/pet_finder/blob/main/demo.gif)

### Folder Structure

```
lib
├── core
│   ├── configs
│   ├── exceptions
│   ├── models
│   ├── services
│   │   ├── http
│   │   └── storage
│   └── widgets
├── features
│   ├── pet
│       ├── models
│       ├── providers
│       ├── repositories
│       └── views
│           ├── pages
│           └── widgets
│  
├── main.dart
└── pet_app.dart
```

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
