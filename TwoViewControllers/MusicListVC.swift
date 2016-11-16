//
//  MusicListVC.swift
//  TwoViewControllers
//
//  Created by Emil Møller Lind on 14/11/2016.
//  Copyright © 2016 Emil Møller Lind. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    
    // This is an example on how to create segues inside code
    
    
    //Before anything, you program must prepare the segueway.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Creating a reference to the destinationViewController
        if let destination = segue.destination as? PlaySongVC {
            
            //Preparing for the sending of items into the next VC, in this example we check if the sender is a string, and if it is, put it into the variable in the destination VC.
            if let song = sender as? String {
            destination.selectedSong = song
            }
        }
    }

    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Smukkere end smuk"
        
        //This is the function that actually performs the segueway, if i'm experiencing a crash, then its propably due to the identifier being wrong. Remember in the preperation, where i checked for a string Sender. You could basically send any object into the next VC.
        performSegue(withIdentifier: "PlaySongSegue", sender: songTitle)
        
    }
    
    
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.blue
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
