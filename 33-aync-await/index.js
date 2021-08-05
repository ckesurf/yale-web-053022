function getFoxPic() {
    fetch("https://randomfox.ca/floof/")
        .then(response => response.json())
        .then(data => console.log(data))
}

  // getFoxPic()