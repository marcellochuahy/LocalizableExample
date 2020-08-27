//
//  ViewController.swift
//  LocalizableExample
//
//  Created by Marcello Chuahy on 26/08/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// MARK: - Properties
	// let locale = Locale(identifier: "pt_BR")
	// let locale = Locale(identifier: "en_US")
	let date = Date()
	
	// MARK: - Outlets
	@IBOutlet weak var systemLanguageLabel: UILabel!
	@IBOutlet weak var systemRegion: UILabel!
	@IBOutlet weak var flagImageView: UIImageView!
	@IBOutlet weak var localizableStringLabelWithString: UILabel!
	@IBOutlet weak var localizableStringLabelWithInt: UILabel!
	@IBOutlet weak var localizableStringLabelWithDouble: UILabel!
	@IBOutlet weak var localizableStringLabelWithPercentage: UILabel!
	@IBOutlet weak var localizableNumberFormatLabel: UILabel!
	@IBOutlet weak var localizableCurrencyFormatLabel: UILabel!
	@IBOutlet weak var localizableLongDateFormatLabel: UILabel!
	@IBOutlet weak var localizableShortDateFormatLabel: UILabel!
	@IBOutlet weak var localizablePlural1UnitLabel: UILabel!
	@IBOutlet weak var localizablePlural2UnitsLabel: UILabel!
	@IBOutlet weak var localizablePlural3UnitsLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()

		// Language:
		systemLanguageLabel.text = NSLocalizedString("languageString", comment: "-----")

		flagImageView.image = UIImage(named: NSLocalizedString("flagImageView", comment: "-----"))
		
		// Region:
		systemRegion.text = NSLocalizedString("regionString", comment: "-----")

		// Localizable strings - ex 1:
		localizableStringLabelWithString.text =
			String.localizedStringWithFormat(
				NSLocalizedString("\"%@\" is an example of String", comment: "-----"),
				"Apple"
		)
		
		// Localizable strings - ex 2:
		localizableStringLabelWithInt.text =
			String.localizedStringWithFormat(
				NSLocalizedString("\"%d\" is an example of Int" , comment: "-----"),
				10
		)
		
		// Localizable strings - ex 3:
		localizableStringLabelWithDouble.text =
			String.localizedStringWithFormat(
				NSLocalizedString("\"%.2f\" is an example of Double", comment: "-----"),
				100.569
		)
		
		// Localizable strings - ex 4:
		localizableStringLabelWithPercentage.text =
			String.localizedStringWithFormat(
				NSLocalizedString("\"%.0f%%\" is using percentage", comment: "-----"),
				100.5
		)
		
		// Localizable number format:
		localizableNumberFormatLabel.text =
			String.localizedStringWithFormat(
				NSLocalizedString("%@ (style)", comment: "-----"),
				NumberFormatter.localizedString(from: 1000.99, number: .decimal)
		)
		
		// Localizable currency format:
		localizableCurrencyFormatLabel.text =
			String.localizedStringWithFormat(
				NSLocalizedString("%@ (style)", comment: "-----"),
				NumberFormatter.localizedString(from: 1000.99, number: .currency)
		)
		
		// Localizable date format - ex 1:
		localizableLongDateFormatLabel.text =
			String.localizedStringWithFormat(
				NSLocalizedString("%@ (style)", comment: "-----"),
				DateFormatter.localizedString(from: date,
											  dateStyle: .long,
											  timeStyle: .none)
		)
		
		// Localizable date format - ex 2:
		localizableShortDateFormatLabel.text =
			String.localizedStringWithFormat(
				NSLocalizedString("%@ (style)", comment: "-----"),
				DateFormatter.localizedString(from: date,
											  dateStyle: .short,
											  timeStyle: .none)
		)
		
		// Localizable plural - ex 1:
		localizablePlural1UnitLabel.text =
			String.localizedStringWithFormat(
				NSLocalizedString("%d units", comment: "-----"),
				1
		)
		
		// Localizable plural - ex 2:
		localizablePlural2UnitsLabel.text =
			String.localizedStringWithFormat(
				NSLocalizedString("%d units", comment: "-----"),
				2
		)
		
		// Localizable plural - ex 3:
		localizablePlural3UnitsLabel.text =
			String.localizedStringWithFormat(
				NSLocalizedString("%d units", comment: "-----"),
				3
		)

	}


}

