(function () {

    const smallThumbnails = document.querySelectorAll('.small-thumbnail');
    const indicatorBtns = document.querySelectorAll('.indicator-btn');
    const carouselItems = document.querySelectorAll('#carouselCourseThumbnail .carousel-item')
    const addToCartBtn = document.getElementById('addToCartBtn');
    const amountInput = document.querySelector('input[name="amount"]');
    const increaseAmountBtn = document.querySelector('.increase-btn');
    const decreaseAmountBtn = document.querySelector('.decrease-btn');
    const courseName = document.getElementById('courseDetailName').innerText;

    const amountInputValue = {
        oldValue: amountInput.value,
        newValue: 1,
    }

    const setActiveClass = (elements, targetIndex) => {
        elements.forEach((element, index) => {
            element.classList.toggle('active', index === targetIndex);
        });
    };

    const handleThumbnailClick = (smallThumbnail, index) => {
        indicatorBtns[index].click();
        setActiveClass(smallThumbnails, index);
    };

    const updateHeaderCartNumber = async () => {
        const response = await fetch('/api/v1/cart')
        const json = await response.json();
        const number = json.data;

        const headerCartNumber = document.getElementById('headerCartNumber');
        const headerCartNumberMobile = document.getElementById('headerCartNumberMobile');

        headerCartNumber.innerText = number;
        headerCartNumberMobile.innerText = number;
    }

    const handleAddToCartClick = async () => {
        const getLoginUserResponse = await fetch('/api/v1/user-data');
        const getLoginJson = await getLoginUserResponse.json();
        if(getLoginJson.statusCode === 404) {
            const toast = new Toast('Vui lòng đăng nhập để có thể thêm vào giỏ hàng', 'danger');
            console.log(toast.getBackground());
            toast.show();
        } else {
            const amount = document.querySelector('input[name="amount"]').value;
            const courseId = document.querySelector('#courseDetail').getAttribute('course-id');
            const formData = new FormData();
            formData.append('courseId', courseId);
            formData.append('amount', amount);
            const addToCartResponse = await fetch('/api/v1/cart', {
                method: 'POST',
                body: formData,
            })

            const addToCartJson = await addToCartResponse.json();
            if(addToCartJson.statusCode === 200) {
                await updateHeaderCartNumber();
                const toast = new Toast("Thêm vào giỏ hàng thành công", 'success');
                toast.show();
            }
        }
    }

    const changeAction = {
        INCREASE: 'INCREASE',
        DECREASE: 'DECREASE',
    }

    /**
     * 
     * @param {String} type 
     * @param {HTMLInputElement} amountInput 
     */
    const handleChangeAmountClick = (type, amountInput) => {
        let newValue = 0;
        switch (type) {
            case changeAction.INCREASE:
                newValue = parseInt(amountInput.value) + 1;
                amountInput.value = newValue;
                amountInputValue.oldValue = newValue;
                break;
            case changeAction.DECREASE:
                newValue = parseInt(amountInput.value) - 1;
                if(newValue < 1)
                    newValue = 1;
                amountInput.value = newValue;
                amountInputValue.oldValue = newValue;
                break;
            default:
                break;
        }
    }

    const isValidNumber = inputString => {
        // Sử dụng biểu thức chính quy để kiểm tra xem chuỗi có chứa ký tự khác ngoài số hay không
        var regex = /^\d+$/; // Biểu thức chính quy này kiểm tra xem toàn bộ chuỗi có phải là số không
        return regex.test(inputString);
    }
    

    /**
     * 
     * @param {Event} e 
     * @param {Object} amountInputValue
     */
    const handleAmountInputChange = (e, amountInputValue) => {
        amountInputValue.newValue = e.target.value;
        if(!isValidNumber(amountInputValue.newValue))
            e.target.value = amountInputValue.oldValue;
        else {
            amountInputValue.oldValue = amountInputValue.newValue;
        }
    }

    amountInput.oninput = e => {
        handleAmountInputChange(e, amountInputValue);
    }

    increaseAmountBtn.onclick = () => {
        handleChangeAmountClick(changeAction.INCREASE, amountInput);
    }

    decreaseAmountBtn.onclick = () => {
        handleChangeAmountClick(changeAction.DECREASE, amountInput);
    }

    const setCourseIdToLocalStorage = () => {
        const courseId = document.querySelector('#courseDetail').getAttribute('course-id');
        let storageCourseId = localStorage.getItem('course-id');
        if(storageCourseId === null)
            localStorage.setItem('course-id', courseId);
        else {
            let courseIds = storageCourseId.split(',');
            if(courseIds.length < 4) {
                courseIds = [courseId].concat(courseIds);
                const courseIdSet = new Set();
                for(let i = 0; i < courseIds.length; i++)
                    courseIdSet.add(courseIds[i]);
                const saveItems = Array.from(courseIdSet).join(',');
                localStorage.setItem('course-id', saveItems);
            }
            else {
                courseIds = [courseId].concat(courseIds);
                const courseIdSet = new Set();
                for(let i = 0; i < courseIds.length; i++)
                    courseIdSet.add(courseIds[i]);
                if(courseIdSet.size > 4) {
                    let newArray = Array.from(courseIdSet);
                    newArray.pop();
                    courseIds = newArray;
                }
                else courseIds = Array.from(courseIdSet);
                console.log(courseIds);
                const saveItems = courseIds.join(',');
                localStorage.setItem('course-id', saveItems);
            }
        }
    }

    const createCourseHistory = async selector => {
        const renderBlock = document.querySelector(selector);
        const courseTemplate = new CourseTemplate();
        const ids = localStorage.getItem('course-id');
        const courseHistoryHtml = await courseTemplate.render(`/api/v1/courses/multiple?ids=${ids}`);
        renderBlock.innerHTML = courseHistoryHtml;
        price();
    }

    const init = () => {
        createCourseHistory('#courseHistory .course-history-wrapper');
        createBreadcrumb('#courseDetailBreadcrumb', [
            {name: 'Trang chủ', link: '/home', active: false},
            {name: 'Tất cả khoá học', link: '/courses', active: false},
            {name: courseName, link: '/details', active: true},
        ]);
        firstActive(carouselItems);
        firstActive(smallThumbnails);
        firstActive(indicatorBtns);
        setCourseIdToLocalStorage();
    }

    const firstActive = elements => {
        elements[0].classList.add('active');
    }
    
    smallThumbnails.forEach((smallThumbnail, index) => {
        smallThumbnail.onclick = () => handleThumbnailClick(smallThumbnail, index);
    });

    addToCartBtn.onclick = async () => await handleAddToCartClick();

    init();
})();
