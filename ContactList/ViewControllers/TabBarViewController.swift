//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Yaroslav Malygin on 04.11.2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let personList = Person.getPersons()
        personListVC.persons = personList
        sectionVC.persons = personList
    }
}
