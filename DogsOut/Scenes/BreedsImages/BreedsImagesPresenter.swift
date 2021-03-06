//
//  BreedsImagesPresenter.swift
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

protocol BreedsImagesPresentationLogic
{
  func presentSomething(response: BreedsImages.Something.Response)
}

class BreedsImagesPresenter: BreedsImagesPresentationLogic
{
  weak var viewController: BreedsImagesDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: BreedsImages.Something.Response)
  {
    let viewModel = BreedsImages.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
