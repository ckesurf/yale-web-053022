// function doubleIt(num) {
//     return num * 2
// }

// const doubleIt = (num) => {
//     return num * 2
// }

// doubleIt(10) // ERROR

// single lined arrow functions have implicit return without the curly braces and without the return keyword
const doubleIt = num => num * 2


// when implicitely returning an object, surround it with parenthesis
const createPetFunction = (nameStr, ageNum) => ({ name: nameStr, age: ageNum })



// greeting() // ok


function greeting() {
    console.log('Hello')
}



























/********************** forEach **********************/
// executes a provided function once for each element
// in the array


// nums.forEach(function (num) {
//     console.log(num)
// })

// nums.forEach(num => console.log(num))

// nums.forEach(console.log)


/********************** MAP **********************/
// Transforms an array
// Returns a new array containing the transformed values
// (Does not mutate the original array)
// Callback should return the transformation

// const tranformedArr = nums.map(function (num) {
//     return num * 3
// })

// const tranformedArr = nums.map(num => num * 3)





/********************** FILTER **********************/
// Returns a subarray satisfying a condition
// Does not mutate the original array
// Callback should return a boolean


// const filteredBooks = books.filter(function (book) {
//     return book.yearRead < 2016
// })
const filteredBooks = books.filter(book => book.yearRead < 2016)

