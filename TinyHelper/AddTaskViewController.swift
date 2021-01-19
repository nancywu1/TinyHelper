//
//  AddTaskViewController.swift
//  TinyHelper
//
//  Created by Nancy Wu on 2021-01-18.
//  Copyright © 2021 Nancy Wu. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var taskTypeTextField: UITextField!
    
    var pickerView = UIPickerView()
    let taskTypes = ["Homework", "Chore", "Personal"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        
        taskTypeTextField.inputView = pickerView
        taskTypeTextField.textAlignment = .center

        // Do any additional setup after loading the view.
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddTaskViewController: UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return taskTypes.count
    }
    
}

extension AddTaskViewController: UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return taskTypes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.taskTypeTextField.text = taskTypes[row]
        self.taskTypeTextField.resignFirstResponder()
    }
    
}
