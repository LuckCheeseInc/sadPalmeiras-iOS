//
//  ViewController.swift
//  SadPalmeiras
//
//  Created by Rafael Duarte Lucchesi on 1/23/16.
//  Copyright (c) 2016 LuckCheeseInc. All rights reserved.
//


import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var date: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.date.text = currentDateFormatted()
    }

    private func currentDateFormatted() -> String {
        let currentDate = NSDate()

        let dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        var resultingString = dateFormatter.stringFromDate(currentDate)

        resultingString += NSLocalizedString("DATE_PREPOSITION", comment: "date and time")

        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.dateStyle = NSDateFormatterStyle.NoStyle
        resultingString += dateFormatter.stringFromDate(currentDate)

        return resultingString
    }
}
