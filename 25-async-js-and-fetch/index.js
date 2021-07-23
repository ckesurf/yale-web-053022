function sleep(time) {
    const start = new Date()
    while (new Date() - start < time * 1000) {
        // do nothing & block the main thread 
    }
}


// document.querySelector('button').addEventListener('click', () => {
//     console.log("CLICKED !!!")
// })


// // translated Ruby code from synch.rb
// console.log("Hello World!")
// console.log("brb, gonna go sleep for a sec")
// // sleep(5)

// setTimeout(() => {
//     console.log('inside of timeout')
// }, 5000)

// console.log("What a nice cat nap that was!")


console.log('before fetch')

// fetch('https://randomfox.ca/floof/')
//     .then(response => response.json())
//     .then(data => console.log(data));






const btn = document.querySelector('#get-fox-btn')

btn.addEventListener('click', () => {
    
    fetch('https://randomfox.ca/floof/')
        .then(response => response.json())
        .then(data => {
            console.log(data)
            // DOM MANIPULATION
            const img = document.querySelector('img')
            console.log(img)
            img.src = data.image
        })


})