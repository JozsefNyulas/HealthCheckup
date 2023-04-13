//
//  User.swift
//  HealthCheckup
//
//  Created by Nyulas Jozsef on 26.03.2023.
//

import Foundation
import nanopb

public struct User
{
    static var shared = User()
    var fullName: String
    var heartResult: String = ""
    var bmiResult: String = ""
    var hearingResult: String = ""
    var eyeResult: String = ""
    
    init(fullName: String = "")
    {
        self.fullName = fullName
    }
    
    
    
}
