//
//  School_Model.swift
//  City_Demo
//
//  Created by Dharti Savaliya on 6/25/21.
//

import Foundation

struct school : Decodable { 
    
    var school_name : String?
    var overview_paragraph : String?
    var school_email :  String?
    var website : String?
    var extracurricular_activities : String?
    var city : String?
    var zip : String?
    var phone_number : String?
    
    
    init?(dictionary : [String : Any]){
        guard let school_name = dictionary["school_name"],
        let overview_paragraph = dictionary["overview_paragraph"],
        let school_email = dictionary["school_email"],
        let website = dictionary["website"],
        let extracurricular_activities = dictionary["extracurricular_activities"],
        let city = dictionary["city"],
        let zip = dictionary["zip"],
        let phone_number = dictionary["phone_number"]
        else {
                       
    return nil
    }
        
        self.school_name = school_name as? String
        self.overview_paragraph = overview_paragraph as? String
        self.school_email = school_email as? String
        self.website = website as? String
        self.extracurricular_activities = extracurricular_activities as? String
        self.city = city as? String
        self.zip = zip as? String
        self.phone_number = phone_number as? String
    }
    
    
}
