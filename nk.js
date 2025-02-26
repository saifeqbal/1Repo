document.getElementById('open-dialog').addEventListener('click', function() {
    document.getElementById('dialog').style.display = 'flex';
});

document.querySelector('.close-button').addEventListener('click', function() {
    document.getElementById('dialog').style.display = 'none';
});