  const stars = document.querySelectorAll(".far");
  const rating_input = document.getElementById('review_rating');
  stars.forEach(star => {
    star.addEventListener("click", (event) => {
      stars.forEach(star => {
        if (parseInt(star.id,10) <= (parseInt(event.target.id,10)) ) {
          star.style.color = "orange";
        } else {
          star.style.color = "grey";
        }
        console.log(star.attributes);
      });
      rating_input.value = event.target.id;
    });
  });
