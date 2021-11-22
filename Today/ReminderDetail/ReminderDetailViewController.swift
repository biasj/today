//
//  ReminderDetailViewController.swift
//  Today
//
//  Created by Beatriz Sato on 02/11/21.
//

import UIKit

class ReminderDetailViewController: UITableViewController {
    private var reminder: Reminder?
    private var detailViewdataSource: ReminderDetailViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let reminder = reminder else {
            fatalError("No reminder found")
        }
        
        detailViewdataSource = ReminderDetailViewDataSource(reminder: reminder)
        tableView.dataSource = detailViewdataSource
    }
    
    func configure(with reminder: Reminder) {
        self.reminder = reminder
    }
}

extension ReminderDetailViewController {

}
