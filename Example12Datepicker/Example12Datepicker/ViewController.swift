//
//  ViewController.swift
//  Example12Datepicker
//
//  Created by CEPL on 10/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTf: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }

    func createToolBar() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        
        return toolbar
    }

    func createDatePicker() {
        datePicker.preferredDatePickerStyle = .inline
        datePicker.datePickerMode = .date
        dateTf.inputView = datePicker
        dateTf.inputAccessoryView = createToolBar()
    }
    
    @objc func donePressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        self.dateTf.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
}

