//
//  MovieCell.swift
//  Favorite-Moviez
//
//  Created by David Clare on 3/2/16.
//  Copyright © 2016 David Clare. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
 
    @IBOutlet weak var movieImg: UIImageView!
    
    @IBOutlet weak var movieDesc: UITextView!
    
    @IBOutlet weak var movieYear: UILabel!
    
    @IBOutlet weak var movieRating: UILabel!
    
    @IBOutlet weak var movieTitle: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        // movieImage.layer.cornerRadius = 4.0
        // movieImage.clipsToBounds = true
        
    }
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.movieTitle
        movieDesc.text = movie.movieDesc
        movieRating.text = movie.movieRating
        //movieLink.text = movie.movieUrl
        movieImg.image = movie.getMovieImage()
        movieYear.text = movie.movieYear
       // movieImage.clipsToBounds = true
    }

    
    
    
}
