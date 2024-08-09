# GoogleGeminiSwift

**GoogleGeminiSwift** is a SwiftUI project that showcases the integration of the Gemini SDK to create an AI-powered chatbot, inspired by the functionality of OpenAI's conversational models. This project is built with a focus on modularity, employing a separate local Swift Package Manager (SPM) package to handle the Gemini SDK integration. This approach not only improves code organization but also enhances scalability and maintainability.

## Features

- **AI-Powered Chatbot**: Provides a simple and intuitive interface for interacting with a conversational AI using the Gemini SDK.
- **Modular Design**: The integration of the Gemini SDK is modularized within a local SPM package, allowing for better separation of concerns and easier management of dependencies.
- **SwiftUI Interface**: The entire UI is built using SwiftUI, ensuring a modern and responsive user experience that is easy to customize and extend.

## Project Structure

The project is organized into two main components:

### 1. **Main Application (`GoogleGeminiSwift`)**
   - **GeminiView**: The core SwiftUI view responsible for rendering the chatbot interface. It manages user inputs and displays AI-generated responses in real-time.
   - **ViewModel**: Handles the business logic, managing the state and communication with the Gemini SDK.
   - **Configuration**: The `Info.plist` file stores essential configuration data, such as the API key for the Gemini SDK.

### 2. **Local SPM Package (`GeminiPackage`)**
   - **Purpose**: Encapsulates all the code related to the Gemini SDK, enabling a modular architecture.
   - **Advantages**: Promotes clean code practices by isolating third-party dependencies, making the project more maintainable and easier to test.

## Getting Started

### Prerequisites
- **Xcode**: Ensure you have Xcode 14 or later installed.
- **Swift Package Manager (SPM)**: The project leverages SPM for managing the local package.

### Installation and Setup

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Gurungboi/GoogleGeminiSwift.git
   cd GoogleGeminiSwift
   ```

2. **API Key Configuration:**
   - Open the project in Xcode.
   - Navigate to the `Info.plist` file.
   - Add your Gemini API key under the `API_KEY` entry.

3. **Build and Run:**
   - Choose your desired simulator or device.
   - Click on the `Run` button in Xcode to build and launch the app.

### Usage

- **Interacting with the Chatbot:**
  - Type your message into the provided text field.
  - Click the send button (depicted as a paper plane) to interact with the AI.
  - The response generated by the Gemini SDK will appear in the chat window.

## Future Enhancements

- **Error Handling**: Implement more sophisticated error handling mechanisms to improve user experience.
- **Extended AI Capabilities**: Explore adding support for more advanced AI models or features within the Gemini SDK.
- **UI/UX Refinements**: Continuously improve the interface to make the chatbot more engaging and user-friendly.

## Contributing

Contributions are highly encouraged! If you'd like to contribute, please fork the repository, make your changes, and submit a pull request. Any form of contribution, from bug fixes to new features, is greatly appreciated.

## License

This project is licensed under the MIT License. For more details, please refer to the [LICENSE](LICENSE) file.

## Acknowledgements

- **Gemini SDK**: Special thanks to the Gemini SDK team for providing a powerful API that made this project possible.
- **Inspiration**: This project was inspired by the conversational capabilities seen in OpenAI's products.

---

This `README.md` is now more polished and closely follows the conventions commonly used in GitHub repositories. It provides clear instructions, an organized overview, and encourages contributions, making it easier for others to understand and engage with your project.
