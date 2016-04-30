//
//  ViewController.swift
//  OrdenPizza
//
//  Created by Jonathan Silva on 27/04/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
    @IBOutlet weak var pickerSize: UIPickerView!
    
    var tamaño = ["Chica","Mediana","Grande"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerSize.dataSource = self
        self.pickerSize.delegate = self

    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.tamaño.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamaño[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Tamaño: ", tamaño[row])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueMasa"){
            let DestViewTwo = segue.destinationViewController as! MasaViewController
            DestViewTwo.tamaño = tamaño[self.pickerSize.selectedRowInComponent(0)]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

