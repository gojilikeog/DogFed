//
//  DogTableViewController.swift
//  feedDog
//
//  Created by Oscar Galvez on 1/16/21.
//

import UIKit
import CoreData

class DogTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Adjust cell width automatically
        tableView.cellLayoutMarginsFollowReadableWidth = true
        tableView.dataSource = dataSource
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, String>()
        snapshot.appendSections([.all])
        snapshot.appendItems(Dog.name, toSection: .all)
        
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
    var dogs: Dog = []
    var dogBreeds: [String: String] = ["Zoey": "Beagle", "Blu": "Husky"]
    var dogNotes: [String: String] = ["Zoey": "Requires joint pill 1x daily",
                                      "Blu": "Let dog eat freely throughout day. Picky eater."]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDogFedStatus" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! ViewController
                destinationController.currentDog = self.dogNames[indexPath.row]
            }
        }
    }
    
    @IBAction func unwindtoHome(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
    
//    // Introduces touch to TableController - Options
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // Create an option menu as an action sheet
//        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
//
//        // Add actions to the menu
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        optionMenu.addAction(cancelAction)
//
//        // Add "Reserve a table" action
//        let notifyActionHandler = { (action:UIAlertAction!) -> Void in
//
//            let alertMessage = UIAlertController(title: "Not available yet", message: "Sorry, this feature is not avaliable yet. Please retry after Hack The Northeast Beyond.", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil)
//        }
//
//        let notifyAction = UIAlertAction(title: "Notify", style: .default, handler: notifyActionHandler)
//        optionMenu.addAction(notifyAction)
//
//        let favoriteAction = UIAlertAction(title: "Have I fed this dog?", style: .default, handler: {
//            (action:UIAlertAction!) -> Void in
//
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//        })
//        optionMenu.addAction(favoriteAction)
//
//        if let popoverController = optionMenu.popoverPresentationController {
//            if let cell = tableView.cellForRow(at: indexPath) {
//                popoverController.sourceView = cell
//                popoverController.sourceRect = cell.bounds
//            }
//        }
//
//        //Display the menu
//        present(optionMenu, animated: true, completion: nil)
//    }
    
    enum Section {
        case all
    }
    
    lazy var dataSource = configureDataSource()
    
    func configureDataSource() -> UITableViewDiffableDataSource<Section, String> {
        
        let cellIdentifier = "datacell"
        
        let dataSource = UITableViewDiffableDataSource<Section, String>(
            tableView: tableView,
            cellProvider: { tableView, indexPath, dogName in
                let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! DogTableViewCell
                
                cell.nameLabel?.text = dogName
                cell.breedLabel?.text = self.dogBreeds[dogName]
                cell.notesLabel?.text = self.dogNotes[dogName]
                cell.thumbnailImageView?.image = UIImage(data: Dog.name.image)
                
                return cell
            }
        )
        
        return dataSource
    }
}
