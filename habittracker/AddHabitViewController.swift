//
//  AddHabitViewController.swift
//  habittracker
//
//  Created by Joseph Jackson on 17/06/2018.
//  Copyright © 2018 YoheffYohansen. All rights reserved.
//

import UIKit

protocol AddHabitViewControllerDelegate: class {
    
    func addedNewHabit(name: String)
}

class AddHabitViewController: UIViewController {

    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var habitNameField: UITextField!
    
    weak var delegate: AddHabitViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.green
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        habitNameField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        
        if let text = habitNameField.text {
            
            if text != "" {
                
                delegate?.addedNewHabit(name: text)
                navigationController?.popViewController(animated: true)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
