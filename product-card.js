// product-card.js
document.addEventListener('DOMContentLoaded', function () {
  const buttons = document.querySelectorAll('.add-to-cart');

  buttons.forEach(button => {
    button.addEventListener('click', function () {
      button.textContent = 'Added';
      button.classList.add('added');
    });
  });
});
