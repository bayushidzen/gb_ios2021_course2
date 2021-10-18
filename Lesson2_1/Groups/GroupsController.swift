//
//  GroupsController.swift
//  Lesson2_1
//
//  Created by Dzen on 18.10.2021.
//

import UIKit

class GroupsController: UITableViewController{

    var groups = ["Cats", "Dogs", "Cars", "Fishing", "Games"]

    override func viewDidLoad() {
    super.viewDidLoad()
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // Получаем ячейку из пула
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as! GroupsCell
            // Получаем имя друга для конкретной строки
            let group = groups[indexPath.row]
            
            // Устанавливаем имя друга в надпись ячейки
        cell.GroupName.text = group
        cell.GroupLogo = UIImage(named: group)

            return cell
        }

}
