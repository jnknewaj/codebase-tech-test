# Flutter Clean Architecture API Demo

This project demonstrates fetching paginated data from an API using **Flutter**, following a clean architecture pattern.

## 🧩 Features

- 📡 Fetches user data from a REST API with **pagination**
- 🧠 Uses `flutter_bloc` for state management
- 🧪 Built with clean architecture principles (DDD-inspired) for better testability and separation of concerns
- 🧰 Dependency Injection via `get_it` and `injectable`
- ❄️ Code generation with `freezed` for immutable classes and union types
- 🧼 UI is kept **minimal** and **functional**, focusing on clean structure and responsiveness

## 🗂️ Project Structure

```
lib/
├── application/     # Blocs, events, states (business logic)
├── domain/          # Entities, repositories (abstract interfaces)
├── infrastructure/  # API calls and data sources
├── presentation/    # UI pages and widgets
├── injection.dart   # get_it & injectable setup