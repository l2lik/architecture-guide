//
//  Error.swift
//  SpeakieForKids
//
//  Created by Aleksey Shmyrov on 25.02.2018.
//  Copyright © 2018 Alexey_Shmyrov. All rights reserved.
//

import Foundation

public enum NetworkError: Error {
  case badInput
  case noData
  case parseError
  case unauthorized
  case unknown
}
