console.log('%cHello World', 'color: red')
console.log('My name is Michelle')


// debugger



// Primitive Data Types in JavaScript
// 1. Symbol
let sym = Symbol('foo')

// 2. undefined
// system level, error-like absence of a value

// 3. null
// expected absence of a value

// 4. Boolean

// 5. Number


// 6. String

const str1 = 'This is a string'
const str2 = "This is also a string"
const str3 = `Hello. ${str2}` // string interpolation
const str4 = str1 + " Cheese!"
const str5 = "hello ${str1}" // not string interpolation ): 

// 7. BigInt
// 2^53 -1
const bignum = 10n
const anotherBugNum = BigInt(98765498)



// Non-primitive types
// anything that isn't a primitive in JS is a non-primitive type

// object / object literals / POJOs - plain old javascript objects
const raffy = {
    name: "Raffy",
    age: 9,
    "is-cool": true
}

// raffy["age"]
// raffy.age ⭐️
// raffy["is-cool"]


// const arr = [1, 2, 3, 4]


// function isItEven(arrArgument) {
//     if (arrArgument.length % 2 === 0) {
//         // if block
//         console.log("It's even!")
//         return true // explicit returns!
//     }
//     else {
//         console.log("It's odd!!")
//         return false
//     }
// }


// const theTruth = isItEven(arr)


// = -> assigment
// == -> losely comparing two values
// === -> strictly comparing two values



const arr2 = [1, 2, 3, 4]





// arr2.forEach(function beef(num, i, arr) {
//     console.log(num)
//     console.log(i)
//     console.log(arr)
//     console.log("")
// })

function beef(num, i, arr) {
    console.log(num)
    console.log(i)
    console.log(arr)
    console.log("")
}


// arr2.forEach(beef()) <--- NOT GOOD D:
arr2.forEach(beef)




function greeting() {
    return "Hello there,"
}


function greetMe(fnc, name) {
    debugger
    // const smthn = fnc()
    // console.log(smthn + name)
    console.log(fnc() + name)
}