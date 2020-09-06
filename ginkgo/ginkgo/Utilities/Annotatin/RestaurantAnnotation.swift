//
//  RestaurantAnnotation.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/28.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import Foundation
import MapKit

class RestaurantAnnotation: MKPointAnnotation, AnnotationBaseModel {

    var id: Int
    
    var clusteringIdentifier = "Restaurant"
    
    var glyphImage = R.image.restaurant() ?? UIImage()
    
    var markerTintColor = UIColor.orange
    
    var displayPriority: MKFeatureDisplayPriority = MKFeatureDisplayPriority.defaultHigh
    
    init(id: Int) {
        self.id = id
        super.init()
    }
}
