//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//


/*
Introduction to Part 6: Advanced Objective-C

Objective-C offers two ways to extend the functionality of classes. 
 
Firstly, by use of categories you can add methods to any existing custom or system class.
 
Secondly, a protocol allows any class to respond to a set of messages.
 
Several classes can implement a protocol and a class can implement several protocols.
 
Finally, you can use dynamic typing to determine the object type at runtime while using introspection you can determine the class of an object at runtime.
 
All these seemingly advanced features make up a proficient Objective-C programmer.
*/



/*
Memory Management
 
NSObject provides basic memory management functionality by way of alloc and init. 
 
In addition, the @property has several attributes that affect how the property stores a value in memory.
 */



/*
C vs Obj-C differences on Memory Management
 
 In C, we are responsible for all memory management busy work.
 
 It is our responsibility to use malloc and free when creating variables that use dynamic memory.
 
 As a C program grows in size and complexity, it becomes a major headache keeping track of malloc and free calls.
 
 Memory related bugs in C are common and difficult to track down.
 
 Objective-C eliminates most of the memory management busy work and headaches of C.
 
 The compiler handles it for you instead.
*/



/*
 alloc and init are 2 methods from the NSObject class.
 
 ALL classes in Objective-C are subclasses of NSObject.
 
 Through NSObject, all objects inherit the basic ability of Objective-C objects.
 */

#import <Cocoa/Cocoa.h>

int main()
{
 
    NSObject *myShape = [[NSObject alloc] init];
    // here, alloc allocates memory and returns an instance of a shape object
    // the init method is called on this instance using a technique where we nest one method called directly after another
    
    
    // Objective-C handles all memory management tasks for us using a technique called Reference Counting
    // that keeps track of how many pointers refer to all objects in our running program throughout the object's life time
    
    
    NSObject *otherShape = myShape;
    // Each object's Reference Count rises and falls as references to it come and go
    // in this case, there are two references to myShape
    
    
    otherShape = nil;
    // now the object's reference count is 1
    
    
    myShape = nil;
    // now the object's reference count is 0
    // When an object's reference count reaches 0, its memory is automatically deallocated by the operating system
    
    
    // Implementation of this technique involves a very clever compiler in combination with compiler hints provided by you, the programmer
    
    
    
    // edited version of our code in inheritance and composition examples
    @interface Button : NSObject;
    @property (nonatomic, strong) Shape *shape;
    @end
    
    @interface Shape : NSObject
    @property (nonatomic, weak) Button *button;
    @end
    /*
     Our focus here is the properties because that is where memory allocation happens.
     
     It is via properties that we provide memory management hints to the compiler.
     
     Here is a template to what we write with our properties:
     @property (nonatomic, memory-directive)
     
     nonatomic refers to threading. Refer to the comment block at the end of this program to see the posts on the Treehouse forum on the topic of threading, as it is an advanced topic a little beyond the scope of the basics.
     
     Most of the time, we'll be using nonatomic and never think about it again.
     
     Memory-directive will be one of the following: strong, weak, copy, or assign
     
     Strong increases the reference count of the object pointed to and ensures that your reference to it is maintained throughout the life of the object
     
     Copy makes a copy of the object to be referenced. Point to the copy instead and set its reference count to 1.
     
     We use copy rather than strong when we want the value of the object fixed at whatever value it has when we reference it.
     
     This is to prevent it being changed by some other object that might refer to it. The mutable versions of NSString and NSArray are examples of objects that can and do change.
     
     Weak points to an object, but doesn't increase its reference count.
     
     This is typically used when we want a parent-child relationship between 2 objects.
     
     The parent will have a strong reference to the child, while the child will have a weak reference back to the parent.
     
     Assign is used for floats, ints, and chars.
     
     These do not have reference counting requirements because they are not pointers.
     
     When we have a property of one of these types (float, int, or char), assign is optional.
     */
    
    @interface Button : NSObject;
    @property (nonatomic, strong) Shape *shape;
    @end
    // the Button property named *shape has a strong reference to the Shape class

    @interface Shape : NSObject
    @property (nonatomic, weak) Button *button;
    @end
    // the Shape property *button has a weak reference to the Button class
    
    // We call this Button-Shape relationship a Parent-Child relationship
    
    
    
    @implementation Circle
    - (float)area {
        return M_PI * self.radius * self.radius;
    }
    @end
    /*
     This is the Circle implementation file
     
     Notice the word... self
     
     A class definition is a blueprint for creating instances of that class
     
     Self is how we refer to the object upon which this method is being called
     
     Self has meaning within the context of a specific instance of a class
     */
    
    
    
    @implementation Circle
    - (float)area {
        return [super area];
    }
    @end
    /*
     Another important Objective-C keyword in the context of a class instance called... super
     
     Calling a method on super is a way to call a method implementation defined by a super class further up the inheritance chain
     
     The most common use of super is when we overwrite a method
     
     When we were talking about and we had a circle class and a rectangle class, circle and rectangle had their own implementation of area. 
     
     Shape had its own implementation of area. 
     
     Circle and rectangle were overridden versions of the method: area. 
     
     So if, from circle and rectangle, we wanted to call the Shape's implementation of area, we would call a square bracket [super area];
     */
    
    return 0;
}

/*
 Posts on Why we use memory directives
 
 A reference count keeps your object alive. Otherwise the OS will garbage collect it. It's the same way in Java. Think of it as a Hollywood star that can only stay alive if at least one person is watching them. If no body watches them anymore, they die.
 
 So knowing that, you know the purpose of strong and weak and why they are implemented. You can also determine that having two objects that have strong pointers to one another is also a bad idea because then neither one of them will ever die and free up their memory back to the system.
 -Micheal Bowen, Treehouse Forums
 
 
 
 */


/*
 Posts on Threading, an advanced concept
 
 Nonatomic has to do with how the property will behave in a threaded environment. If you are running multiple threads, you want to ensure that the getter and setter aren't run at the same time. They would interrupt each other and could cause possible corrupted data.
 
 Properties default to atomic states, which does cost some overhead but remain thread-safe. Since the tutorials aren't really going over multithreaded environments (I think, haven't done them yet), they use a non-atomic (bit faster and less overhead, but not thread-safe).
 
 Strong is required for an attribute that is a pointer to an object. It basically keeps it in the autorelease pool.
 -Russell Beye on Treehouse Forums
 
 The "nonatomic" declaration can be a bit confusing but at this early stage in learning, just remember that all your properties should be nonatomic.
 
 The "strong" pointer is a lot more important to help build your foundation in object oriented language. Almost everything you create is an "object" (i.e. strings, images, views) that gets stored in memory. However, these "objects" only exist in memory if something is "pointing" to them (i.e. using them). For example, you can create the string "Hello World!" and this string would only actually remain in existence if you create a pointer to it. In other words, everything that is not in use, is automatically destroyed because it would be a waste of space to keep it around.
 
 There are 2 types of pointers that you can have; "strong" vs "weak". If a pointer to an object is "weak", this implies that this object will only remain in existence if there is another pointer TO THE SAME OBJECT that is "strong". If a pointer to an object is "strong", this implies that this object will continue to remain in existence until that pointer (and all other "strong" pointers to the object if any other exists) are destroyed.
 
 Therefore it is important to declare your variables correctly either as strong or weak. Which to pick will depend on when you need the object to exist and when you want it to get destroyed.
 -Nick Sint on Treehouse Forums
 */
