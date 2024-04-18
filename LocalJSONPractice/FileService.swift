//
//  FileService.swift
//  LocalJSONPractice
//
//  Created by Zoe Cutler on 4/18/24.
//

import Foundation

class FileService {
    /// Gets data from a file in your Xcode project directory
    ///
    /// - Parameters:
    ///   - fileName: The name of the file, without the extension
    ///   - extension: The file extension, i.e.: "json"
    /// - Returns: Data from the file
    /// - Throws: Errors if the file cannot be read
    static func data(from fileName: String, extension: String) throws -> Data {
        guard let path = Bundle.main.path(forResource: fileName, ofType: `extension`) else {
            throw LoadingError.fileNotFound
        }
        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
        return data
    }
    
    enum LoadingError: Error {
        case fileNotFound
    }
}
