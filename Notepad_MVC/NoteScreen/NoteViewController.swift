//
//  NoteViewController.swift
//  Notepad_MVC
//
//  Created by SaiKiran Panuganti on 21/07/21.
//

import UIKit

class NoteViewController: UIViewController {
    @IBOutlet weak var noteView : NoteView!
    var noteModel : NoteModel = NoteModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteView.setUpUI()
    
    }

}
