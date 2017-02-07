# 5. Software Requirements Specification
## 5.1 Introduction
This requirements specification document is created for AppArel, a virtual closet application made for the iPhone. The app will allow users to view their articles of clothing (e.g., shirts, dresses, shoes, necklaces, etc.) and prepare their clothes for any occassion before even putting them on. There will be a calendar view which lets users check what clothes they've worn on a specific day or plan ahead for a special event. Each user will need to sign up so they can add friends and share with them.
The remainder of this document is structured as follows. Section 5.2 contains the Functional Requirements. Section 5.3 contains the Performance Requirements. Section 5.4 contains the Environment Requirements.

![State Diagram](images/AppArel-state-diagram.png)

## 5.2 Functional Requirements


### 5.2.1 Graphical User Interface
The Graphical User Interface (GUI) for the application shall display tabs at the bottom of the screen that lets users switch between the different functions of the app.

5.2.1.1 Each user shall have their own "My Closet", which acts as their home view screen. <br>
5.2.1.2 The "My Closet" shall contain all of the articles of clothing the user wished to store. <br>
5.2.1.3 There shall be a "Calendar" screen where the users can select a date to see what clothes were/will be worn on that date. <br>
5.2.1.4 There shall also be a "Share" screen where users are allowed to show their friends their clothes. <br>
5.2.1.5 There shall be an option to display clothes by categories. <br>
5.2.1.6 In the "My Closet" screen, users shall have the option to add clothes. <br>
5.2.1.7 In the "Calendar" screen, users shall have the option to add clothes worn or will be worn. <br>
5.2.1.8 There shall be an option to remove clothes from "My Closet". <br>
5.2.1.9 In the "Share" screen, there shall be an option to add friends. <br>
5.2.1.10 When adding articles of clothing, the camera shall be used. <br>

### 5.2.2 Cloud Database
5.2.2.1 The application shall push data into the SQLite database on the cloud. <br>
5.2.2.2 The application shall retrieve saved data from the cloud and display in the interface. <br>

### 5.2.3 Search
5.2.3.1 The user shall have the option to tag clothes. <br>
5.2.3.2 The user shall be able to search "My Closet" by tags. <br>

## 5.3 Performance Requirements
### 5.3.1 Startup Performance
5.3.1.1 The application shall require no more than 0.5 seconds to load the "Closet" screen. <br>
5.3.1.2 Switching between tabs shall require no more than 0.1 seconds. <br>
5.3.1.3 The application shall take no more than 15% of the device's CPU. <br>

### 5.3.2 Store Items Performance
5.3.2.1 It shall take no more than 1 second for the item to be stored in the cloud database. <br>
5.3.2.2 The application shall display a "success" window within 2 seconds of the user adding an item. <br>
5.3.2.3 The application shall be able to handle at least 500 articles of clothing per user. <br>

### 5.3.3 Display Items Performance
5.3.3.1 The application shall take no more than 2 seconds to display an item from the "List by Categories" view. <br>
5.3.3.2 Search results shall take no more than 5 seconds to display matches. <br>

### 5.3.4 Share Items Performance
5.3.4.1 A user "sharing" a set of clothes shall have the action take no longer than 2 seconds. <br>
5.3.4.2 The receiver of the shared clothes shall receive a notification within 2 seconds of being shared. <br>

## 5.4 Environment Requirements
### 5.4.1 Development Requirements
5.4.1.1 Developing the iOS version of the application shall require Xcode 8 (or above) and Swift 3. <br>
5.4.1.2 Developing the application shall require Heroku as the cloud hosting service. <br>
5.4.1.3 Developing the application shall require the relational database SQLite. <br>
5.4.1.4 Developing the application shall require the cloud platform service Heroku. <br>

### 5.4.2 Execution Environment Requirements
5.4.2.1 Hardware Requirements
AppArel shall not require any special computing hardware to operate.

5.4.2.2 Software Requirements
AppArel shall be accessed through devices that use iOS 10.0 and up on the following devices:
- iPhone 6s
- iPhone 6s Plus
- iPhone 6
- iPhone 6 Plus
- iPhone SE
- iPhone 5S
- iPhone 5C
- iPhone 5
