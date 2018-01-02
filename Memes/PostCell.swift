//
//  PostCell.swift
//  Memes
//
//  Created by Odysseas Herodotou on 02/01/2018.
//  Copyright © 2018 Odysseas Herodotou. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likesLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }





    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
