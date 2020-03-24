 
-- DML Insert User Data

insert into user values
(1, 'tosborne113', 'codingrulz', 'Trevor', 'Osborne', '513-535-6160', 'trevor.osborne113@gmail.com', 0, 1),
(2, 'kosborne7', 'iluvtrevor', 'Kathryn', 'Osborne', '513-123-4567', 'kathryn@osborne.com', 1, 0),
(3, 'henleydog', 'barkwoof25', 'Henley', 'Dog', '513-765-4321', 'henley.thedog@gmail.com', 0, 0);


-- DDL Insert Vendor Data

insert into vendor values
(1, 'AZ1234', 'Amazon', '410 Terry Ave. North', 'Seattle', 'WA', '98109', '206-266-1000', 'Amazon@gmail.com'),
(2, 'TG4321', 'Target', '1000 Nicollet Mall', 'Minneapolis', 'MN', '55403', '612-304-6073', 'Target@gmail.com'),
(3, 'KR063R', 'Kroger', '1014 Vine St', 'Cincinnati', 'OH', '45202', '800-576-4377', 'Kroger@gmail.com');

    
-- DML Insert Product Data

insert into product values
(1, '1', 'AZ1234-987654321', 'Amazon Echo Dot Series 1', '40.00', '', ''),
(2, '1', 'AZ1234-619876315', 'Amazon Fire Stick (2nd Gen)', '22.99', '', '/prs/product/images/AZ1234/619876315.png'),
(3, '1', 'AZ1234-198743546', 'Amazon Echo Show (2nd Gen) Case', '4580.00', 'Case of 20', ''),
(4, '2', 'TG4321-651298794', 'Target Dog Spot', '400.00', '1 Live Dog', ''),
(5, '2', 'TG4321-165158498', 'Target Ketchup', '1.39', '32 oz', '/prs/product/images/TG4321/165158498.png'),
(6, '2', 'TG4321-324549849', 'Target Ice Cream', '14.99', 'Gallon', ''),
(7, '3', 'KR063R-753275398', 'Kroger Ground Beef', '11.94', '3 LB', ''),
(8, '3', 'KR063R-245374837', 'Simple Truth Blue Corn Tortilla Chips', '3.98', '', '/prs/product/images/KR063R/245374837.png'),
(9, '3', 'KR063R-123789767', 'Private Selection Roast Beef', '3.50', 'LB', ''),
(10, '3', 'KR063R-973773783', 'Hemisfares Fusilli Long Spirals Pasta', '3.29', '', '');
