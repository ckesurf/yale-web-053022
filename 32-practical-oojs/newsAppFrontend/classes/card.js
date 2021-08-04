class Card {

    constructor(articleObj) {
        this.article = articleObj

        // option 1
        // this.handleDeleteClick = this.handleDeleteClick.bind(this)
    }

    //option 2
    // use arrow functions for callbacks to make your life simpler (:
    handleDeleteClick = () => {
        console.log(this)
        fetch(`http://localhost:3000/articles/${this.article.id}`, {
            method: 'DELETE'
        })
            .then(r => r.json())
            .then(() => {
                this.outerDiv.remove()
            })
    }

    handleLikeClick = () => {
        console.log('like clicked')
        // let card = event.target.closest('div.card')  // this.outerDiv

        let likesNumSpan = this.outerDiv.querySelector('p.react-count span')
        this.article.likes += 1


        fetch(`http://localhost:3000/articles/${this.article.id}`, {
            method: 'PATCH',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ likes: this.article.likes })
        })
            .then(r => r.json())
            .then(updatedArticleObj => {
                console.log(updatedArticleObj)
                // likesNumSpan.textContent = updatedArticleObj.likes
                likesNumSpan.textContent = this.article.likes
            })
    }

    render() {
        this.outerDiv = document.createElement('div')
        this.outerDiv.classList.add('card')
        this.outerDiv.dataset.id = this.article.id

        this.outerDiv.innerHTML = `
                    <div class="img-container">
                        <img src="${this.article.image}"
                            alt="${this.article.title}" />
                        <div class="article-title-container">
                            <h4>${this.article.title}</h4>
                        </div>
                    </div>
                    <div class="content">
                        <p class='author'>Author: ${this.article.author}</p>
    
                        <div class="scroll">
                            <p class='description'>${this.article.description}</p>
                        </div>
                        <p class="react-count"><span>${this.article.likes}</span> likes</p>
                        <button class="like-button">♥️ Like</button>
                        <button class='delete-button'>X</button>
                    </div>
                    `

        const delButton = this.outerDiv.querySelector('button.delete-button')
        const likeButton = this.outerDiv.querySelector('button.like-button')

        delButton.addEventListener('click', this.handleDeleteClick)
        likeButton.addEventListener('click', this.handleLikeClick)

        const collectionDiv = document.querySelector("div#collection")
        collectionDiv.append(this.outerDiv)
    }


    static renderAllCards() {
        fetch('http://localhost:3000/articles')
            .then(r => r.json())
            .then(articlesArray => {
                articlesArray.forEach(articleObj => {
                    // createOneCard(articleObj)
                    const card = new Card(articleObj)
                    card.render()
                })
            })
    }
}