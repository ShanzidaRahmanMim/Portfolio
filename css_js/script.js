const header = document.querySelector("header");
window.addEventListener("scroll", function () {
    header.classList.toggle("sticky", window.scrollY > 120);
});
let menu = document.querySelector('#menu-icon');
let navlist = document.querySelector('.navlist');

menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navlist.classList.toggle('active');
};
window.onscroll = () => {
    menu.classList.remove('bx-x');
    navlist.classList.remove('active');
};
function sendMsg()
{
    var name = document.getElementById('nameeId');
    var email = document.getElementById('emailId');
    var phone = document.getElementById('phoneId');
    var text = document.getElementById('textId');
    const msg = document.getElementById('msg');
    const empty = document.getElementById('empty');
    var btn = document.getElementsByClassName('send-btn');
    var form = document.getElementsByClassName("contact-form");
    // form.addEventListener('submit',e =>{
    // e.preventDefault();
    if (name.value === '' || email.value === '' || text.value === '' || phone.value) {
        empty.style.display = 'block';
    }
    else {
        setTimeout(() => {
            name.value = '';
            email.value = '';
            phone.value = '';
            text.value = '';
        }, 2000);
        msg.style.display = 'block';
    }

    setTimeout(() => {
        msg.style.display = 'none';
        empty.style.display = 'none';
    }, 2000);
    //  msg.innerHTML="Message sent";
    //  setTimeout(function()
    //  {
    //     msg.innerHTML=""
    //  },5000)
    //  form.reset()

}


