const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

allSideMenu.forEach(item => {
    const li = item.parentElement;

    item.addEventListener('click', function() {
        allSideMenu.forEach(i => {
            i.parentElement.classList.remove('active');
        })
        li.classList.add('active');
    })
});




// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function() {
    sidebar.classList.toggle('hide');
    if (sidebar.classList.contains("hide")) {
        menuBar.classList.replace("bx-menu", "bx-menu-alt-right");
    } else
        menuBar.classList.replace("bx-menu-alt-right", "bx-menu");

})

//search navbar
const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function(e) {
    if (window.innerWidth < 576) {
        e.preventDefault();
        searchForm.classList.toggle('show');
        if (searchForm.classList.contains('show')) {
            searchButtonIcon.classList.replace('bx-search', 'bx-x');
        } else {
            searchButtonIcon.classList.replace('bx-x', 'bx-search');
        }
    }
})

//search list
const searchButtonList = document.querySelector('.order form .form-input button');
const searchButtonIconList = document.querySelector('.order form .form-input button .bx');
const searchFormList = document.querySelector('.order form');

searchButtonList.addEventListener('click', function(e) {
    if (window.innerWidth > 0) {
        e.preventDefault();
        searchFormList.classList.toggle('show');
        if (searchFormList.classList.contains('show')) {
            searchButtonIconList.classList.replace('bx-search', 'bx-x');
        } else {
            searchButtonIconList.classList.replace('bx-x', 'bx-search');
        }
    }
})


//Search auto
$(document).ready(
    		function() {
    			$("#myInput").on("keyup",function() {
    			var value = $(this).val().toLowerCase();
    			$("#myTable tr").filter(function() {
    				$(this).toggle(
    					$(this).text().toLowerCase().indexOf(value) > -1)
    				});
    			});
    		});
$(document).ready(
    		function() {
    			$("#myInputList").on("keyup",function() {
    			var value = $(this).val().toLowerCase();
    			$("#myTable tr").filter(function() {
    				$(this).toggle(
    					$(this).text().toLowerCase().indexOf(value) > -1)
    				});
    			});
    		});


if (window.innerWidth < 768) {
    sidebar.classList.add('hide');
} else if (window.innerWidth > 576) {
    searchButtonIcon.classList.replace('bx-x', 'bx-search');
    searchForm.classList.remove('show');
}


window.addEventListener('resize', function() {
    if (this.innerWidth > 576) {
        searchButtonIcon.classList.replace('bx-x', 'bx-search');
        searchForm.classList.remove('show');
    }
})

//Hàm chuyển đổi màu sắc
const body = document.querySelector("body"),
    switchMode = document.querySelector(".switch-mode");
let getItem = localStorage.getItem("theme");
let getBG = localStorage.getItem("backgd");
if (getItem && getItem === "dark") {
    body.classList.add("dark");
}
if (getBG && getBG === "active") {
    switchMode.classList.add("active");
}
switchMode.addEventListener('click', () => {
    body.classList.toggle("dark");
    if (!body.classList.contains("dark")) {
        return localStorage.setItem("theme", "light");
    }
    localStorage.setItem("theme", "dark");
});
switchMode.addEventListener('click', () => {
    switchMode.classList.toggle("active");
    if (!switchMode.classList.contains("active")) {
        return localStorage.setItem("backgd", "");
    }
    localStorage.setItem("backgd", "active");
});
console.log(getItem);