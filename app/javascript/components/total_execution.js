const totalExecution = () => {
  if (document.querySelectorAll(".btn-link")) {
    const videos = document.querySelectorAll(".btn-link");
    videos.forEach((video) => {
      video.addEventListener("click", (event) => {
        const progressTotal = document.querySelector("#total-progress");
        const counter = Number(progressTotal.dataset.counter) + 1;
        progressTotal.dataset.counter = counter;
        const totalHeart = Number(progressTotal.dataset.total);
        const progressPercent = Math.trunc((counter / totalHeart) * 100);
        progressTotal.ariaValueNow = `${progressPercent}`;
        progressTotal.style.width = `${progressPercent}%`;
      });
    });
  }
};

export { totalExecution };
