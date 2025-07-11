# Suitmedia Flutter Test Application

A Flutter application developed as a part of a technical assessment for Suitmedia. The app consists of three screens and demonstrates proficiency in core Flutter concepts including state management, API integration, and navigation.

## Features

-   **Screen 1: Palindrome & Name Input**
    -   Input field for the user's name.
    -   Input field to check if a given sentence is a palindrome.

-   **Screen 2: Welcome Screen**
    -   Displays a welcome message with the name provided from the first screen.
    -   Shows the name of the user selected from the third screen.

-   **Screen 3: User List**
    -   Fetches a list of users from the `reqres.in` public API.
    -   **Infinite Scroll Pagination:** Automatically loads more users as the user scrolls to the bottom of the list.
    -   **Pull-to-Refresh:** Allows the user to reload the user list from the beginning.
    -   **Empty & Error States:** Displays appropriate messages if the user list is empty or if there's a network error.

## Architecture

This project is built using the **BLoC (Business Logic Component)** pattern for state management, which helps in separating the presentation layer from the business logic.

## Instalation

1. **Clone the repository:**
    ```bash
    git clone <repository-url>
    cd suitmedia_test
    ```

2. **Install dependencies:**
    ```bash
    flutter pub get
    ```

3. **Run the application:**
    ```bash
    flutter run
    ```

> **Note:** Ensure you have [Flutter](https://docs.flutter.dev/get-started/install) installed and set up on your machine.