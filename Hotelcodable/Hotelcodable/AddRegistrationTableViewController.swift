//
//  AddRegistrationTableViewController.swift
//  Hotelcodable
//
//  Created by Kashika Baweja on 27/08/25.
//

import UIKit


class AddRegistrationTableViewController: UITableViewController, SelectRoomTypeViewControllerDelegate {
    func selectRoomTypeTableViewController(_ controller: SelectRoomTypeTableViewController, didSelect roomType: RoomType) {
        self.roomType = roomType
        updateRoomType()
    }
    
      
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    
    @IBOutlet weak var checkInDateLabel: UILabel!
    @IBOutlet weak var checkInDatePicker: UIDatePicker!
    
    @IBOutlet weak var checkOutDateLabel: UILabel!
    @IBOutlet weak var checkOutDatePicker: UIDatePicker!
    
    @IBOutlet weak var numberOfAdultsLabel: UILabel!
    @IBOutlet weak var numberOfAdultsStepper: UIStepper!
    
   
    @IBOutlet weak var numberOfChildrenLabel: UILabel!
    @IBOutlet weak var numberOfChildrenStepper: UIStepper!
    
    @IBOutlet weak var wifiSwitch: UISwitch!
    
    @IBOutlet weak var roomTypeLabel: UILabel!
    @IBAction func wifiSwitchChanged(_ sender: Any) {
    }
    @IBAction func stepperValueChanged(_ sender: Any) {
        updateNumberofGuests()
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated:true , completion: nil)
    }
    
    @IBSegueAction func selectRoomType(_ coder: NSCoder, sender: Any?) -> SelectRoomTypeTableViewController? {
        let selectRoomTypeController = SelectRoomTypeTableViewController(coder: coder)
         selectRoomTypeController?.delegate = self
         selectRoomTypeController?.roomType = roomType
         return selectRoomTypeController
     }
    
//    @IBAction func doneBarButtonTapped(_ sender: Any){
//   
//    
//        let firstName = firstNameTextField.text ?? ""
//        let lastName = lastNameTextField.text ?? ""
//        let emailAddress = emailAddressTextField.text ?? ""
//        let checkInDate = checkInDatePicker.date
//        let checkOutDate = checkOutDatePicker.date
//        let numberOfAdults = Int(numberOfAdultsStepper.value)
//        let numberOfChildren = Int(numberOfChildrenStepper.value)
//        let hasWifi = wifiSwitch.isOn
//        
//        print("done Tapped")
//        print("firstname \(firstName) ")
//        print("lastname\(lastName)")
//        print("email \(emailAddress)")
//        print("checkIn \(checkInDate)")
//        print("checkOut \(checkOutDate)")
//        print("Adults \(numberOfAdults)")
//        print("Children \(numberOfChildren)")
//        print("Wifi \(hasWifi)")
//    }
    var registration: Registration? {
        
        guard let roomType = roomType else { return nil }
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailAddressTextField.text ?? ""
        let checkInDate = checkInDatePicker.date
        let checkOutDate = checkOutDatePicker.date
        let numberOfAdults = Int(numberOfAdultsStepper.value)
        let numberOfChildren = Int(numberOfChildrenStepper.value)
        let hasWifi = wifiSwitch.isOn
        
        return Registration(
            firstName: firstName,
            lastName: lastName,
            emailAddress: email,
            checkInDate: checkInDate,
            checkOutDate: checkOutDate,
            numberOfAdults: numberOfAdults,
            numberOfChildren: numberOfChildren,
            wifi: hasWifi,
            roomType: roomType
        )
    }

    let checkInDateLabelCellIndexPath : IndexPath = IndexPath(row: 0, section: 1)
    let checkOutDateLabelCellIndexPath : IndexPath = IndexPath(row: 2, section: 1)
    let checkInDatePickerCellIndexPath = IndexPath(row: 1, section: 1)
        let checkOutDatePickerCellIndexPath = IndexPath(row: 3, section: 1)
        
        var isCheckInDatePickerVisible: Bool = false{
            didSet{
                checkInDatePicker.isHidden = !isCheckInDatePickerVisible
            }
        }
        var isCheckoutDatePickerVisible: Bool = false{
            didSet{
                checkOutDatePicker.isHidden = !isCheckoutDatePickerVisible
            }
        }
    override func viewDidLoad() {
        let midnightToday =  Calendar.current.startOfDay(for: Date())
        checkInDatePicker.minimumDate = midnightToday
        checkInDatePicker.date = midnightToday
        
       
        
        super.viewDidLoad()
        updateDateViews ()
        updateNumberofGuests()
        updateRoomType( )
        tableView.reloadSections(IndexSet(integer: 3), with: .automatic)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func datePickerValueChanged(_ sender: UIDatePickerStyle) {
        updateDateViews()
    }
    var roomType: RoomType?
    func updateRoomType(){
            if let roomType = roomType{
                roomTypeLabel.text = roomType.name
            } else{
                roomTypeLabel.text = "Not Set"
            }
        }
    func updateDateViews()
    {
        checkOutDatePicker.minimumDate = Calendar.current.date(byAdding: .day, value: 1 , to: checkInDatePicker.date)
        checkInDateLabel.text = checkInDatePicker.date.formatted(date: .abbreviated , time: .omitted)
        checkOutDateLabel.text = checkOutDatePicker.date.formatted(date: .abbreviated , time: .omitted)
    }
    func updateNumberofGuests()
    {
        numberOfAdultsLabel.text = "\(Int(numberOfAdultsStepper.value))"
        numberOfChildrenLabel.text = "\(Int(numberOfChildrenStepper.value))"
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath {
            case checkInDatePickerCellIndexPath where
            isCheckInDatePickerVisible == false:
            return 0
            case checkOutDatePickerCellIndexPath where
            isCheckoutDatePickerVisible == false:
            return 0
        default:
            return UITableView.automaticDimension
            
            
        }
    }
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath {
        case checkInDatePickerCellIndexPath:
        return 190
        case checkOutDatePickerCellIndexPath:
        return 190
        default:
            return UITableView.automaticDimension
            
            
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at : indexPath, animated: true)
        if indexPath == checkInDatePickerCellIndexPath && isCheckInDatePickerVisible == false {isCheckInDatePickerVisible.toggle()
            
        }else if indexPath == checkOutDatePickerCellIndexPath && isCheckoutDatePickerVisible == false {
            isCheckoutDatePickerVisible.toggle()
        }else if indexPath == checkInDateLabelCellIndexPath || indexPath ==  checkOutDateLabelCellIndexPath  {
            isCheckInDatePickerVisible.toggle()
            isCheckoutDatePickerVisible.toggle()
            
        }else{
            return
        }
        
        tableView.beginUpdates()
        tableView.endUpdates()
       
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
