// Creating and inserting elements

// Creating cookie message
const header = document.querySelector('.container');
const message = document.createElement('div');
message.classList.add('cookie-message');
// message.textContent = 'We use cookies for improved functionality and analytics.';
message.innerHTML = 'We use cookies for improved functionality and analytics. <button class="button-cookie btn--close-cookie">Got it!</button>';

// header.prepend(message);
header.before(message);

document.querySelector('.btn--close-cookie').addEventListener('click', function() {
  message.remove();
})
