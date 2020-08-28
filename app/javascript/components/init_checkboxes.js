const initCheckboxes = () => {
  const checkBoxes = document.querySelectorAll(".card.col-5.mood-checkbox");
  if (checkBoxes.length >= 1) {
    Array.from(checkBoxes).forEach((checkbox) => {
      checkbox.addEventListener("click", (event) => {
        event.currentTarget.classList.toggle("active");
        const checkBoxId = event.currentTarget.dataset.for;
        const hiddenCheckbox = document.querySelector(`#${checkBoxId}`);
        if (hiddenCheckbox.checked) {
          hiddenCheckbox.checked = false;
        } else {
          hiddenCheckbox.checked = true;
        }
      });
    });
  }
};

export { initCheckboxes };
