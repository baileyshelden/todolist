//
//  toDoTableViewController.swift
//  todolist
//
//  Created by Bailey Shelden on 6/22/20.
//  Copyright © 2020 Bailey Shelden. All rights reserved.
//

import UIKit

class toDoTableViewController: UITableViewController {

    
    var ToDos: [ToDo] = []
    
   func createToDos() -> [ToDo] {

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ToDos = createToDos()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ToDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let toDo = ToDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        }
        else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
