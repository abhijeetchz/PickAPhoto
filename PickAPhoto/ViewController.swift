//
//  ViewController.swift
//  PickAPhoto
//
//  Created by Abhijeet Chaudhary on 11/03/16.
//  Copyright © 2016 Abhijeet Chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgVIEW: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        imgVIEW.image = UIImage(named: "pika.jpg")
        imagePicker.delegate = self
    }

   
    @IBAction func btnCameraACT(sender: UIBarButtonItem) {
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
   
    
    @IBAction func btnLibraryACT(sender: UIBarButtonItem) {
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        imgVIEW.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

        
}