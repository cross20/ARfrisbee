//
//  ViewController.swift
//  ARcircle
//
//  Created by Chad Ross on 4/11/18.
//  Copyright © 2018 GunnarCross. All rights reserved.
//

import UIKit
import ARKit
import SceneKit
import ARCL
import CoreLocation

class ViewController: UIViewController {
    //Class of view controller must be "ViewController" to create IBOutlet
    var sceneLocationView = SceneLocationView()
    //let mapStoryboard = UIStoryboard(name: "Map", bundle: nil)
    
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var whiteView: UILabel!
    @IBOutlet weak var backColor: UIView!
    
    //let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        /*let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Map", for: .normal)*/
        mapButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        super.viewDidLoad()
        
        mapButton.layer.cornerRadius = 4
        
        sceneLocationView.run()
        
        //Code for DEMO course @ Whitworth
        //TO-DO: Reduce the number of lines that this code requires
        //TO-DO: Make this code more flexible so that it will work with different frisbee courses.
        
        //let robinson = CLLocationCoordinate2D(latitude: 47.7541636, longitude: -117.4170061) //Robinson
        let ej = CLLocationCoordinate2D(latitude: 47.7540256, longitude: -117.4162068) //Eric Johnston
        let bj = CLLocationCoordinate2D(latitude: 47.7544120, longitude: -117.4150444)
        let stewart = CLLocationCoordinate2D(latitude: 47.7538721, longitude: -117.4147910)
        let arend = CLLocationCoordinate2D(latitude: 47.7531528, longitude: -117.4146890)
        let recycle = CLLocationCoordinate2D(latitude: 47.7527951, longitude: -117.4154729)
        let HUB = CLLocationCoordinate2D(latitude: 47.7530099, longitude: -117.4158132)
        let Library = CLLocationCoordinate2D(latitude: 47.7530228, longitude: -117.4163976)
        let BellTower = CLLocationCoordinate2D(latitude: 47.7526157, longitude: -117.4169787)
        let Flag = CLLocationCoordinate2D(latitude: 47.7520140, longitude: -117.4176230)
        let Dixon = CLLocationCoordinate2D(latitude: 47.7523607, longitude: -117.4183345)
        let Warren = CLLocationCoordinate2D(latitude: 47.7526152, longitude: -117.4189001)
        let tempBench = CLLocationCoordinate2D(latitude: 47.7530374, longitude: -117.4187190)
        let tempTree = CLLocationCoordinate2D(latitude: 47.7537022, longitude: -117.4187429)
        let chapel = CLLocationCoordinate2D(latitude: 47.7531028, longitude: -117.4192601)
        let smiley = CLLocationCoordinate2D(latitude: 47.7538009, longitude: -117.4195720)
        let totemPole = CLLocationCoordinate2D(latitude: 47.7544118, longitude: -117.4193886)
        let Wey = CLLocationCoordinate2D(latitude: 47.7541753, longitude: -117.4190225)
        let schumacher = CLLocationCoordinate2D(latitude: 47.7546786, longitude: -117.4182091)
        let handicap = CLLocationCoordinate2D(latitude: 47.7544598, longitude: -117.4176669)
        
        //let robinsonPin = CLLocation(coordinate: robinson, altitude: 610) //Altitude is in meters, Default: 610m
        
        let altitude: Double = 610; //meters
        
        let ejPin = CLLocation(coordinate: ej, altitude: altitude)
        let bjPin = CLLocation(coordinate: bj, altitude: altitude)
        let stewartPin = CLLocation(coordinate: stewart, altitude: altitude)
        let arendPin = CLLocation(coordinate: arend, altitude: altitude)
        let recyclePin = CLLocation(coordinate: recycle, altitude: CLLocationDistance(altitude))
        let HUBPin = CLLocation(coordinate: HUB, altitude: altitude)
        let LibraryPin = CLLocation(coordinate: Library, altitude: altitude)
        let BellTowerPin = CLLocation(coordinate: BellTower, altitude: altitude)
        let FlagPin = CLLocation(coordinate: Flag, altitude: altitude)
        let DixonPin = CLLocation(coordinate: Dixon, altitude: altitude)
        let WarrenPin = CLLocation(coordinate: Warren, altitude: altitude)
        let tempBenchPin = CLLocation(coordinate: tempBench, altitude: altitude)
        let tempTreePin = CLLocation(coordinate: tempTree, altitude: altitude)
        let chapelPin = CLLocation(coordinate: chapel, altitude: altitude)
        let smileyPin = CLLocation(coordinate: smiley, altitude: altitude)
        let totemPolePin = CLLocation(coordinate: totemPole, altitude: altitude)
        let weyPin = CLLocation(coordinate: Wey, altitude: altitude)
        let schumacherPin = CLLocation(coordinate: schumacher, altitude: altitude)
        let hadicapPin = CLLocation(coordinate: handicap, altitude: altitude)
        
        let image = UIImage(named: "pin")!
        
        //let robinsonAnnotationNode = LocationAnnotationNode(location: robinsonPin, image: image)
        
        let ejAnnotationNode = LocationAnnotationNode(location: ejPin, image: image)
        let bjAnnotationNode = LocationAnnotationNode(location: bjPin, image: image)
        let stewartAnnotationNode = LocationAnnotationNode(location: stewartPin, image: image)
        let arendAnnotationNode = LocationAnnotationNode(location: arendPin, image: image)
        let recycleAnnotationNode = LocationAnnotationNode(location: recyclePin, image: image)
        let HUBAnnotationNode = LocationAnnotationNode(location: HUBPin, image: image)
        let LibraryAnnotationNode = LocationAnnotationNode(location: LibraryPin, image: image)
        let BellTowerAnnotationNode = LocationAnnotationNode(location: BellTowerPin, image: image)
        let FlagAnnotationNode = LocationAnnotationNode(location: FlagPin, image: image)
        let DixonAnnotationNode = LocationAnnotationNode(location: DixonPin, image: image)
        let WarrenAnnotationNode = LocationAnnotationNode(location: WarrenPin, image: image)
        let tempBenchAnnotationNode = LocationAnnotationNode(location: tempBenchPin, image: image)
        let tempTreeAnnotationNode = LocationAnnotationNode(location: tempTreePin, image: image)
        let chapelAnnotationNode = LocationAnnotationNode(location: chapelPin, image: image)
        let smileyAnnotationNode = LocationAnnotationNode(location: smileyPin, image: image)
        let totemPoleAnnotationNode = LocationAnnotationNode(location: totemPolePin, image: image)
        let weyAnnotationNode = LocationAnnotationNode(location: weyPin, image: image)
        let schumacherAnnotationNode = LocationAnnotationNode(location: schumacherPin, image: image)
        let handicapAnnotationNode = LocationAnnotationNode(location: hadicapPin, image: image)
        
        //sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: robinsonAnnotationNode)
        
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: ejAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: bjAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: stewartAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: arendAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: recycleAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: HUBAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: LibraryAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: BellTowerAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: FlagAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: DixonAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: WarrenAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: tempBenchAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: tempTreeAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: chapelAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: smileyAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: totemPoleAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: weyAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: schumacherAnnotationNode)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: handicapAnnotationNode)
        
        view.addSubview(sceneLocationView)
        
        self.view.addSubview(mapButton)
        view.addSubview(backColor)
        view.bringSubview(toFront: whiteView)
        view.bringSubview(toFront: mapButton)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        sceneLocationView.pause();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        sceneLocationView.frame = view.bounds
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
        sceneLocationView.pause()
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        print("Unwinding")
    }


}

