//
//  DetailsVC.swift
//  Favorite-Moviez
//
//  Created by David Clare on 3/2/16.
//  Copyright © 2016 David Clare. All rights reserved.
//

import UIKit
import CoreData

class DetailsVC: UIViewController {

    var movie:Movie?
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var yearLbl: UILabel!
    @IBOutlet weak var ratingsLbl: UILabel!
    @IBOutlet weak var descLbl: UITextView!
    
    @IBOutlet weak var movieImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleLbl.text  = movie?.movieTitle
        self.descLbl.text = movie?.movieDesc
        self.movieImg.image = movie?.getMovieImage()
        self.yearLbl.text = movie?.movieYear
        self.ratingsLbl.text = movie?.movieRating
        
        
    }
    
    @IBAction func urlButtonPressed(sender: AnyObject!) {
        print(movie?.movieUrl)
        let url = NSURL(string: (movie?.movieUrl)!)!
        UIApplication.sharedApplication().openURL(url)
        
    }

}
