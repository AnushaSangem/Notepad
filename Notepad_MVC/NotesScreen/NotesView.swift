//
//  NotesView.swift
//  Notepad_MVC
//
//  Created by SaiKiran Panuganti on 22/07/21.
//

import Foundation
import UIKit
class NotesView : UIView {
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var addView : UIView!
    
    func setUpUI() {
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .black
        addView.layer.cornerRadius = 30
    }
    
    @IBAction func editTapped() {
        
    }
    
    @IBAction func backTapped() {
        print("BackTapped")
    }
    
    @IBAction func plusTapped() {}
    
}

extension NotesView : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
}
