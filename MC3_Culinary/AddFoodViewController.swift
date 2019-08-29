//
//  AddFoodViewController.swift
//  MC3_Culinary
//
//  Created by Leonnardo Benjamin Hutama on 20/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class AddFoodViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var btnDone: UIBarButtonItem!
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    @IBOutlet weak var txtMethod: UITextField!
    @IBOutlet weak var txtIngridients: UITextField!
    @IBOutlet weak var txtProvince: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnAddPhoto: UIButton!
    
    var imageUploaded = false
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnDone.isEnabled = false
        
        self.hideKeyboardWhenTappedAround()
    
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAddPhotoClicked(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
            
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }
            else{
                print("Camera is not available")
            }
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        
        imgView.image = image
        btnAddPhoto.setTitle("", for: .normal)
        imageUploaded = true
        isTextFieldEmpty()
        picker.dismiss(animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
        imageUploaded = false
    }
    
    @IBAction func btnDoneClicked(_ sender: Any) {
        //upload data
        print("\(txtName.text!) \(txtDescription.text!) \(txtIngridients.text!) \(txtProvince.text!) \(txtCity.text!) \(txtEmail.text!)")
    }
    
    @IBAction func txtFoodNameEdited(_ sender: Any) {
        isTextFieldEmpty()
    }
    
    @IBAction func txtDescriptionEdited(_ sender: Any) {
        isTextFieldEmpty()
    }
    
    @IBAction func txtMethodEdited(_ sender: Any) {
        isTextFieldEmpty()
    }
    
    @IBAction func txtIngridientsEdited(_ sender: Any) {
        isTextFieldEmpty()
    }
    
    @IBAction func txtProvinceEdited(_ sender: Any) {
        isTextFieldEmpty()
    }
    
    @IBAction func txtCityEdited(_ sender: Any) {
        isTextFieldEmpty()
    }
    
    @IBAction func txtEmailEdited(_ sender: Any) {
        let writerEmail = txtEmail.text!
        
        if txtEmail.text == "" {
            txtEmail.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        else if validateEmail(emailStr: writerEmail) == false {
            txtEmail.backgroundColor = #colorLiteral(red: 0.9294117647, green: 0.262745098, blue: 0.2156862745, alpha: 1)
            txtEmail.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            btnDone.isEnabled = false
        }
        else{
            txtEmail.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            txtEmail.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            isTextFieldEmpty()
        }
    }
    
    func validateEmail(emailStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailStr)
    }
    
    func isTextFieldEmpty(){
        if (txtName.text == "" || txtDescription.text == "" || txtMethod.text == "" || txtIngridients.text == "" || txtProvince.text == "" || txtCity.text == "" || txtEmail.text == "" || imageUploaded == false){
            btnDone.isEnabled = false
        }
        else{
            btnDone.isEnabled = true
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
