window.addEventListener('load', function(){
  const pullDownButton = document.getElementById("lists")
  
  pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "background-color: lightgray;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.removeAttribute("style", "background-color: lightgray;")
  })

  pullDownButton.addEventListener('click', function() {
    console.log("click OK")
  })

})