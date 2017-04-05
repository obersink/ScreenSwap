//
//  MusicViewController.swift
//  ScreenSwap
//
//  Created by Simon Zhen on 4/4/17.
//  Copyright © 2017 Simon Zhen. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        performSegue(withIdentifier: "PlaySongViewController", sender: "Thriller")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongViewController {
            
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
}
