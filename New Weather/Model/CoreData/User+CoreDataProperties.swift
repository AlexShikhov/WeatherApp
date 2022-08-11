//
//  User+CoreDataProperties.swift
//  New Weather
//
//  Created by Александр on 22.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

//    @NSManaged public var id: UUID?
    @NSManaged public var userName: String?
    @NSManaged public var password: String?

}
