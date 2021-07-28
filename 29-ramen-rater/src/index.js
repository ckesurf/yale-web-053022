// write your code here
const menuDiv = document.querySelector('div#ramen-menu')
const updateForm = document.querySelector('form#ramen-rating')
const newRamenForm = document.querySelector('form#new-ramen')
const deleteButton = document.querySelector('button.delete-btn')


function featureOneRamen(ramen) {
    const detailImg = document.querySelector('img.detail-image')
    detailImg.src = ramen.image

    const detailH2 = document.querySelector('h2.name')
    detailH2.textContent = ramen.name

    const detailH3 = document.querySelector('h3.restaurant')
    detailH3.textContent = ramen.restaurant

    updateForm.dataset.id = ramen.id

    const ratingInput = updateForm.querySelector('input#rating')
    ratingInput.value = ramen.rating

    const commentInput = updateForm.querySelector('textarea#comment')
    commentInput.value = ramen.comment
}


function renderOneRamen(ramen) {
    const imgTag = document.createElement('img')
    imgTag.src = ramen.image
    imgTag.dataset.id = ramen.id

    menuDiv.append(imgTag)
}

function renderAllRamen() {
    fetch('http://localhost:3000/ramens')
        .then(r => r.json())
        .then(ramens => {
            menuDiv.innerHTML = ''
            featureOneRamen(ramens[0])

            ramens.forEach(ramen => {
                renderOneRamen(ramen)
            })
        })
}


menuDiv.addEventListener('click', e => {

    if (e.target.matches('img')) {
        console.log('click ', e.target)
        const id = e.target.dataset.id

        fetch('http://localhost:3000/ramens/' + id)
            .then(r => r.json())
            .then(ramen => {
                featureOneRamen(ramen)
            })
    }
})



updateForm.addEventListener('submit', e => {
    e.preventDefault()

    const ratingInput = e.target.rating.value
    const commentInput = e.target.comment.value

    fetch('http://localhost:3000/ramens/' + e.target.dataset.id, {
        method: 'PATCH',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ rating: ratingInput, comment: commentInput })
    })
        .then(r => r.json())
        .then(updatedRamen => {
            console.log(updatedRamen)
        })
})




newRamenForm.addEventListener('submit', e => {
    e.preventDefault()

    const name = e.target.name.value
    const restaurant = e.target.restaurant.value
    const image = e.target.image.value
    const rating = e.target.rating.value
    const comment = e.target['new-comment'].value


    fetch('http://localhost:3000/ramens', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ name: name, restaurant: restaurant, image: image, rating: rating, comment: comment })
    })
        .then(r => r.json())
        .then(newRamen => {
            featureOneRamen(newRamen)
            renderOneRamen(newRamen)
            e.target.reset()
        })
})



deleteButton.addEventListener('click', e => {
    console.log('button clicked!!!')
    // debugger

    const id = e.target.parentElement.dataset.id

    fetch('http://localhost:3000/ramens/' + id, {
        method: 'DELETE'
    })
        .then(r => r.json())
        .then(() => {
            // const menuImg = document.querySelector(`img[data-id="${id}"]`)
            // menuImg.remove()

            renderAllRamen()
        })
})




renderAllRamen()
