//
//  Movie.swift
//  Favorite-Moviez
//
//  Created by David Clare on 3/2/16.
//  Copyright © 2016 David Clare. All rights reserved.
//


import Foundation
import CoreData
import UIKit

class Movie: NSManagedObject {
    
    // Insert code here to add functionality to your managed object subclass
    func setMovieImage(img: UIImage!) {
        let data = UIImagePNGRepresentation(img)
        self.movieImg = data
    }
    
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.movieImg!)!
        return img
    }
}
