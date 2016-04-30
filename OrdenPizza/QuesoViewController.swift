//
//  QuesoViewController.swift
//  OrdenPizza
//
//  Created by Jonathan Silva on 28/04/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
    @IBOutlet weak var pickerQueso: UIPickerView!
    
    var queso = ["Mozarela","Cheddar","Parmesano","Sin Queso"]
    var tamaño = ""
    var masa = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerQueso.dataSource = self
        self.pickerQueso.delegate = self
            
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.queso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return queso[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Queso: ", queso[row])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueAdicionales"){
            let DestViewFour = segue.destinationViewController as! AdicionalesViewController
            DestViewFour.tamaño = tamaño
            DestViewFour.masa = masa
            DestViewFour.queso = queso[self.pickerQueso.selectedRowInComponent(0)]
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
