Q: What does the word 'polymorphism' mean?
A: 'Capable of taking many forms.'

Q: What does it mean when we apply polymorphism to OO design? Give a simple Java example.
A: If we have an interface implemented by several different classes, and we refer to interface
objects in our code, then those references can refer to objects of any of the classes which
implement the interface. The same idea applies to subclasses extending a superclass.
If we refer to the superclass object in our code, then any of the subclass objects can 'fit into'
the superclass object, i.e. the superclass object can take many forms.

Example: Mouse and Keyboard class both implement IInputDevice interface. Main program body stores
an array of IInputDevice objects. Then that array can store Mouse objects, or Keyboard objects, or
any other objects which implement the IInputDevice interface. In other words, IInputDevices can take
many forms, e.g. Mouse or Keyboard objects, i.e. they are 'polymorphic'.

Q: What can we use to implement polymorphism in Java?
A: We can use either inheritance with subclasses extending a superclass (and then different subclasses
can substitute for the superclass), or interfaces with classes implementing the interface able
to substitute for the interface.

Q: How many 'forms' can an object take when using polymorphism?
A: Potentially unlimited. As many forms as extend a superclass or implement an interface.

Q: Give an example of when you could use polymorphism.
A: When you want to store objects of different types in a primitive Array object (not ArrayList).
Normally the objects in an Array must all be of the same type, but if we define an interface with
several different types implementing the interface, and define the array as storing interface objects,
then the array can store objects of all the types which implement the interface, even though the
objects are of different types.

Q: What do we mean by 'composition' in reference to object-oriented programming?
A: When an object is made up of one or more other objects.

Q: When would you use composition? Provide a simple example in Java.
A: When we want some or all of our classes to implement common behaviours, but inheritance is
not appropriate in the context, e.g. the superclass has methods or behaviours that we do not want
all of our subclasses to exhibit.

Q: What is/are the advantage(s) of using composition?
A: Using composition with interfaces to implement it, we can give the composed object access
to the behaviours of the component classes, while avoiding the problems of inheriting
undesirable or unwanted methods from superclasses. We can also take advantage of the power of
polymorphism enjoyed by all of the classes implementing the interface, e.g. we can switch the
subclasses in the composed object, provided that they implement a common interface.

Q: What happens to the behaviours when the object composed of them is destroyed?
A: The behaviours remain in the interface and classes which implement the interface, so can still
be accessed or used by other classes which implement the interface (or are composed from these
classes).
