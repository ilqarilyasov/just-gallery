//
//  PaintingTableViewCell.swift
//  JustGallery
//
//  Created by Ilgar Ilyasov on 1/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting? {
        didSet { updateViews() }
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        delegate?.likeButtonTapped(on: self)
    }
    
    private func updateViews() {
        
        guard let painting = painting else { return }
        
        imgView.image = painting.image
        let text = painting.isLiked ? "Like" : "Unlike"
        likeButton.setTitle(text, for: .normal)
    }
}
