//
//  ViewController2.swift
//  Mi Media Naranja Me Mata
//
//  Created by javier  on 22/10/17.
//  Copyright © 2017 UPM. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var datePickerText: UITextField!

    let datePicker = UIDatePicker()
    var birthday : Date?


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createDatePicker()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "VC2" {

            if let ivc2 = segue.destination as? InfoViewController {

                ivc2.naranja = datePicker.date
                ivc2.birthday = birthday
            }
        }
    }
    
    func createDatePicker() {
        
        // formato
        datePicker.datePickerMode = .date
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar buttom item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: false)
        
        datePickerText.inputAccessoryView = toolbar
        
        // asignar texto
        datePickerText.inputView = datePicker
    }
    
    @objc func donePressed() {
        
        //formato
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        datePickerText.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
}
