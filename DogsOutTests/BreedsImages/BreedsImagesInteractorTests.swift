//
//  BreedsImagesInteractorTests.swift
//  DogsOut
//
//  Created by ASBEL PARRA on 11/9/20.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import DogsOut
import XCTest

class BreedsImagesInteractorTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: BreedsImagesInteractor!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    setupBreedsImagesInteractor()
  }
  
  override func tearDown()
  {
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupBreedsImagesInteractor()
  {
    sut = BreedsImagesInteractor()
  }
  
  // MARK: Test doubles
  
  class BreedsImagesPresentationLogicSpy: BreedsImagesPresentationLogic
  {
    var presentSomethingCalled = false
    
    func presentSomething(response: BreedsImages.Something.Response)
    {
      presentSomethingCalled = true
    }
  }
  
  // MARK: Tests
  
  func testDoSomething()
  {
    // Given
    let spy = BreedsImagesPresentationLogicSpy()
    sut.presenter = spy
    let request = BreedsImages.Something.Request()
    
    // When
    sut.doSomething(request: request)
    
    // Then
    XCTAssertTrue(spy.presentSomethingCalled, "doSomething(request:) should ask the presenter to format the result")
  }
}
