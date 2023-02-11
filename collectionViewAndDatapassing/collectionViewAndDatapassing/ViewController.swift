//
//  ViewController.swift
//  collectionViewAndDatapassing
//
//  Created by Mac on 08/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    
    var labelArray: [String] = ["image1","img2","img3","img4","img5","img6","img8","img9","img10","img11","img13","img14","img15","img16","img18","img19","img20","mg12"]
    
    var imgArray = [UIImage(named: "image1.jpeg"),UIImage(named: "img2.jpeg"),UIImage(named: "img3.jpeg"),UIImage(named: "img4.jpeg"),
                    UIImage(named: "img5.jpeg"),UIImage(named: "img6.jpeg"),UIImage(named: "img8.jpeg"),UIImage(named: "img9.jpeg"),
                    UIImage(named: "img10.jpeg"),UIImage(named: "img11.jpeg"),UIImage(named: "img13.jpeg"),UIImage(named: "img14.jpeg"),
                    UIImage(named: "img15.jpeg"),UIImage(named: "img16.jpeg"),UIImage(named: "img18.jpeg"),UIImage(named: "img19.jpeg"),
                    UIImage(named: "img20.jpeg"),UIImage(named: "mg12.jpeg")]
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labelArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.imgView.image = imgArray[indexPath.row]
        cell.label.text = labelArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
        detailVC.strLabel = labelArray[indexPath.row]
        detailVC.imgView1 = imgArray[indexPath.row]
    }
}

