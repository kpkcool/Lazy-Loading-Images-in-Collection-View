//
//  ViewController.swift
//  Lazy Loading Images in Collection View
//
//  Created by K Praveen Kumar on 03/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        imageArray = [
            "https://bit.ly/3pu2yID",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWaR1Lzlj4K8vhRWsAr0VTDF9xxwgQCb8Giq6iAkD3_oxVnp6U1xhVJv_IjA-XLI63EYw&usqp=CAU",
            "https://media.istockphoto.com/photos/columbia-river-and-vantage-bridge-i90wa-picture-id812201952?b=1&k=20&m=812201952&s=170667a&w=0&h=e0GscvlwkbQWs_4Rz3W1T6Wd4gzUx9HlOeG0x9-TF6o=",
            "https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",
            "https://bit.ly/32SDcMG",
            "https://bit.ly/3ps6bP3",
            "https://bit.ly/3otiBqU",
            "https://bit.ly/3ImWMkq",
            "https://bit.ly/3pu2yID",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWaR1Lzlj4K8vhRWsAr0VTDF9xxwgQCb8Giq6iAkD3_oxVnp6U1xhVJv_IjA-XLI63EYw&usqp=CAU",
            "https://media.istockphoto.com/photos/columbia-river-and-vantage-bridge-i90wa-picture-id812201952?b=1&k=20&m=812201952&s=170667a&w=0&h=e0GscvlwkbQWs_4Rz3W1T6Wd4gzUx9HlOeG0x9-TF6o=",
            "https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",
            "https://bit.ly/32SDcMG",
            "https://bit.ly/3ps6bP3",
            "https://bit.ly/3otiBqU",
            "https://bit.ly/3ImWMkq",
            "https://bit.ly/3pu2yID",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWaR1Lzlj4K8vhRWsAr0VTDF9xxwgQCb8Giq6iAkD3_oxVnp6U1xhVJv_IjA-XLI63EYw&usqp=CAU",
            "https://media.istockphoto.com/photos/columbia-river-and-vantage-bridge-i90wa-picture-id812201952?b=1&k=20&m=812201952&s=170667a&w=0&h=e0GscvlwkbQWs_4Rz3W1T6Wd4gzUx9HlOeG0x9-TF6o=",
            "https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",
            "https://bit.ly/32SDcMG",
            "https://bit.ly/3ps6bP3",
            "https://bit.ly/3otiBqU",
            "https://bit.ly/3ImWMkq",
            "https://bit.ly/3pu2yID",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWaR1Lzlj4K8vhRWsAr0VTDF9xxwgQCb8Giq6iAkD3_oxVnp6U1xhVJv_IjA-XLI63EYw&usqp=CAU",
            "https://media.istockphoto.com/photos/columbia-river-and-vantage-bridge-i90wa-picture-id812201952?b=1&k=20&m=812201952&s=170667a&w=0&h=e0GscvlwkbQWs_4Rz3W1T6Wd4gzUx9HlOeG0x9-TF6o=",
            "https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",
            "https://bit.ly/32SDcMG",
            "https://bit.ly/3ps6bP3",
            "https://bit.ly/3otiBqU",
            "https://bit.ly/3ImWMkq"
        ]
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else{
            return UICollectionViewCell()
        }
        if let url = URL(string: imageArray[indexPath.row]){
            cell.myImageView.loadImage(url: url)
        }
        
        return cell
    }
}

//extension ViewController: UICollectionViewDelegateFlowLayout{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize( width: collectionView.frame.size.width/2, height: collectionView.frame.size.height/4)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        0
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        0
//    }
//}

