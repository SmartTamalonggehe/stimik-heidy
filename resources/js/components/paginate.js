const showPaginate = (res, paginate) => {
    const { current_page, last_page } = res;
    // paginate previous next first last
    const html = [];
    if (current_page > 1) {
        html.push(`<li class="page-item">
                    <a class="page-link" data-id="${
                        current_page - 1
                    }" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>`);
    }

    //    show 1 if current page more than 3
    if (current_page > 3) {
        html.push(
            `<li class="page-item"><a class="page-link" data-id="${1}" href="#">1</a></li>`
        );
        html.push(
            `<li class="page-item"><a class="page-link" href="#">...</a></li>`
        );
    }
    for (let i = 1; i <= last_page; i++) {
        // show 3 page before and after current page
        if (i <= current_page + 2 && i >= current_page - 2) {
            if (i === current_page) {
                html.push(`<li class="page-item active">
                            <a class="page-link" data-id="${i}" href="#">${i}</a>
                        </li>`);
            } else {
                html.push(`<li class="page-item">
                            <a class="page-link" data-id="${i}" href="#">${i}</a>
                        </li>`);
            }
        }
    }
    //    show 1 if current page less than 3
    if (current_page < last_page - 2) {
        html.push(
            `<li class="page-item"><a class="page-link" href="#">...</a></li>`
        );
        html.push(
            `<li class="page-item"><a class="page-link" data-id="${last_page}" href="#">${last_page}</a></li>`
        );
    }

    if (current_page < last_page) {
        html.push(
            `<li class="page-item">
                    <a class="page-link" data-id="${
                        current_page + 1
                    }" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>`
        );
    }
    paginate.innerHTML = html.join("");
};

export default showPaginate;
