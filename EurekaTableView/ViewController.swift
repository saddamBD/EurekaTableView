//
//  ViewController.swift
//  EurekaTableView
//
//  Created by General on 2/21/18.
//  Copyright © 2018 General. All rights reserved.
//

import UIKit
import  Eureka

class MyFormViewController: FormViewController {
    
    typealias Emoji = String
    let 👦🏼 = "👦🏼", 🍐 = "🍐", 💁🏻 = "💁🏻", 🐗 = "🐗", 🐼 = "🐼", 🐻 = "🐻", 🐖 = "🐖", 🐡 = "🐡"
    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("Personal Info")
            <<< TextRow(){
                $0.title = "First Name"
                $0.placeholder = "Enter First Name"
                
            }
            <<< TextRow(){
                $0.title = "last Name"
                $0.placeholder = "Enter lastt Name"
            }
            <<< PhoneRow(){
                $0.title = "Phone"
                $0.placeholder = "And phone number"
            }
            +++ Section("Section2")
            <<< DateRow(){
                $0.title = "Date birth"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            
            +++ Section("Section3")
            
            <<< DateRow(){
                $0.title = "Date of entry"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            
            <<< StepperRow() {
                $0.title = "StepperRow"
                $0.value = 1.0
            }
            
            +++ Section("Section4")
            
            <<< PushRow<String>() {
                $0.title = "Gender"
                $0.options = ["Male","Female","Trans"]
                $0.value = ""
                $0.selectorTitle = "Choose an gender"
                }.onPresent { from, to in
                    to.dismissOnSelection = false
                    to.dismissOnChange = false
                    
        }
            <<< SwitchRow() {
                $0.title = "SwitchRow"
                $0.value = true
        }
            +++ Section("Selectors Rows Examples")
            
            <<< ActionSheetRow<String>() {
                $0.title = "ActionSheetRow"
                $0.selectorTitle = "Your favourite player?"
                $0.options = ["Diego Forlán", "Edinson Cavani", "Diego Lugano", "Luis Suarez"]
                $0.value = "Luis Suarez"
                }
                .onPresent { from, to in
                    to.popoverPresentationController?.permittedArrowDirections = .up
        }
        
        
            <<< SegmentedRow<Emoji>(){
                $0.title = "Who are you?"
                $0.options = [💁🏻, 🍐, 👦🏼, 🐗, 🐼, 🐻 ]
                $0.value = 🍐
        }
        
        
            
            <<< PushRow<Emoji>() {
                $0.title = "PushRow"
                $0.options = [💁🏻, 🍐, 👦🏼, 🐗, 🐼, 🐻]
                $0.value = 👦🏼
                $0.selectorTitle = "Choose an Emoji!"
                }.onPresent { from, to in
                    to.dismissOnSelection = false
                    to.dismissOnChange = false
        }
        
            +++ Section("SegmentedRow examples")
            
            <<< SegmentedRow<String>() { $0.options = ["One", "Two", "Three"] }
            
            <<< SegmentedRow<Emoji>(){
                $0.title = "Who are you?"
                $0.options = [💁🏻, 🍐, 👦🏼, 🐗, 🐼, 🐻 ]
                $0.value = 🍐
            }
            
            <<< SegmentedRow<String>(){
                $0.title = "SegmentedRow"
                $0.options = ["One", "Two"]
                }.cellSetup { cell, row in
                    cell.imageView?.image = UIImage(named: "plus_image")
            }
            
            <<< SegmentedRow<String>(){
                $0.options = ["One", "Two", "Three", "Four"]
                $0.value = "Three"
                }.cellSetup { cell, row in
                    cell.imageView?.image = UIImage(named: "plus_image")
        }
        
        
    }
}





