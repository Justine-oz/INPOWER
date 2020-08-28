const flashcardsExecution = () => {
  if (document.querySelectorAll(".flashcard-button")) {
    const buttons = document.querySelectorAll(".flashcard-button");
    if (buttons.length >= 1) {
      buttons.forEach((button) => {
        button.addEventListener("click", (event) => {
          const progressBar = document.querySelector("#flashcard-progress");
          const counter = Number(progressBar.dataset.counter) + 1;
          progressBar.dataset.counter = counter;
          const totalFlashcards = Number(progressBar.dataset.total);
          const progressPercent = Math.trunc((counter / totalFlashcards) * 100);
          progressBar.ariaValueNow = `${progressPercent}`;
          progressBar.style.width = `${progressPercent}%`;
          const url = event.currentTarget.dataset.url;
          fetch(url, {
            method: "GET",
          })
          .then((response) => response.json())
          .then((data) => {
            console.log(data); // Look at local_names.default
          });
        });
      });
    }
  }
};

export { flashcardsExecution };
