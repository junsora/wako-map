//
//  StringExtentions.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/09.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}

