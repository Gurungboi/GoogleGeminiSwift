
//  Created by Sunil Gurung on 9/8/2024.
//

import Foundation

// MARK: - APIKeyManager

/// The `APIKeyManager` enum is responsible for fetching and managing the API key stored in the Info.plist file.
/// It provides a `default` property to access the API key and handles errors gracefully.
enum APIKeyManager {
    
    // MARK: - Errors
    
    /// `APIKeyError` defines possible errors that can occur while fetching the API key.
    enum APIKeyError: Error {
        case fileNotFound    // Thrown when the Info.plist file is not found in the bundle.
        case keyNotFound     // Thrown when the API_KEY is not found in the Info.plist.
        case invalidKey      // Thrown when the API_KEY is considered invalid (e.g., starts with an underscore).
    }
    
    // MARK: - Public Properties
    
    /// The `default` property provides the API key retrieved from the Info.plist.
    /// It handles any errors that occur during the fetch process and returns an empty string in case of failure.
    static var `default`: String {
        do {
            return try fetchAPIKey()
        } catch {
            assertionFailure("Error: \(error)")
            return ""
        }
    }
    
    // MARK: - Private Methods
    
    /// Fetches the API key from the Info.plist file.
    ///
    /// - Returns: The API key as a `String`.
    /// - Throws: An `APIKeyError` if the file is not found, the key is not present, or the key is invalid.
    private static func fetchAPIKey() throws -> String {
        let plistFileName = "Info"
        let apiKeyName = "API_KEY"
        
        guard let filePath = Bundle.main.path(forResource: plistFileName, ofType: "plist") else {
            throw APIKeyError.fileNotFound
        }
        
        guard let plist = NSDictionary(contentsOfFile: filePath) else {
            throw APIKeyError.fileNotFound
        }
        
        guard let value = plist.object(forKey: apiKeyName) as? String else {
            throw APIKeyError.keyNotFound
        }
        
        guard !value.starts(with: "_") else {
            throw APIKeyError.invalidKey
        }
        
        return value
    }
}
