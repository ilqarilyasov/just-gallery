//
//  PaintingController.swift
//  JustGallery
//
//  Created by Ilgar Ilyasov on 1/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingController {
    
    init() {
        loadPaintingFromAssets()
    }
    
    private(set) var paintings: [Painting] = []
    
    func loadPaintingFromAssets() {
        for index in 1...12 {
            
            let imageName = "Image\(index)"
            guard let image = UIImage(named: imageName) else { return }
            let painting = Painting(image: image)
            paintings.append(painting)
            
        }
    }
    
    
    
}
