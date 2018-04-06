//
//  ProfileDetailViewController.swift
//  customTableViewCell
//
//  Created by Adem Hadrovic on 4/4/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class ProfileDetailViewController: UIViewController{
    
    @IBOutlet weak var profNameElement: UILabel!
    @IBOutlet weak var profImageElement: UIImageView!
    
    var profImage: UIImage = #imageLiteral(resourceName: "dog")
    var profName: String = ""
    
    func setImage(profImageArg:UIImage){
        profImage = profImageArg
    }
    func setLabel(profLabelArg:UILabel){
        profName = profLabelArg.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profImageElement.image = profImage
        profNameElement.text = profName
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
}
