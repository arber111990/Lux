function openModalLoginSearch () {
// if (user_signed_in? === false) {
    var modal = document.getElementById('login-modal');

    // Get the button that opens the modal
    var btn = document.getElementById("item-search");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];
    if (!modal === null) {
      btn.onclick = function() {
          modal.style.display = "block";
      }

      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
          modal.style.display = "none";
      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }

    }
    // When the user clicks on the button, open the modal
  }

function openModalLoginList () {

// if (user_signed_in? === false) {
    var modal = document.getElementById('login-modal');

    // Get the button that opens the modal
    var btn = document.getElementById("item-list");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];
    console.log(modal === undefined)
    console.log(modal === null)
    // When the user clicks on the button, open the modal
    if (!modal === null) {
      btn.onclick = function() {
          modal.style.display = "block";
      }

      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
          modal.style.display = "none";
      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }
    }

  }

export { openModalLoginSearch };
export { openModalLoginList };

