//
//  ViewController.swift
//  HomeWork
//
//  Created by Admin on 22/1/2562 BE.
//  Copyright © 2562 Worapol Likitaporn. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int  {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView , numberOfRowsInComponent component:Int) -> Int {
        return 4
    }
    func  pickerView(_ pickerView : UIPickerView, titleForRow row : Int, forComponent component : Int) -> String?{
        switch row {
        case 0 :
        return "Hero Serven"
        case 1 :
        return "Hero Jugganant"
        case 2 :
        return "Hero Void"
        case 3 :
        return "Hero Slark"
        default :
        return "not found"
        }
    }
    func pickerView(_ pickerView : UIPickerView , didSelectRow row : Int, inComponent component :Int) {
        switch row {
        case 0 :
            let currentImage = UIImage(named:"download2")
            imageView.image = currentImage
        case 1 :
            let currentImage = UIImage(named:"images3")
            imageView.image = currentImage
        case 2 :
            let currentImage = UIImage(named:"images4")
            imageView.image = currentImage
        case 3 :
            let currentImage = UIImage(named:"images5")
            imageView.image = currentImage
        default :
            print("Error");
        }
    }
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

