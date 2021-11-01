# Creational Patterns

## Factory Method

Is a creational design pattern that provides an **interface for creating objects in a superclass**, but allows subclasses to alter the type of objects that will be created.

### Pros ✅

- You avoid tight coupling between the creator and the concrete products.
- Single Responsibility Principle. You can move the product creation code into one place in the program, making the code easier to support.
- Open/Closed Principle. You can introduce new types of products into the program without breaking existing client code.

### Cons ❌

- The code may become more complicated since you need to introduce a lot of new subclasses to implement the pattern. The best case scenario is when you’re introducing the pattern into an existing hierarchy of creator classes.

---

*You can find full explanation at [refactoring.guru](https://refactoring.guru/design-patterns/factory-method).*
