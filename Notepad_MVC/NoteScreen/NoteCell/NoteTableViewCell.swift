//
//  NoteTableViewCell.swift
//  Notepad_MVC
//
//  Created by SaiKiran Panuganti on 21/07/21.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    @IBOutlet weak var imageOutlet : UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageOutlet.tintColor = #colorLiteral(red: 0.9450980392, green: 0.2431372549, blue: 0.05098039216, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
