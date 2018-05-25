//
//  ViewController.swift
//  Lecture7
//
//  Created by Slava Utyuzh on 25.05.2018.
//  Copyright © 2018 Slava Utyuzh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

 
    @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
//    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
//        print(#function)
//        return 2
//    }
    func numberOfSections(in tableView: UITableView) -> Int {
          print(#function)
        return 2
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       print(#function)
        if  section == 0 {
            return 3
        }
        
        return 2
    }
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   print(#function)
        // для отображение всех ячеек
        //     let cell = UITableViewCell()
        
        // для отображения в памяти только нескольких ячеек
 //       let cell = tableView.dequeueReusableCell(withIdentifier: "cellDetail", for: indexPath)
        var cell = tableView.dequeueReusableCell(withIdentifier: (indexPath.section == 0 ? "cellDetail" : "cell"), for: indexPath)
        
        if indexPath.section == 1 && indexPath.row == 1 {
            cell = tableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath)
        (cell as? SwichTableViewCell)?.switchValue.isOn = true
        }
        else if indexPath.section == 0 {
            cell.textLabel?.text = "Slava"
        cell.textLabel?.textColor = UIColor.blue
        cell.detailTextLabel?.text = "\(indexPath.row)"
        cell.imageView?.image = UIImage(named: "key")
        } else {
            cell.textLabel?.text = "Utyuzh"
            cell.backgroundColor = UIColor.cyan
        }
//        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell1.textLabel?.text = "Utyuzh"
//        cell1.backgroundColor = UIColor.gray
        return cell
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

