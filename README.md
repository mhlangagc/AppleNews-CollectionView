# News-Collection

A collection view implementation example adopted from the Apple News App Layout. The cells within the umberella collection have nested Collection Views that also have their own Cells and more nested Collections Views in some cases. 
The entire view is built in code i.e. Without XIB's or Storyboards and is a simple example of how to build Nested Collection Views. 

Feel free to Fork and view the code. 
<div align="center">
<img src="https://github.com/mhlangagc/Feedback-System/blob/master/Feedback/ExampleImage.png" alt="Feedback-System"/>
</div>

##  Requirements :

- Swift 4.0
- XCode 9

<p align="center">
<img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS" />
<a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/Swift_4.0-compatible-4BC51D.svg?style=flat" alt="Swift 4.0 compatible" /></a>
<a href="http://mit-license.org"><img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="MIT" /></a>
</p>


##  How to Setup:

Drag and drop the FeedbackView.swift file from the downloaded Project into your Swift 4 Project. Simple and Easy.


##  How to Use:

### Real easy implemenation:

Add these lines to your the view controller (Collection and Table View  Controllers also work) you want to show the FeedbackView in. This will initialise the FeedbackView to get access to the necessary function.

```swift
internal lazy var feedback: FeedbackView = {
	let feedback = FeedbackView()
	return feedback
}()

```

### Showing the FeedbackView.
Just below the lines above or anywhere else withing your View Controller add the function below. 

```swift
func showFeedback() {
	if let window = UIApplication.shared.keyWindow {
		self.feedback.showFeedback(backgroundColor: UIColor(red: 248.0/255.0, green:  231.0/255.0 ,blue: 28.0/255.0, alpha: 1.0), feedbackLabel: "Hello there", feedbackLabelColor: UIColor(red: 106.0/255.0, green:  99.0/255.0 ,blue: 13.0/255.0, alpha: 1.0), feedbackIconImage: #imageLiteral(resourceName: "haha"), feedbackIconImageTint: UIColor(red: 106.0/255.0, green:  99.0/255.0 ,blue: 13.0/255.0, alpha: 1.0), durationOnScreen: 3.8, currentView: window, showsBackgroundGradient: true, isAboveTabBar: false)
	}
}

```

In this function we get access the the keyWindow  and use it’s frame to call the showFeedback function located in the FeedbackView.swift file.


---

##  Customisation

```swift
internal func showFeedback(backgroundColor: UIColor, feedbackLabel: String, feedbackLabelColor: UIColor, feedbackIconImage: UIImage, feedbackIconImageTint: UIColor, durationOnScreen: Double, currentView: UIView, showsBackgroundGradient: Bool, isAboveTabBar: Bool)

```


In calling the showFeedback function you can change the following parameter values:

* The Background Color of the FeedbackView using the backgroundColor parameter. This takes a UIColor.
* The Label in the FeedbackView using the feedbackLabel parameter. IMPORTANT : Keep this to about 5 words so it fits properly into the FeedbackView.
* The Label Text Color using the feedbackLabelColor parameter. This take a UIColor.
* The Icon in the FeedbackView using the feedbackIconImage parameter. IMPORTANT : This will be a 24 x 24pt sized image.
* The Icon Tint Color using the feedbackIconImageTint parameter. This take a UIColor.
* How long  the FeedbackView is on the screen using the durationOnScreen parameter. This takes a Double that represents the time in seconds.
* The Current View parameter should ALWAYS be set to window so it appears above every other view on screen. 
* The FeedbackView comes with a white background gradient to ensure the View shows up with better clarity over the views it appears over. The pinterest pop up has something similar if you take a closer look. If you don’t want the gradient to appear, set showsBackgroundGradient parameter to false.
* If your view has a Tab Bar, set the isAboveTabBar parameter to true to show the FeedbackView above the Tab Bar. Otherwise this will appear just over the tab bar and may look unpleasant.
