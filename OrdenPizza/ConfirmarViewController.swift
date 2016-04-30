//
//  ConfirmarViewController.swift
//  OrdenPizza
//
//  Created by Jonathan Silva on 28/04/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import UIKit

class ConfirmarViewController: UIViewController {

    @IBOutlet weak var labelTamaño: UILabel!
    @IBOutlet weak var labelMasa: UILabel!
    @IBOutlet weak var labelQueso: UILabel!
    @IBOutlet weak var adicionalUno: UILabel!
    @IBOutlet weak var adicionalDos: UILabel!
    @IBOutlet weak var adicionalTres: UILabel!
    @IBOutlet weak var adicionalCuatro: UILabel!
    @IBOutlet weak var adicionalCinco: UILabel!
    @IBOutlet weak var sinAdicionales: UILabel!

    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientesAdicionales = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adicionalUno.text = ""
        adicionalDos.text = ""
        adicionalTres.text = ""
        adicionalCuatro.text = ""
        adicionalCinco.text = ""
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        labelTamaño.text = String(tamaño)
        labelMasa.text = String(masa)
        labelQueso.text = String(queso)
        
        var count = 0
        var band = true
        for index in ingredientesAdicionales {
            
            if(index as! NSObject == 1 && count==0){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Jamon")
            }else if(index as! NSObject == 1 && count==1){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Pepperoni")
            }else if(index as! NSObject == 1 && count==2){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Tocineta")
            }else if(index as! NSObject == 1 && count==3){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Pollo")
            }else if(index as! NSObject == 1 && count==4){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Salchica")
            }else if(index as! NSObject == 1 && count==5){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Maiz")
            }else if(index as! NSObject == 1 && count==6){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Anchoas")
            }else if(index as! NSObject == 1 && count==7){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Chorizo")
            }else if(index as! NSObject == 1 && count==8){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Piña")
            }else if(index as! NSObject == 1 && count==9){
                sinAdicionales.hidden = true
                band = false
                ingredientes("Pimenton")
            }
            if(count==9 && band){
                sinAdicionales.hidden = false
            }
            
            count+=1
            
        }
    }
    
    func ingredientes(ingrediente : String){
        if(adicionalUno.text==""){
            adicionalUno.text = ingrediente
        }else if(adicionalDos.text==""){
            adicionalDos.text = ingrediente
        }else if(adicionalTres.text==""){
            adicionalTres.text = ingrediente
        }else if(adicionalCuatro.text==""){
            adicionalCuatro.text = ingrediente
        }else{
            adicionalCinco.text = ingrediente
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
