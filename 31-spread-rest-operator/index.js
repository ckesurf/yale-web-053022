/********************** What is the spread operator and why would I want to use it? **********************/

const raffy = {
    name: "Raffy",
    age: 9,
    type: "terrier",
}

const pet = {
    fluffy: true,
    mood: "cheerful",
    health: 100,
    age: 99
}

// Wrong way to make a copy of Raffy
const copyAttempt = raffy


// Correct way using spread operator
const actualCopy = { ...raffy }

// Combining raffy & pet object
const combinedObjs = { ...raffy, ...pet, peppermint: "is nice" }






















/********************** What about arrays?? **********************/

const redVeggies = ["red cabbage", "red onion", "rhubarb"]
const greenVeggies = ["spinach", "lettuce", "zucchini"]

// Wrong way to make a copy of redVeggies
const redVeggiesCopyAttempt = redVeggies

// Correct (sugared) way using spread operator
const actualCopyRedVeggies = [...redVeggies]

// Combining redVeggies & greenVeggies arrays
const combinedVeggues = [...redVeggies, ...greenVeggies, "rainbow"]

































/********************** Function Example **********************/
// Spread
function sumThreeNums(x, y, z) {
    console.log(x, y, z)
    return x + y + z
}

const arr = [3, 5, 7]
// const mySum = sumThreeNums(arr[0], arr[1], arr[2])

// const mySum = sumThreeNums(...arr)

































/********************** Rest Parameter **********************/
/* 
- Collects all remaining elements into an array
- Allows us to take an unlimited number of arguments 
 into the function
- Must be the last paramter 
*/
function dynamicSum(num1, num2, ...moreArgs) {
    // const myArgs = new Array(num1, num2, num3)
    // console.log(num1, num2, num3)
    // debugger

    return moreArgs.reduce((acc, currVal) => {
        return acc + currVal
    }, 0)
}

const sum = dynamicSum(1, 4, 5, 8, 9, 10)

























/********************** Rest Operator With Destructuring **********************/
const nums = [0, 1, 2, 3, 4, 5, 6, 7]

const spring = {
    temperature: 'temperate',
    activities: ['running', 'walks', 'hiking', 'gardening'],
    isDaylightSaving: true
}




const [a, b, ...remainingItems] = nums


const { temperature, ...remainingProps } = spring