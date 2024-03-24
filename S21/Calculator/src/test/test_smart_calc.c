/*
 * DO NOT EDIT THIS FILE. Generated by checkmk.
 * Edit the original source file "smart_calc.check" instead.
 */

#include <check.h>

#line 1 "smart_calc.check"
#include <check.h>
#define M_PI 3.14159265358979323846
#include "../s21_calc.h"

START_TEST(test_smart_calc_number1)
{
#line 6
  char x[] = "4.0";
  char expression[1024] = "(8+2*5)/(1+3*2-4)";
  double answer = (8+2*5)/(1+3*2-4);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number2)
{
#line 15
  char x[] = "4.0";
  char expression[1024] = "2/(3+2)*5";
  double answer = 2.0/(3+2)*5;
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number3)
{
#line 24
  char x[] = "4.0";
  char expression[1024] = "2/(3+2)*5^0";
  double answer = 2.0/(3+2)*powf(5,0);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number4)
{
#line 33
  char x[] = "4.0";
  char expression[1024] = "2.0/(3+2)*5^0-+";
  int error_code;
  s21_calculation(expression, x, &error_code);
  ck_assert_int_eq(ERROR_BAD_EXPRESSION, error_code);

}
END_TEST

START_TEST(test_smart_calc_number5)
{
#line 40
  char x[] = "4.0";
  char expression[1024] = "2/(3+2)*5mod1";
  double answer = 2.0/(3+2)*fmod(5,1);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number6)
{
#line 49
  char x[] = "4.0";
  char expression[1024] = "9.99999+9.999999*9.999";
  double answer = 9.99999 + 9.999999 * 9.999;
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number7)
{
#line 58
  char x[] = "4.0";
  char expression[1024] = "((1) - 2 - ((-3) - (4))) - 5 - (-6)";
  double answer = ((1) - 2 - ((-3) - (4))) - 5 - (-6);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number8)
{
#line 67
  char x[] = "4.0";
  char expression[1024] = "+5-(+4)-x+((+x)-x-(-x))";
  double answer = +5 - (+4) - atof(x) + (+(atof(x)) - atof(x) - (-(atof(x))));
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number9)
{
#line 76
  char x[] = "-1234567.1234567";
  char expression[1024] = "-x-(-x)";
  double answer = -atof(x) - (-atof(x));
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number10)
{
#line 85
  char x[] = "10.1";
  char expression[1024] = "(-5) mod (-3)";
  double answer = fmod(-5, -3);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number11)
{
#line 94
  char x[] = "10.1";
  char expression[1024] = "2^3^4";
  double answer = powf(powf(2, 3), 4);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number12)
{
#line 103
  char x[] = "10.1";
  char expression[1024] = "1.0/2.0*(2.0-1.0)";
  double answer = 1.0/2.0*(2.0-1.0);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number13)
{
#line 112
  char x[] = "4.0";
  char expression[1024] = "1.0/2.0*(2.0-1.0)(x)";
  int error_code;
  s21_calculation(expression, x, &error_code);
  ck_assert_int_eq(ERROR_BAD_EXPRESSION, error_code);

}
END_TEST

START_TEST(test_smart_calc_number14)
{
#line 119
  char x[] = "4.0";
  char expression[1024] = "((2(+2+2)))";
  int error_code;
  s21_calculation(expression, x, &error_code);
  ck_assert_int_eq(ERROR_BAD_EXPRESSION, error_code);

}
END_TEST

START_TEST(test_smart_calc_number15)
{
#line 126
  char x[] = "10.1";
  char expression[1024] = "1.1 + 2.0 + (3 * 4.0) + (5 + 6.78)";
  double answer = 1.1 + 2.0 + (3 * 4.0) + (5 + 6.78);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number16)
{
#line 135
  char x[] = "-3";
  char expression[1024] = "8^(1/(-x))";
  double answer = 2.0;
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number17)
{
#line 144
  char x[] = "-3";
  char expression[1024] = "8^(1/(-x))";
  double answer = 2.0;
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number18)
{
#line 153
  char x[] = "1";
  char expression[1024] = "asin(-x+1.5)+acos(-x)-atan(x+1)";
  double answer = asin(-atof(x) + 1.5) + acos(-atof(x)) - atan(atof(x) + 1);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number19)
{
#line 162
  char x[] = "100";
  char expression[1024] = "log(x)+ln(-2.0+4.0)";
  double answer = log10(atof(x)) + log(-2.0 + 4.0);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number20)
{
#line 171
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%lf", xx);
  char expression[1024] = "cos(x)";
  double answer = cos(xx);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq_tol(answer, result, 1e-7);

}
END_TEST

START_TEST(test_smart_calc_number21)
{
#line 183
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%lf", xx);
  char expression[1024] = "cos(x)";
  double answer = cos(xx);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq_tol(answer, result, 1e-7);

}
END_TEST

START_TEST(test_smart_calc_number22)
{
#line 195
  double xx = M_PI / 2.0;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "-1*sin(cos(tan(-x^2)^3)^4)";
  double answer = -1 * sinf(powf(cosf(powf(tanf(powf(-xx, 2)), 3)), 4));
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq_tol(answer, result, 1e-6);

}
END_TEST

START_TEST(test_smart_calc_number23)
{
#line 207
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "+x";
  double answer = +xx;
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq_tol(answer, result, 1e-7);

}
END_TEST

START_TEST(test_smart_calc_number24)
{
#line 219
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "-x";
  double answer = -xx;
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq_tol(answer, result, 1e-7);

}
END_TEST

START_TEST(test_smart_calc_number25)
{
#line 231
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "xmod(x+1.0)";
  double answer = fmod(xx, xx + 1.0);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number26)
{
#line 243
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "(-1 + (-1 - (1 + 1)) - (-1 + 1) - (-1 + (-1)))";
  double answer = (-1 + (-1 - (1 + 1)) - (-1 + 1) - (-1 + (-1)));
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number27)
{
#line 255
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "sqrt(25)";
  double answer = sqrt(25);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq(answer, result);

}
END_TEST

START_TEST(test_smart_calc_number28)
{
#line 267
  double xx = M_PI;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "sqrt(x)";
  double answer = sqrt(xx);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_double_eq_tol(answer, result, 1e-7);

}
END_TEST

START_TEST(test_smart_calc_number29)
{
#line 279
  double xx = -2;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "sqrt(x)";
  double answer = sqrt(xx);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_int_eq(isnan(result), isnan(answer));

}
END_TEST

START_TEST(test_smart_calc_number30)
{
#line 291
  double xx = 0;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "sqrt(x) / x";
  double answer = sqrt(xx) / xx;
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_int_eq(isinf(result), isinf(answer));

}
END_TEST

START_TEST(test_smart_calc_number31)
{
#line 303
  double xx = 0;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "log(x)";
  double answer = log10(xx);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_int_eq(isinf(result), isinf(answer));

}
END_TEST

START_TEST(test_smart_calc_number32)
{
#line 315
  double xx = -2;
  char x[256] = "";
  strcpy(x, "");
  sprintf(x, "%.25lf", xx);
  char expression[1024] = "ln(x)";
  double answer = log(xx);
  double result = NAN;
  int error_code;
  result = s21_calculation(expression, x, &error_code);
  ck_assert_int_eq(isnan(result), isnan(answer));
}
END_TEST

int main(void)
{
    Suite *s1 = suite_create("Core");
    TCase *tc1_1 = tcase_create("Core");
    SRunner *sr = srunner_create(s1);
    int nf;

    suite_add_tcase(s1, tc1_1);
    tcase_add_test(tc1_1, test_smart_calc_number1);
    tcase_add_test(tc1_1, test_smart_calc_number2);
    tcase_add_test(tc1_1, test_smart_calc_number3);
    tcase_add_test(tc1_1, test_smart_calc_number4);
    tcase_add_test(tc1_1, test_smart_calc_number5);
    tcase_add_test(tc1_1, test_smart_calc_number6);
    tcase_add_test(tc1_1, test_smart_calc_number7);
    tcase_add_test(tc1_1, test_smart_calc_number8);
    tcase_add_test(tc1_1, test_smart_calc_number9);
    tcase_add_test(tc1_1, test_smart_calc_number10);
    tcase_add_test(tc1_1, test_smart_calc_number11);
    tcase_add_test(tc1_1, test_smart_calc_number12);
    tcase_add_test(tc1_1, test_smart_calc_number13);
    tcase_add_test(tc1_1, test_smart_calc_number14);
    tcase_add_test(tc1_1, test_smart_calc_number15);
    tcase_add_test(tc1_1, test_smart_calc_number16);
    tcase_add_test(tc1_1, test_smart_calc_number17);
    tcase_add_test(tc1_1, test_smart_calc_number18);
    tcase_add_test(tc1_1, test_smart_calc_number19);
    tcase_add_test(tc1_1, test_smart_calc_number20);
    tcase_add_test(tc1_1, test_smart_calc_number21);
    tcase_add_test(tc1_1, test_smart_calc_number22);
    tcase_add_test(tc1_1, test_smart_calc_number23);
    tcase_add_test(tc1_1, test_smart_calc_number24);
    tcase_add_test(tc1_1, test_smart_calc_number25);
    tcase_add_test(tc1_1, test_smart_calc_number26);
    tcase_add_test(tc1_1, test_smart_calc_number27);
    tcase_add_test(tc1_1, test_smart_calc_number28);
    tcase_add_test(tc1_1, test_smart_calc_number29);
    tcase_add_test(tc1_1, test_smart_calc_number30);
    tcase_add_test(tc1_1, test_smart_calc_number31);
    tcase_add_test(tc1_1, test_smart_calc_number32);

    srunner_run_all(sr, CK_ENV);
    nf = srunner_ntests_failed(sr);
    srunner_free(sr);

    return nf == 0 ? 0 : 1;
}
