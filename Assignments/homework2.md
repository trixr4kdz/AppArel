# Homework 2 - Due 02/13/17 @ 4:20pm PST

### Problem 5.1, Stephens page 116
> What's the difference between a component-based architecture and a service-oriented architecture?

In a __component-based architecture__ (CBSE), you regard the system as a collection of loosely coupled components that provide services for each other. A __service-oriented architecture__ (SOA) is similar to a component-based architecture except the pieces are implemented as services. A _service_ is a self-contained program that runs on its own and provides some kind of service for its clients. Sometimes, services are implemented as _web services_. Those are simply programs that satisfy certain standards, so they are easy to invoke over the Internet.

### Problem 5.2, Stephens page 116
> Suppose you're building a phone application that lets you play tic-tac-toe against a simple computer opponent. It will display high scores stored on the phone, not in an external database. Which architectures would be most appropriate and why?

The architectures most appropriate could be __monolithic__, __data-centric__, and __rule-based__. Since the application does not store high scores in an external database, those architectures that use a separate user interface from the database would not be needed. Additionally, a simple game of tic-tac-toe wouldn't need very complex parts.

- Monolithic could be appropriate since the application seems to be self-contained because it's simple enough with just a computer opponent and a high score feature that it is easy to understand all the pieces and how they fit together. A monolithic architecture displays the user interface, accesses data, processes customer orders, etc.

- The application could also be data-centric since the players' moves can be tracked using a relational database system. Since the application would be simple enough, the tables would only comprise of moves and possible reactions.

- A rule-based architecture could also be applicable since a game of tic-tac-toe has a finite set of moves, therefore, the rules to decide what to do next would be limited and the best possible moves can be enumerated.

### Problem 5.4, Stephens page 116
> Repeat question 3 [after thinking about it; it repeats question 2 for a chess game] assuming the chess program lets two users play against each other over an Internet connection.

The main differences between this program and the previous tic-tac-toe application would be that the chess program would require sending information about the game back and forth over the Internet, and that the opponent is another human person (instead of a computer). Therefore, a service-oriented architecture (more specifically, web services) can be used to let the different instances of the application communicate via the Internet.

### Problem 5.6, Stephens page 116
> What kind of database structure and maintenance should the ```ClassyDraw``` application use?

The ClassyDraw application can just simply store each drawing in a separate file while simple operating system features can allow users to manage their application files and directories. Maintenance for the ClassyDraw application might require a temporary file for the drawing that the user is currently editing. The temporary file can then be restored if the user wishes if the program crashes.

### Problem 5.8, Stephens page 116
> Draw a state machine diagram to let a program read floating point numbers in scientific notation as in +37 or -12.3e+17 (which means -12.3 x 1017). Allow both E and e for the exponent symbol. [Jeez, is this like Dr. Dorin's DFAs, or what???]

Floating Point Numbers State Diagram <br>
![state-machine-diagram-5-8](images/state-machine-diagram-HW2-5.8.png "Floating Point Numbers (Click to expand)")

### Problem 6.1, Stephens page 138
> Consider the ```ClassyDraw``` classes ```Line```, ```Rectangle```, ```Ellipse```, ```Star```, and ```Text```. What properties do these classes all share? What properties do they not share? Are there any properties shared by some classes and not others? Where should the shared and nonshared properties be implemented?

The ```Line```, ```Rectangle```, ```Ellipse```, ```Star```, and ```Text``` classes all have to be drawn, which means that they require properties such as outline color, background color, position (upper-left corner), height, and width. ```Text``` is a special class since it requires additional properties such as font size, font type, and string. Likewise, the ```Star``` class might need the number of points needed to draw a particular star shape. Moreover, the classes ```Rectangle```, ```Ellipse```, and ```Star``` may be filled with a specific color whereas the rest of the classes may not. Finally, the line thickness and line style may be specified for the classes ```Line```, ```Rectangle```, ```Ellipse```, and ```Star```. To summarize, the shared properties would be superclasses, and the nonshared properties would be enclosed inside classes that have no subclass.

### Problem 6.2, Stephens page 138
> Draw an inheritance diagram showing the properties you identified for Exercise 1. (Create parent classes as needed, and don't forget the ```Drawable``` class at the top.)

ClassyDraw Inheritance Diagram <br>
![inheritance-diagram-6-2](images/inheritance-diagram-HW2-6.2.png "ClassyDraw")

### Problem 6.3, Stephens page 139
> The following list gives the properties of several business-oriented classes.
> * Customer — Name, Phone, Address, BillingAddress, CustomerID
> * Hourly — Name, Phone, Address, EmployeeID, HourlyRate
> * Manager — Name, Phone, Address, EmployeeID, Office, Salary, Boss, Employees
> * Salaried — Name, Phone, Address, EmployeeID, Office, Salary, Boss
> * Supplier — Name, Phone, Address, Products, SupplierID
> * VicePresident — Name, Phone, Address, EmployeeID, Office, Salary, Managers
> Assuming a ```Supplier``` is someone who supplies products for your business, draw an inheritance diagram showing the relationships among these classes. (Hint: Add extra classes if necessary.)

A ```Person``` class can hold the properties _Name_, _Phone_, _Address_ and can be a superclass of ```Customer```, ```Employee```, and ```Supplier``` since these classes all share the said properties. Likewise, the classes ```Salaried```, ```VicePresident```, and ```Manager``` share the properties _Office_ and _Salary_. However, only the VicePresident has the property _Managers_ and ```Salaried``` does not have the _Employees_ property so an extra class, ```EmployeePerks``` can be a superclass of both ```Salaried``` and ```VicePresident``` and ```Manager``` will be a subclass of ```Salaried```.

Business Inheritance Diagram <br>
![inheritance-diagram-6-3](images/inheritance-diagram-HW2-6.3.png "Business Inheritance")

### Problem 6.6, Stephens page 139
> Suppose your company has many managerial types such as department manager, project manager, and division manager. You also have multiple levels of vice president, some of whom report to other manager types. How could you combine the ```Salaried```, ```Manager```, and ```VicePresident``` types you used in Exercise 3? Draw the new inheritance hierarchy.

The properties _Office_, _Salary_, _Boss_, and _Employees_ can be combined into a single class, ```Salaried```. For a ```VicePresident``` with no bosses, the ```Boss``` property would be empty. Additionally, the _Employees_ property would also be empty for employees who are not ```Managers```.

Business Inheritance (with Managerial Types) Diagram
![inheritance-diagram-6-6](images/inheritance-diagram-HW2-6.6.png "Managerial Types")
