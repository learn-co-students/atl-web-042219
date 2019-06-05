console.log("A");
fetch(url)
  .then(res => {
    console.log("B");
    return res.json();
  }
).then(data => console.log("C"))
console.log("D")
