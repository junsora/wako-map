//
//  FacilityAnnotations.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/28.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import Foundation
import MapKit

class FacilityAnnotation: MKPointAnnotation, AnnotationBaseModel {
    
    var id: Int
    
    var clusteringIdentifier = "Facility"
    // イメージ
    var glyphImage: UIImage = R.image.facility() ?? UIImage()
    // カラー
    var markerTintColor: UIColor = UIColor.green
    
    var displayPriority: MKFeatureDisplayPriority = MKFeatureDisplayPriority.required
    
    init(id: Int) {
        self.id = id
        super.init()
    }
}
