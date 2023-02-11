//
//  DetailViewController.swift
//  collectionViewAndDatapassing
//
//  Created by Mac on 08/02/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailImgView: UIImageView!
    
    var strLabel: String?
    var imgView1: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailLabel.text = strLabel
        detailImgView.image = imgView1
    }
    


}
