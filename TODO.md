default {
    users {
        uid {
            addresses {
                line_1
                line_2
                zipcode
                governorate
                city
                country
            }
            cart {}
            orders {
                address {}
                phone
                name
                cart {}
                status
            }
        }
    }
    products {}
    copy_center {}
}

TODO:
    -Add address on registration
    -Add addresses from profile
    -Products page/home page adds items to cart
    -Copy center services in products page
    -Cart class
        handles adding and removing products to cart
    -Order class
        takes from cart 
    -Order history in profile