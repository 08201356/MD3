use demo2006;
-- In ra các sản phẩm có số lượng từ 30 trở lên.
select * from product
where quantity > 30;
-- In ra các sản phẩm có số lượng từ 30 trở lên và có giá trong khoảng 100 đến 200.
select * from product
where quantity > 30 and (price between 100 and 200);
-- In ra thông tin khách hàng tuổi lớn hơn 18
select * from customer
where age > 18;
-- In ra thông tin khách hàng họ Nguyễn và lớn hơn 20 tuổi
select * from customer
where age > 20 and name like 'Nguyễn%';
-- In ra sản phẩm tên bắt đầu bằng chữ M
select * from product
where name like 'M%';
-- In ra sản phẩm kết thức bằng chữ E
select * from product
where name like '%e';
-- In ra danh sách sản phẩm số lượng tăng dần
select * from product
order by quantity asc;
-- In ra danh sách sản phẩm giá giảm dần
select * from product
order by price desc;
-- In ra tổng số lượng sản phẩm giá nhỏ hơn 300
-- In tổng số sản phẩm theo từng giá
-- In ra sản phẩm có giá cao nhất
-- In ra giá trung bình của tất cả các sản phẩm
-- In ra tổng số tiền nếu bán hết tất cả sản phẩm.
-- Tính tổng số sản phẩm giá <300.
-- Tìm giá bán cao nhất của các sản phẩm bắt đầu bằng chữ M.
-- Tìm giá bán thấp nhất của các sản phẩm bắt đầu bằng chữ M.
-- Tìm giá bán trung bình của các sản phẩm bắt đầu bằng chữ M.
-- In ra tên khách hàng và thời gian mua hàng.
select customer.id, name, time
from customer join 'order' on customer.id = 'order'.customerId;
-- In ra tên khách hàng và tên sản phẩm đã mua
-- In ra tổng số lượng sản phẩm từng loại
-- Đếm số mặt hàng từng loại
-- Tính giá trung bình tất cả các sản phẩm
-- Tính giá trung bình từng loại
-- Tìm sản phẩm có giá lớn nhất theo từng loại
-- Tính tuổi trung bình của các khách hàng
-- Đếm số khách hàng tuổi lớn hơn 30
-- Đếm số lần mua hàng của từng khách hàng
-- Đếm số lượng hóa đơn theo từng tháng
-- In ra mã hoá đơn và giá trị hoá đơn
select orderId, sum(price * orderdetail.quantity) as 'Giá trị hoá đơn' 
from orderdetail join product on orderdetail.productId = product.id
group by orderId;
-- In ra mã hoá đơn và giá trị hoá đơn giảm dần
-- Tính tổng tiền từng khách hàng đã mua

