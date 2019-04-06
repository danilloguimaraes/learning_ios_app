//
//  MapController.swift
//  iAppTeste2
//
//  Created by Aluno on 23/03/2019.
//  Copyright © 2019 fernando. All rights reserved.
//

import UIKit
import MapKit

class MapController: UIViewController,MKMapViewDelegate, UIGestureRecognizerDelegate {
    @IBOutlet weak var vrMap: MKMapView!
    @IBAction func trataEventoSegmento(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            vrMap.mapType = .standard
        } else if (sender.selectedSegmentIndex == 1){
            vrMap.mapType = .satellite
        } else {
            vrMap.mapType = .hybrid
        }
    }
    
    func criaPino(){
        let pino = MKPointAnnotation()
        pino.title = "UFG Mobile"
        
        
        let coordenadas = CLLocationCoordinate2D(latitude: -16.6033724,longitude: -49.2673356)
        pino.coordinate = coordenadas
        
        vrMap.addAnnotation(pino)
        
        let zoom = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let regiao = MKCoordinateRegion(center: pino.coordinate, span: zoom)
        
        vrMap.setRegion(regiao, animated: true)
    }
    
    @IBAction func handleCall(_ sender: Any) {
        if let url = URL(string: "tel://\(984848484)"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        let ponto = gestureRecognizer.location(in: vrMap)
        
        // Transformei a pos(X,Y) em coordenadas do mapa (latitude, longitude)
        let coordenadas = vrMap.convert(ponto, toCoordinateFrom: vrMap)
        
        let pino = MKPointAnnotation()
        pino.title = "nova anotacao"
        pino.coordinate = coordenadas
        vrMap.addAnnotation(pino)
        
        print("UM LONG PRESS ACONTECEU")
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vrMap.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        criaPino()
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("UM PINO FOI SELECIONADO NO MAPA")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
