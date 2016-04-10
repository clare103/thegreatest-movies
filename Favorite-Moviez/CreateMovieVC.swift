//
//  CreateMovieVC.swift
//  Favorite-Moviez
//
//  Created by David Clare on 2/29/16.
//  Copyright © 2016 David Clare. All rights reserved.
//

import UIKit
import CoreData

class CreateMovieVC: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var movieTitle: UITextField!
    
    @IBOutlet weak var movieYear: UITextField!
    
    @IBOutlet weak var movieRating: UITextField!
    
    @IBOutlet weak var movieGenre: UITextField!
    
    @IBOutlet weak var movieDesc: UITextView!
    
    @IBOutlet weak var movieImg: UIImageView!
    
    var imagePicker: UIImagePickerController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard:"))
        view.addGestureRecognizer(tapGesture)
        
        
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func createMovie(sender: AnyObject!) {
        if let title = movieTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            // Grap movie fields from Movie class and set to values inserted by the user
            movie.movieTitle = movieTitle.text
            movie.movieDesc = movieDesc.text
            movie.movieGenre = movieGenre.text
           // movie.movieUrl = movieUrl.text
            movie.setMovieImage(movieImg.image!)
            movie.movieYear = movieYear.text
            movie.movieRating = movieRating.text
            //
            
            // Save
            context.insertObject(movie)
            do {
                try context.save() // Move to perminant storage
            } catch {
                print("Could not save recipe")
            }
            self.navigationController?.popViewControllerAnimated(true)
        }
    }

    func dismissKeyboard(tapGesture: UITapGestureRecognizer)
    {
        movieTitle.resignFirstResponder()
        movieRating.resignFirstResponder()
        movieYear.resignFirstResponder()
        movieGenre.resignFirstResponder()
        movieDesc.resignFirstResponder()
    }

}
