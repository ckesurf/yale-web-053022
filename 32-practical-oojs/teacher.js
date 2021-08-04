class Teacher {
    // class/static variable
    static all = []


    // constructor equivalent to Ruby's initialize method
    constructor(firstName, lastName, age, height) {
        this.firstName = firstName
        this.lastName = lastName
        this.age = age
        this.height = height

        Teacher.all.push(this)
    }


    // instance method - can only be invoked by an instance (ian, annie, etc)
    introduce() {
        // console.log(`Hi, my name is ${this.firstName}`)
        return `Hi, my name is ${this.firstName}`
    }


    // class/static method - can only be invoked by class (TEACHER)
    static listAllNames() {
        return Teacher.all.map(teacher => teacher.firstName)
    }


}


// Creating instances
let ian = new Teacher("Ian", "Hollander", 10, "90cm")
let annie = new Teacher("Annie", "Zheng", 11, "92cm")

// Classes have an object called prototype
// instances have an object called __proto__
// A class's prototype becomes an intance's proto