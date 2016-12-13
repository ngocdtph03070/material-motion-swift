/*
 Copyright 2016-present The Material Motion Authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import UIKit
import IndefiniteObservable
import MaterialMotionStreams

// This example demonstrates how to connect a drag source to a property on a view.

public class DragSourceExampleViewController: UIViewController {

  let aggregator = MotionAggregator()
  public override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .white

    let square = UIView(frame: .init(x: 0, y: 0, width: 64, height: 64))
    square.backgroundColor = .red
    view.addSubview(square)

    let gesture = UIPanGestureRecognizer()
    view.addGestureRecognizer(gesture)

    aggregator.write(gestureSource(gesture).location(in: view), to: propertyOf(square).center)
  }
}
