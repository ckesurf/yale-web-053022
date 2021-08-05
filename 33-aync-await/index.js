// async await 

function getFoxPic() {
  fetch("https://randomfox.ca/floof/")
    .then(response => response.json())
    .then(data => console.log(data))

  console.log(data)
}

// async function getFoxPic() {
//   const response = await fetch("https://randomfox.ca/floof/")
//   const data = await response.json()
//   console.log(data)
// }
function foo(data) {
  console.log(data)
}



const getFoxPic = async () => {
  const response = await fetch("https://randomfox.ca/floof/")
  const data = await response.json()
  return data
}


// const data = await getFoxPic() // WILL NOT WORK - await can only be used
// inside of asyn functions

getFoxPic().then(data => console.log(data))

console.log("hello")