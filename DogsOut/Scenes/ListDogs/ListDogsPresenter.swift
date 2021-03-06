//
//  ListDogsPresenter.swift
//  DogsOut
//
//  Created by ASBEL PARRA on 11/8/20.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ListDogsPresentationLogic
{
  func presentSomething(response: ListDogs.Something.Response)
}

class ListDogsPresenter: ListDogsPresentationLogic
{
  weak var viewController: ListDogsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: ListDogs.Something.Response)
  {
    let viewModel = ListDogs.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
