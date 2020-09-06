//
//  AnnotationBaseModel.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/28.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import Foundation
import MapKit

protocol AnnotationBaseModel: class {
    
    var id: Int { get set }
    
    var clusteringIdentifier: String { get set }
    // イメージ
    var glyphImage: UIImage { get set }
    // カラー
    var markerTintColor: UIColor { get set }
    
    var displayPriority: MKFeatureDisplayPriority { get set }
}
