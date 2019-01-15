//
//  PaintingTableViewCell.swift
//  JustGallery
//
//  Created by Ilgar Ilyasov on 1/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        print("Tapped") // ADD
    }
}
