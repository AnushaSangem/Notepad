//
//  NoteView.swift
//  Notepad_MVC
//
//  Created by SaiKiran Panuganti on 21/07/21.
//

import Foundation
import UIKit
class NoteView : UIView {
    @IBOutlet weak var searchView : UIView!
    @IBOutlet weak var textFieldOutlet : UITextField!
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var addView : UIView!
    
    func setUpUI() {
        searchView.layer.cornerRadius = 10
        textFieldOutlet.textColor = .white
        textFieldOutlet.attributedPlaceholder = NSAttributedString(string: "Search",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        tableView.register(UINib(nibName: "NoteTableViewCell", bundle: nil), forCellReuseIdentifier: "NoteTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.black
        addView.layer.cornerRadius = 30
        
    }
    
    @IBAction func editTapped() {
        
    }
    
    @IBAction func addFolderTapped() {
        
    }
    
    @IBAction func plusTapped() {
        print("Add tapped")
    }
    
    
}

extension NoteView : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteTableViewCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EntryViewController")
    }
}
