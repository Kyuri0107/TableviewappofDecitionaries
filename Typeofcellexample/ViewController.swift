//
//  ViewController.swift
//  Typeofcellexample
//
//  Created by COE-009 on 20/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let StudentDetails = [
        
        ["Name":"kajal","Grade":"A"],
        ["Name":"priya","Grade":"A+"],
        ["Name":"heer","Grade":"A++"],
        ["Name":"tanvi","Grade":"A"],
        ["Name":"hina","Grade":"B"]
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let details = StudentDetails[indexPath.row]
        
    cell.textLabel?.text = details["Name"]
    cell.detailTextLabel?.text = details["Grade"]
    return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

