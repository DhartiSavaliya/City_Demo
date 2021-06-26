//
//  ViewController.swift
//  City_Demo
//
//  Created by Dharti Savaliya on 6/25/21.
//

import UIKit

class ViewController: UIViewController, MyDataSendingDelegateProtocol {
    
    var myScData = [school]()
    let schoolRepo = SchoolRepo()
    
    @IBOutlet weak var tableView: UITableView!
   
  //MARK : ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationItem.title = "School Information"
        navigationItem.backButtonTitle = ""

        schoolRepo.delegate = self
        schoolRepo.getSchooldata()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
   
  //getData method
    func sendDataToFirstViewController(myData: [school]) {
        print(myData.count)
        myScData = myData
        
        DispatchQueue.main.async {
               self.tableView.reloadData()
            }
    }
    
}

//TableView Methods
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if myScData[indexPath.row].school_email != ""{
        return 150
        }else {
        return 130
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // print(myScData.count)
        return myScData.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
                let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        
                cell.lblSchoolName.text = myScData[indexPath.row].school_name
                cell.lblCity.text = myScData[indexPath.row].city
                cell.lblZip.text = myScData[indexPath.row].zip
                cell.lblEmail.text = myScData[indexPath.row].school_email
                cell.lblWebsite.text = myScData[indexPath.row].website
                cell.lblPhone.text = myScData[indexPath.row].phone_number
                
        
        return cell
          
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = myScData[indexPath.row]

                let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
        vc.schoolDetail = selectedRow
        self.navigationController?.pushViewController(vc, animated: true)
       
          
    }
    
    
}
