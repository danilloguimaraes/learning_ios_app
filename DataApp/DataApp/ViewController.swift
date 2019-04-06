//
//  ViewController.swift
//  DataApp
//
//  Created by Arthur Santos on 06/04/19.
//  Copyright © 2019 Arthur Santos. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var vrImage: UIImageView!
    @IBOutlet weak var vrNome: UITextField!
    @IBOutlet weak var vrPhone: UITextField!
    
    var contexto: NSManagedObjectContext{
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func act3pts(_ sender: Any) {
        let photo = UIImagePickerController()
        photo.sourceType = .savedPhotosAlbum
        photo.delegate = self
        self.present(photo, animated: true, completion: nil)
    }
    
    @IBAction func actAdd(_ sender: Any) {
        
        let contact = Contact(context: self.contexto)
        
        contact.name = vrNome.text
        contact.phone = vrPhone.text
        contact.photo = vrImage.image
        
        do{
            try contexto.save()
        }
        catch{}
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let photo = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        vrImage.image = photo
        picker.dismiss(animated: true, completion: nil)
    }
}

