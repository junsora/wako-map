//
//  MapViewController.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/09.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit
import MapKit
import RxSwift
import RxCocoa

class MapViewController: UIViewController {
    
    var presenter: MapPresentation!
    let disposeBag = DisposeBag()
    @IBOutlet var mapView: MKMapView!
    
    var mapContents: [MapContents] = [] {
        didSet {
            addAnnotations()
        }
    }
    
    override func viewDidLoad() {
        presenter.viewDidLoad()
        mapView.showsUserLocation = true
        mapView.delegate = self
        mapView.mapType = MKMapType.mutedStandard
        
        var lc: CLLocationCoordinate2D
        if isNearWako(coordinate: mapView.centerCoordinate) {
           // near wakoshi
            lc = mapView.centerCoordinate
        } else {
            // not near wakoshi
            lc = CLLocationCoordinate2DMake(Constants.wakoStationLatitude, Constants.wakoStationLongitude)
        }
        
        mapView.setRegion(MKCoordinateRegion(center: lc, latitudinalMeters: Constants.initCoordinateReginMeter, longitudinalMeters: Constants.initCoordinateReginMeter), animated: true)
        
    }
    
    fileprivate func isNearWako(coordinate: CLLocationCoordinate2D) -> Bool {
        return false
    }
    
    fileprivate func initAnnotations() {
        mapView.removeAnnotations(mapView!.annotations)
    }
    
    fileprivate func addAnnotations() {
        
        for contents in self.mapContents {
            
            var annotation: MKPointAnnotation
            
            if contents.typeId == ContentsTypeId.restaurant {
                annotation = RestaurantAnnotation(id: contents.id)
            } else if contents.typeId == ContentsTypeId.touristSpot {
                annotation = TouristSpotAnnotation(id: contents.id)
            } else if contents.typeId == ContentsTypeId.facility {
                annotation = FacilityAnnotation(id: contents.id)
            } else {
                annotation = ShoppingAnnotation(id: contents.id)
            }
            annotation.title = contents.title
            annotation.coordinate = CLLocationCoordinate2D(latitude: contents.latitude, longitude: contents.longitude)
            mapView.addAnnotation(annotation)
        }
    }
}

extension MapViewController: MapView {
    
    func showContens(_ mapContents: [MapContents]) {
        self.mapContents = mapContents
    }
    
    func presentNetworkErrorAlert() {
        //
    }
    
    func showActivityIndicator() {
        //
    }
    
    func hideActivityIndicator() {
        //
    }
}

extension MapViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        
        let annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier, for: annotation)
        
        guard let markerAnnotationView = annotationView as? MKMarkerAnnotationView,
            let wakoAnnotation = annotation as? AnnotationBaseModel else { return annotationView }

        markerAnnotationView.clusteringIdentifier = wakoAnnotation.clusteringIdentifier
        markerAnnotationView.glyphImage = wakoAnnotation.glyphImage
        markerAnnotationView.markerTintColor = wakoAnnotation.markerTintColor
        markerAnnotationView.tag = wakoAnnotation.id
        markerAnnotationView.displayPriority = wakoAnnotation.displayPriority
        
        return markerAnnotationView
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let tapGesture = AnnotationTapGestureRecognizer()
        
        tapGesture.id = view.tag
        
        tapGesture.rx.event.bind(onNext: { recognizer in
            self.presenter.didSelectContents(recognizer.id ?? 0)
        }).disposed(by: disposeBag)
        
        view.addGestureRecognizer(tapGesture)
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        for gesture in view.gestureRecognizers ?? [] {
            if gesture is AnnotationTapGestureRecognizer {
                view.removeGestureRecognizer(gesture)
            }
        }
    }
}
