//
//  UserManager.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 27.03.2023.
//

import Foundation

class UserManager
{
    static var shared = UserManager()
    
    private var currentUser: User?
    
    var getOnlyUser: User? { return currentUser }
    
    private init() {}
    
    func getUser() -> User?
    {
        return currentUser
    }
    
    func updateCurrentUser(fullName: String = "")
    {
        currentUser = User(fullName: fullName)
    }
    
    func updateResults(heartResult: String? = nil, bmiResult: String? = nil, hearingResult: String? = nil, eyeResult: String? = nil)
    {
        if let heartResult = heartResult
        {
            currentUser?.heartResult = heartResult
        }
        
        if let bmiResult = bmiResult
        {
            currentUser?.bmiResult = bmiResult
        }
        
        if let hearingResult = hearingResult
        {
            currentUser?.hearingResult = hearingResult
        }
        
        if let eyeResult = eyeResult
        {
            currentUser?.eyeResult = eyeResult
        }
    }
}
