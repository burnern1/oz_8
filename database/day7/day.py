import pymysql

# 데이터베이스 연결 설정
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='',
    database='fishbread_db',
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)
try:
    with connection.cursor() as cursor:
        # 1. 새로운 사용자 "8ki joa" 추가
        sql_add_user = """
        INSERT INTO users (name, address, phone_number, email) 
        VALUES ('8ki joa', '123 Default St', '010-1234-5678', '8ki.joa@example.com');
        """
        cursor.execute(sql_add_user)

        # 2. 사용자 "8ki joa"의 주소 변경
        sql_update_address = """
        UPDATE users
        SET address = '456 New Address Ave'
        WHERE name = '8ki joa';
        """
        cursor.execute(sql_update_address)

        # 3. 1번 store에서 사용자 "8ki joa"의 주문 생성
        sql_create_order = """
        INSERT INTO orders (store_id, user_name, product_name, quantity) 
        VALUES 
        (1, '8ki joa', '팥 붕어빵', 3),
        (1, '8ki joa', '크림 붕어빵', 2),
        (1, '8ki joa', '시그니처 메뉴', 5);
        """
        cursor.execute(sql_create_order)

        # 4. order_records 테이블에 발주이력 3건 생성
        sql_add_order_records = """
        INSERT INTO order_records (material_name, quantity, order_date) 
        VALUES 
        ('Flour', 50, '2024-12-01'),
        ('Sugar', 30, '2024-12-02'),
        ('Red Bean Paste', 20, '2024-12-03');
        """
        cursor.execute(sql_add_order_records)

        # 5. stocks 테이블에 원재료 사용이력 3건 추가 및 최근 사용이력 3건 조회
        sql_add_stock_usage = """
        INSERT INTO stocks (material_name, used_quantity, usage_date) 
        VALUES 
        ('Flour', 10, '2024-12-04'),
        ('Sugar', 5, '2024-12-05'),
        ('Red Bean Paste', 8, '2024-12-06');
        """
        cursor.execute(sql_add_stock_usage)

        sql_get_recent_stock_usage = """
        SELECT * FROM stocks 
        ORDER BY usage_date DESC 
        LIMIT 3;
        """
        cursor.execute(sql_get_recent_stock_usage)
        recent_stock_usage = cursor.fetchall()
        print("최근 원재료 사용이력 3건:")
        for record in recent_stock_usage:
            print(record)

        # 6. 유저 "8ki joa"가 주문한 내역 조회 (비싼 금액순)
        sql_query_user_orders = """
        SELECT * FROM orders 
        WHERE user_name = '8ki joa' 
        ORDER BY price DESC;
        """
        cursor.execute(sql_query_user_orders)
        user_orders = cursor.fetchall()
        print("\n8ki joa의 주문 내역 (비싼 금액순):")
        for order in user_orders:
            print(order)

    # 변경사항 커밋
    connection.commit()

except pymysql.Error as e:
    print(f"오류 발생: {e}")
    connection.rollback()

finally:
    connection.close()