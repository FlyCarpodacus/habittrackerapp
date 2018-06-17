//
//  ViewController.swift
//  habittracker
//
//  Created by Joseph Jackson on 17/06/2018.
//  Copyright © 2018 YoheffYohansen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var habits = ["Cook", "Exercise", "Writing"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.backgroundColor = UIColor.blue
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Show AddHabitViewController" {
            
            let addHabitViewController = segue.destination as! AddHabitViewController
            
            addHabitViewController.delegate = self
        }
    }
}

extension ViewController: AddHabitViewControllerDelegate {
    
    func addedNewHabit(name: String) {
        
        habits.append(name)
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_2", for: indexPath) as! HabitTableViewCell
        
        cell.title.text = habits[indexPath.row]
        
        return cell
    }
}
