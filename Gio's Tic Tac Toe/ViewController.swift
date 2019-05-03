//
//  ViewController.swift
//  Gio's Tic Tac Toe
//
//  Created by Giovanni Dominguez on 12/12/18.
//  Copyright © 2018 Giovanni Dominguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currPlayer = 1; //Player X represents 1
    var states = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    var isActive = true
    
    @IBAction func action(_ sender: AnyObject) {
        if(states[sender.tag - 1] == 0 && isActive == true){ // Each button is tagged from 1-9 top right to left
            states[sender.tag-1] = currPlayer
        
        if(currPlayer == 1){ //Place and X
            sender.setImage(UIImage(named: "cross.png"), for: UIControl.State())
            currPlayer = 2 // Player o represents 2
        }
        else { //Place an O
            sender.setImage(UIImage(named: "nought.png"), for: UIControl.State())
            currPlayer = 1
        }
        }
        for combination in combinations{
            // if the states are the same number then player X or O has a winning 3 in a row
            if states[combination[0]] != 0 && states[combination[0]] == states[combination[1]] && states[combination[1]] == states[combination[2]]{
                isActive = false // found a winner end the game
                if states[combination[0]] == 1{
                    print ("cross wins")
                    break
                }
                if states[combination[0]] == 2{
                    print ("nought wins")
                    break
                }

            }
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

