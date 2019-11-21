const manageNumberOfRidersInput = () => {
  const lessBtn = document.querySelector(".less-button");
  const plusBtn = document.querySelector(".plus-button");
  const input = document.getElementById("booking_number_of_users");
  const maxNumber = parseInt(input.max, 10);
  plusBtn.addEventListener('click', (event) => {
    let inputValue = parseInt(input.value, 10);
    if (inputValue !== maxNumber) {
      inputValue = inputValue +1;
      input.value = inputValue;
    }
  })
  lessBtn.addEventListener('click', (event) => {
    let inputValue = parseInt(input.value, 10);
    if (inputValue !== 0) {
      inputValue = inputValue -1;
      input.value = inputValue;
    }
  })

};

export { manageNumberOfRidersInput };
