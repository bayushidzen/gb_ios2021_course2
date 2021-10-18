//
//  FriendsController.swift
//  Lesson2_1
//
//  Created by Dzen on 17.10.2021.
//

import UIKit

class FriendsController: UITableViewController{

    var friends = ["Vasya", "Petya", "Nikolay", "Fedor"]

    override func viewDidLoad() {
    super.viewDidLoad()
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // Получаем ячейку из пула
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as! FriendsCell
            // Получаем имя друга для конкретной строки
            let friend = friends[indexPath.row]
            
            // Устанавливаем имя друга в надпись ячейки
        cell.FriendName.text = friend
        cell.FriendsAvatar = UIImage(named: friend)

            return cell
        }

}
