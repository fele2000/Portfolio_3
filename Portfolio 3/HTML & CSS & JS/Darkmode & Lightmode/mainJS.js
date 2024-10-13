
const toggleButton = document.querySelector('.theme-toggle');
const body = document.body;
const sunIcon = document.querySelector('.sun-icon');
const moonIcon = document.querySelector('.moon-icon');

// Toggle between light and dark mode when the button is clicked
toggleButton.addEventListener('click', () => {
    // I think this add/removes a 'dark-mode' token in all classes in the 'body' part of the code
    // I Would like this explained a little further, as I feel like I only have surface level understanding of it.
    body.classList.toggle('dark-mode');

    // Toggle the visibility of the sun and moon icons based on dark mode
    if (body.classList.contains('dark-mode')) {
        moonIcon.style.display = 'inline-block';
        sunIcon.style.display = 'none';
    } else {
        moonIcon.style.display = 'none';
        sunIcon.style.display = 'inline-block';
    }
});
