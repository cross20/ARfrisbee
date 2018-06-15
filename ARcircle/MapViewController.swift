//
//  MapViewController.swift
//  ARcircle
//
//  Created by Chad Ross on 5/9/18.
//  Copyright © 2018 GunnarCross. All rights reserved.
//

import UIKit
import MapKit
import SceneKit
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var backButton: UIButton!
    
    let annotation1 = MKPointAnnotation()
    let annotation2 = MKPointAnnotation()
    let annotation3 = MKPointAnnotation()
    let annotation4 = MKPointAnnotation()
    let annotation5 = MKPointAnnotation()
    let annotation6 = MKPointAnnotation()
    let annotation7 = MKPointAnnotation()
    let annotation8 = MKPointAnnotation()
    let annotation9 = MKPointAnnotation()
    let annotation10 = MKPointAnnotation()
    let annotation11 = MKPointAnnotation()
    let annotation12 = MKPointAnnotation()
    let annotation13 = MKPointAnnotation()
    let annotation14 = MKPointAnnotation()
    let annotation15 = MKPointAnnotation()
    let annotation16 = MKPointAnnotation()
    let annotation17 = MKPointAnnotation()
    let annotation18 = MKPointAnnotation()
    let annotation19 = MKPointAnnotation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.layer.cornerRadius = 4
        
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 47.7540256, longitude: -117.4162068)
        mapView.addAnnotation(annotation1)
        
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 47.7544120, longitude: -117.4150444)
        mapView.addAnnotation(annotation2)
        
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 47.7538721, longitude: -117.4147910)
        mapView.addAnnotation(annotation3)
        
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 47.7531528, longitude: -117.4146890)
        mapView.addAnnotation(annotation4)
        
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 47.7527951, longitude: -117.4154729)
        mapView.addAnnotation(annotation5)
        
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 47.7530099, longitude: -117.4158132)
        mapView.addAnnotation(annotation6)
        
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 47.7530228, longitude: -117.4163976)
        mapView.addAnnotation(annotation7)
        
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 47.7526157, longitude: -117.4169787)
        mapView.addAnnotation(annotation8)
        
        annotation9.coordinate = CLLocationCoordinate2D(latitude: 47.7520140, longitude: -117.4176230)
        mapView.addAnnotation(annotation9)
        
        annotation10.coordinate = CLLocationCoordinate2D(latitude: 47.7523607, longitude: -117.4183345)
        mapView.addAnnotation(annotation10)
        
        annotation11.coordinate = CLLocationCoordinate2D(latitude: 47.7526152, longitude: -117.4189001)
        mapView.addAnnotation(annotation11)
        
        annotation12.coordinate = CLLocationCoordinate2D(latitude: 47.7530374, longitude: -117.4187190)
        mapView.addAnnotation(annotation12)
        
        annotation13.coordinate = CLLocationCoordinate2D(latitude: 47.7537022, longitude: -117.4187429)
        mapView.addAnnotation(annotation13)
        
        annotation14.coordinate = CLLocationCoordinate2D(latitude: 47.7531028, longitude: -117.4192601)
        mapView.addAnnotation(annotation14)
        
        annotation15.coordinate = CLLocationCoordinate2D(latitude: 47.7538009, longitude: -117.4195720)
        mapView.addAnnotation(annotation15)
        
        annotation16.coordinate = CLLocationCoordinate2D(latitude: 47.7544118, longitude: -117.4193886)
        mapView.addAnnotation(annotation16)
        
        annotation17.coordinate = CLLocationCoordinate2D(latitude: 47.7541753, longitude: -117.4190225)
        mapView.addAnnotation(annotation17)
        
        annotation18.coordinate = CLLocationCoordinate2D(latitude: 47.7546786, longitude: -117.4182091)
        mapView.addAnnotation(annotation18)
        
        annotation19.coordinate = CLLocationCoordinate2D(latitude: 47.7544598, longitude: -117.4176669)
        mapView.addAnnotation(annotation19)
        
        backButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Back tapped")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
