//
//  AdicionalesViewController.swift
//  OrdenPizza
//
//  Created by Jonathan Silva on 28/04/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import UIKit

class AdicionalesViewController: UIViewController {

    @IBOutlet weak var ingredientesSeleccionados: UILabel!
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var tocineta: UISwitch!
    @IBOutlet weak var pollo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var maiz: UISwitch!
    @IBOutlet weak var anchoas: UISwitch!
    @IBOutlet weak var chorizo: UISwitch!
    @IBOutlet weak var piña: UISwitch!
    @IBOutlet weak var pimenton: UISwitch!
    
    var contador = 0
    var tamaño = ""
    var masa = ""
    var queso = ""
    var adicionales = [false,false,false,false,false,false,false,false,false,false]
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func alert(){
        
        let alertController = UIAlertController(title: "Ingredientes Excedidos", message:"Recuerda puedes elegir máximo 5 ingredientes.", preferredStyle: UIAlertControllerStyle.Alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            print("OK")
        }
        alertController.addAction(OKAction)
        self.presentViewController(alertController, animated: true) { () -> Void in }

    }
    
    func ingredientesAdicionales(){
        
        adicionales = [self.jamon.on, self.pepperoni.on, self.tocineta.on, self.pollo.on, self.salchicha.on, self.maiz.on, self.anchoas.on, self.chorizo.on, self.piña.on, self.pimenton.on]
    }
    
    @IBAction func jamon(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.jamon.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
    }
    
    @IBAction func pepperoni(sender: UISwitch) {
    
        if(sender.on){
            if(contador > 4){
                self.pepperoni.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func Tocineta(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.tocineta.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func pollo(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.pollo.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func salchicha(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.salchicha.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func maiz(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.maiz.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func anchoas(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.anchoas.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func chorizo(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.chorizo.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func piña(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.piña.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    @IBAction func pimenton(sender: UISwitch) {
        
        if(sender.on){
            if(contador > 4){
                self.pimenton.on = false
                alert()
            }else{
                contador += 1
                ingredientesSeleccionados.text = String(contador)
            }
        }else{
            contador -= 1
            ingredientesSeleccionados.text = String(contador)
        }
        
        ingredientesAdicionales()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueConfirmar"){
            let DestViewFive = segue.destinationViewController as! ConfirmarViewController
            DestViewFive.tamaño = tamaño
            DestViewFive.masa = masa
            DestViewFive.queso = queso
            
            DestViewFive.ingredientesAdicionales = adicionales
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
