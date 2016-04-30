//
//  MasaViewController.swift
//  OrdenPizza
//
//  Created by Jonathan Silva on 28/04/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
        @IBOutlet weak var pickerMasa: UIPickerView!
        
        var masa = ["Delgada","Crujiente","Gruesa"]
        var tamaño = ""
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            self.pickerMasa.dataSource = self
            self.pickerMasa.delegate = self
            
        }
    
        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return self.masa.count
        }
        
        func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return masa[row]
        }
        
        func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            print("Masa: ", masa[row])
        }
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if(segue.identifier == "segueQueso"){
                let DestViewThree = segue.destinationViewController as! QuesoViewController
                DestViewThree.tamaño = tamaño
                DestViewThree.masa = masa[self.pickerMasa.selectedRowInComponent(0)]
            }
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
