const initCheckboxes = () => {
  const checkBoxes = document.querySelectorAll(".mood-checkbox")
  console.log(checkBoxes);
  if (checkBoxes.length >= 1) {
    Array.from(checkBoxes).forEach(checkbox => {
      checkbox.addEventListener('click', (event) => {
        console.log(event.currentTarget);
        event.currentTarget.classList.toggle('active');
        const checkBoxId = event.currentTarget.dataset.for;
        console.log(checkBoxId);
        const hiddenCheckbox = document.querySelector(`#${checkBoxId}`);
        console.log(hiddenCheckbox);
        if (hiddenCheckbox.checked) {
          hiddenCheckbox.checked = false;
        } else {
          hiddenCheckbox.checked = true;
        };
      });
    });
  };
};

export {initCheckboxes};
