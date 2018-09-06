//
//  PostTableViewCell.swift
//  whyiOS
//
//  Created by Cody on 9/5/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import UIKit

protocol PostTableViewCellDelegate: class{
    func updateView()
}

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var reasonTextLabel: UILabel!
    @IBOutlet weak var cohortTextLabel: UILabel!
    
    var post: Post?{
        didSet{
            updateView()
        }
    }
    
    weak var delegate: PostTableViewCellDelegate?
    
    func updateView(){
        guard let post = post else {return}
        nameTextLabel.text = post.name
        reasonTextLabel.text = post.reason
        cohortTextLabel.text = post.cohort
        delegate?.updateView()
    }
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
