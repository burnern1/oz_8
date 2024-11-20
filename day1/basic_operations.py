# 덧셈
num1 = 5
num2 = 3
result_addition = num1 + num2
print("덧셈 결과:", result_addition)

# 뺄셈
result_subtraction = num1 - num2
print("뺄셈 결과:", result_subtraction)

# 곱셈
result_multiplication = num1 * num2
print("곱셈 결과:", result_multiplication)

# 나눗셈
result_division = num1 / num2
print("나눗셈 결과:", result_division)

# 몫
result_quotient = num1 // num2
print("몫:", result_quotient)

# 나머지
result_remainder = num1 % num2
print("나머지:", result_remainder)

# abs(x): x의 절대값을 반환합니다.
x = -5
absolute_value = abs(x)
print("절대값:", absolute_value)

# int(x): x를 정수로 변환합니다. 소수점 이하는 버립니다.
y = 3.7
integer_value = int(y)
print("정수로 변환:", integer_value)

# float(x): x를 부동소수점 숫자로 변환합니다.
z = "4.2"
float_value = float(z)
print("부동소수점으로 변환:", float_value)

# complex(re, im): 실수부 re와 허수부 im을 가진 복소수를 생성합니다.
real_part = 3
imaginary_part = 4
complex_number = complex(real_part, imaginary_part)
print("복소수:", complex_number)

# divmod(x, y): x를 y로 나눈 몫과 나머지를 튜플로 반환합니다.
a, b = 17, 5
quotient, remainder = divmod(a, b)
print("몫과 나머지:", quotient, remainder)

# pow(x, y): x의 y제곱을 계산합니다.
base = 2
exponent = 3
power_result = pow(base, exponent)
print("거듭제곱 (pow):", power_result)

# x ** y: x의 y제곱을 계산합니다. pow(x, y)와 동일한 결과를 제공합니다.
exponentiation_result = base ** exponent
print("거듭제곱 (**):", exponentiation_result)