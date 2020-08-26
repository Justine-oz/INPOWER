import ProgressBar from "progressbar.js"

const initHeartProgress = () => {
  const heartProgress = document.querySelector("#heart-progress")
  if (heartProgress) {
    const progressValue = Number(heartProgress.dataset.total)/100
    const bar = new ProgressBar.Path('#heart-path', {
      easing: 'easeInOut',
      duration: 1400
    });

    bar.set(0);
    bar.animate(progressValue);  // Number from 0.0 to 1.0
  }
};

export { initHeartProgress };
