//
//  InfoViewController.swift
//  Mi Media Naranja Me Mata
//
//  Created by javier  on 22/10/17.
//  Copyright © 2017 UPM. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var deathDay: UILabel!
    var naranja: Date?
    
    var birthday : Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        if let t = naranja?.timeIntervalSince(birthday!){
            if(t>0){
            let m = naranja?.addingTimeInterval(t)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        deathDay.text = dateFormatter.string(from: m!)
                
            }else{
                deathDay.text = "error"
            }
        }
    }
    
}
