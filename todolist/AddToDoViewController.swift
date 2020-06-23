//
//  AddToDoViewController.swift
//  todolist
//
//  Created by Bailey Shelden on 6/23/20.
//  Copyright © 2020 Bailey Shelden. All rights reserved.
//

import UIKit

var previousVC = toDoTableViewController()

class AddToDoViewController: UIViewController {
//kk

  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var importantSwitch: UISwitch!

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func addTapped(_ sender: Any) {
    let toDo = ToDo()

         if let titleText = titleTextField.text {
           toDo.name = titleText
           toDo.important = importantSwitch.isOn
  }

}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddToDoViewController {
        addVC.previousVC = self
      }
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
