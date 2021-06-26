//
//  MyApiCalss.swift
//  City_Demo
//
//  Created by Dharti Savaliya on 6/25/21.
//
protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: [school])
}


import Foundation
class SchoolRepo {
    
    var delegate: MyDataSendingDelegateProtocol? = nil
   
  
        let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
    
        //MARK : - Function for get the data from http request using URLSession
         func getSchooldata()  {
             
                 URLSession.shared.dataTask(with: url!) { [weak self] (data, response, error) in
                         do {
                             if (error == nil) {
                               
                                let json = try JSONDecoder().decode([school].self, from: data!)
                                 
                                 var schArr = [school]()
                                 
                                 for det in json {
                                    schArr.append(det)
                                     }
    
                                self!.delegate?.sendDataToFirstViewController(myData: schArr)
                             
                             }
                         } catch {
                             print("Error In Json Data")
                         }
                     }.resume()
             
    }
        
        
        

}
     
  
    

