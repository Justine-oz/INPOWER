const totalExecution = () => {
  const videos = document.querySelectorAll(".btn-link");
  videos.forEach((video) => {
    video.addEventListener("click", (event) => {
      console.log(event.currentTarget.dataset);
        const progressTotal = document.querySelector("#total-progress");
        const counter = Number(progressTotal.dataset.counter) + 1;
        progressTotal.dataset.counter = counter;
        const totalHeart = Number(progressTotal.dataset.total);
        const progressPercent = Math.trunc((counter / totalHeart) * 100);
        progressTotal.ariaValueNow = `${progressPercent}`;
        progressTotal.style.width = `${progressPercent}%`;
        const url = event.currentTarget.dataset.url;
        fetch(url, {
          method: "GET",
        })
          .then((response) => response.json())
          .then((data) => {
            console.log(data); // Look at local_names.default
          });
      }
    });
  });
};
export { totalExecution };
