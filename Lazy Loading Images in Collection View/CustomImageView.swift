//
//  CustomImageView.swift
//  Lazy Loading Images in Collection View
//
//  Created by K Praveen Kumar on 03/02/22.
//

import UIKit

class CustomImageView: UIImageView{
    
    var task: URLSessionDataTask!
    var imageCache = NSCache<AnyObject, AnyObject>()
    
    func loadImage(url: URL){
        // If the internet speed is slow the dequeue reusable cell will duplicate the images
        // Solution👇🏻 : to make the image nil all the time
        image = nil
        
        // to cancel multiple tasks in the background
        if let task = task{
            task.cancel()
        }
        
        //get the image from cache for faster loading
        if let imageFromCache = imageCache.object(forKey: url.absoluteString as AnyObject) as? UIImage{
            self.image = imageFromCache
            return
        }
        
        task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, let newImage = UIImage(data: data) else{
                print("couldn't load image from url : \(url)")
                return
            }
            
            self.imageCache.setObject(newImage, forKey: url.absoluteString as AnyObject)
            
            DispatchQueue.main.async {
                // we have assigned the image of UIImageView class to new image
                self.image = newImage
            }
            
        }
        task.resume()
    }
}
