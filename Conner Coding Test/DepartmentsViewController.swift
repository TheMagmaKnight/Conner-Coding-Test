//
//  DepartmentsViewController.swift
//  Conner Coding Test
//
//  Created by Conner Donnelly on 7/27/22.
//

import UIKit

class DepartmentsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var departments:[Departments]?
    
    var backupDepartments:[Departments] = [Departments(depName:"CompSci",subjects:["iOS","C++","OOP","Assembly Language"],numberOfTeachers:10,numberOfPublicationsPerYr:20),Departments(depName:"AgSci",subjects:["Horsemanship","Cattle Biology","Farm Managment","Crop Care"],numberOfTeachers:10,numberOfPublicationsPerYr:10),Departments(depName:"English",subjects:["LGBT Lit","Marketing English","Roman Lit","Business English"],numberOfTeachers:15,numberOfPublicationsPerYr:36),Departments(depName:"Art",subjects:["Classical","Dark Ages","Modern","Post Modern"],numberOfTeachers:7,numberOfPublicationsPerYr:0)]

    override func viewDidLoad() {
        super.viewDidLoad()
        if departments == nil{
            departments = backupDepartments
            print("Unable to retreive API data, using backup Data instead")
        }
        //Check to see if data was able to be pulled from the API
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return departments?.count ?? backupDepartments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DepCell", for: indexPath) as! DepartmentsTableViewCell
        cell.depName.text = "Dep. Name: \(departments![indexPath.row].depName)"
        cell.subjects.text = "Subjects: \(departments![indexPath.row].subjects)"
        cell.numTeachers.text = "Number of Teachers: \(departments![indexPath.row].numberOfTeachers)"
        cell.numPublications.text = "Number of Publications/Yr \(departments![indexPath.row].numberOfPublicationsPerYr)"
        return cell
    }
    
}
