//
//  AuthManager.swift
//  Spotify
//
//  Created by Amr El-Fiqi on 29/05/2024.
//

import Foundation


final class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
   
    private static let plistName = "Secrets"
    private static let clientIdKey = "CLIENT_ID"
    private static let clientSecretKey = "CLIENT_SECRET"
    
    static func getClientId() -> String? {
        guard let filePath = Bundle.main.path(forResource: plistName, ofType: "plist"),
              let plist = NSDictionary(contentsOfFile: filePath) else {
            return nil
        }
        return plist[clientIdKey] as? String
    }
    
    static func getClientSecret() -> String? {
        guard let filePath = Bundle.main.path(forResource: plistName, ofType: "plist"),
              let plist = NSDictionary(contentsOfFile: filePath) else {
            return nil
        }
        print(plist[clientIdKey] ?? "None")
        print(plist[clientSecretKey] ?? "None")
        return plist[clientSecretKey] as? String
    }
    

    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}

let clientID = AuthManager.getClientSecret()

