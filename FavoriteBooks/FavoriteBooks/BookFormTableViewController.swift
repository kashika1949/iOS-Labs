//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Hardik on 25/08/25.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var lengthTextField: UITextField!
    
    var existingBook: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let book = existingBook {
                titleTextField.text = book.title
                authorTextField.text = book.author
                genreTextField.text = book.genre
                lengthTextField.text = String(book.length)
            }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
    }
    
    func makeBook() -> Book? {
        guard let title = titleTextField.text, !title.isEmpty,
              let author = authorTextField.text, !author.isEmpty,
              let genre = genreTextField.text, !genre.isEmpty,
              let lengthText = lengthTextField.text, let length = Int(lengthText) else {
            return nil   // returns nil if any field is empty or invalid
        }
        return Book(title: title, author: author, genre: genre, length: length)
    }
   
}
