const videosExecution = () => {
  if (document.querySelectorAll(".btn-link")) {
    const videos = document.querySelectorAll(".btn-link");
    videos.forEach((video) => {
      video.addEventListener("click", (event) => {
        if (!(event.currentTarget.dataset.clicked === "true")) {
          const progressBar = document.querySelector("#video-progress");
          const counter = Number(progressBar.dataset.counter) + 1;
          progressBar.dataset.counter = counter;
          const totalVideos = Number(progressBar.dataset.total);
          const progressPercent = Math.trunc((counter / totalVideos) * 100);
          progressBar.ariaValueNow = `${progressPercent}`;
          progressBar.style.width = `${progressPercent}%`;
          const url = event.currentTarget.dataset.url;
          event.currentTarget.dataset.clicked = "true";
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
  }
};

export { videosExecution };
