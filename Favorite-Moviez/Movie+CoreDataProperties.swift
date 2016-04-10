//
//  Movie+CoreDataProperties.swift
//  Favorite-Moviez
//
//  Created by David Clare on 3/2/16.
//  Copyright © 2016 David Clare. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var movieDesc: String?
    @NSManaged var movieImg: NSData?
    @NSManaged var movieTitle: String?
    @NSManaged var movieUrl: String?
    @NSManaged var movieGenre: String?
    @NSManaged var movieYear: String?
    @NSManaged var movieRating: String?

}
