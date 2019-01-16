//
//  PaintingViewController.swift
//  JustGallery
//
//  Created by Ilgar Ilyasov on 1/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    let paintingController = PaintingController()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 320
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "artCell", for: indexPath)
        guard let unwrappedCell = cell as? PaintingTableViewCell else { return cell }
        
        
        let painting = paintingController.paintings[indexPath.row]
        unwrappedCell.painting = painting
        unwrappedCell.delegate = self
        
        return unwrappedCell
    }
    
    func likeButtonTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        paintingController.toggleIsLike(on: indexPath.row)
        tableView.reloadRows(at: [indexPath], with: .none)
    }
}
