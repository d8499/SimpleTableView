//
//  ViewController.swift
//  simpleTableView
//
//  Created by COE-028 on 19/09/19.
//  Copyright © 2019 COE-028. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate{
    let cellidentifier = "mycell"
    let ImageArray  = ["Background","Background (1)","Background (2)"] 
    
    @IBOutlet weak var imgView: UIImageView!
    var techNames = ["ios","Andriod","ASP.Net","PHP","JAVA"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ImageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath)
        cell.textLabel?.text = ImageArray[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        imgView.image = UIImage(named:ImageArray[indexPath.row])
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

