//
//  ViewController.swift
//  customTableViewCell
//
//  Created by Adem Hadrovic on 3/31/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        cell.animalLbl.text = elements[indexPath.row]
        cell.animalImage.image = UIImage(named: elements[indexPath.row])
        cell.animalImage.layer.cornerRadius = cell.animalImage.frame.height / 2
    cell.cellView.viewWithTag(3)?.layer.cornerRadius = cell.cellView.frame.height / 2
        
        return cell
    
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    let elements = ["cat", "dog","horse","potato"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self;
        tableView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var timer: Timer!
    @IBOutlet weak var buttonDisplay: UIButton!
    
    @objc  func toggleCells() {
        for cell in tableView.visibleCells{
            if cell.isHidden{
                cell.isHidden = false
        
                timer.invalidate()
            }
            else{
                cell.isHidden = true
                
                timer.invalidate()
            }
            
        }
    }
    
    @IBAction func hideTable(_ sender: UIButton) {
        
        
            timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(toggleCells), userInfo: nil, repeats: true)
        
        
    }
    
  
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cell = (sender as AnyObject).superview.unsafelyUnwrapped
        
        let animal = cell.viewWithTag(1) as! UIImageView
        let label = cell.viewWithTag(2) as!
        UILabel
        
        
        let controller = segue.destination as? ProfileDetailViewController
            
            //need to get the currently clicked cell. here it just uses Cat...
        
    
        controller?.profImage = animal.image!
        controller?.profName = label.text!
        
        
    }
 
    
    
}

