//
//  NotesViewController.swift
//  Notepad_MVC
//
//  Created by SaiKiran Panuganti on 22/07/21.
//

import UIKit

class NotesViewController: UIViewController {
    @IBOutlet weak var notesViewOutlet : NotesView!
    var notesModel : NotesModel = NotesModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notesViewOutlet.setUpUI()
        
    }

}
