/*
 * DO NOT EDIT THIS FILE. Generated by checkmk.
 * Edit the original source file "stack_and_polish.check" instead.
 */

#include <check.h>

#line 1 "stack_and_polish.check"
#include <check.h>

#include "../s21_calc.h"

START_TEST(test_stack_number1)
{
#line 6
StackDataPtr stack_item = NULL;
stack_t stack_data;
stack_data.value = 4.4;
stack_data.priority = 0;
stack_data.symbols = ' ';
stack_data.type = NUMBER;
stack_data.nextPtr = NULL;
int code = s21_stack_push(&stack_item, stack_data);
ck_assert_int_eq(ERROR_NO, code);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number2)
{
#line 18
StackDataPtr stack_item = NULL;
stack_t stack_data;
stack_data.value = 4.4;
stack_data.priority = 0;
stack_data.symbols = ' ';
stack_data.type = NUMBER;
stack_data.nextPtr = NULL;
s21_stack_push(&stack_item, stack_data);
s21_stack_clear(&stack_item);
int code = s21_isEmpty(stack_item);
ck_assert_int_eq(1, code);

}
END_TEST

START_TEST(test_stack_number3)
{
#line 31
StackDataPtr stack_item = NULL;
stack_t stack_data;
stack_data.value = 4.4;
stack_data.priority = 0;
stack_data.symbols = ' ';
stack_data.type = NUMBER;
stack_data.nextPtr = NULL;
s21_stack_push(&stack_item, stack_data);
int code = s21_isEmpty(stack_item);
ck_assert_int_eq(0, code);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number4)
{
#line 44
StackDataPtr stack_item = NULL;
stack_t stack_data;
stack_data = s21_create_item("3.1", 0, ' ', NUMBER);
s21_stack_push(&stack_item, stack_data);
stack_t stack_result = s21_stack_pop(&stack_item);
ck_assert_int_eq(stack_data.type, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number5)
{
#line 53
StackDataPtr stack_item = NULL;
stack_t stack_data;
stack_data = s21_create_item("3.1", 4, 's', FUNCTION);
s21_stack_push(&stack_item, stack_data);
stack_t stack_result = s21_stack_pop(&stack_item);
ck_assert_int_eq(stack_data.type, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number6)
{
#line 62
StackDataPtr stack_item = NULL;
stack_t stack_data;
stack_data = s21_create_item("3.1", 4, 's', FUNCTION);
s21_stack_push(&stack_item, stack_data);
s21_stack_revers(&stack_item);
stack_t stack_result = s21_stack_peek(&stack_item);
ck_assert_int_eq(stack_data.type, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number7)
{
#line 72
int code = s21_isOperation('+');
ck_assert_int_eq(1, code);

}
END_TEST

START_TEST(test_stack_number8)
{
#line 76
int code = s21_isOperation('s');
ck_assert_int_eq(0, code);

}
END_TEST

START_TEST(test_stack_number9)
{
#line 80
int code = s21_get_priority('+');
ck_assert_int_eq(1, code);

}
END_TEST

START_TEST(test_stack_number10)
{
#line 84
int code = s21_get_priority('*');
ck_assert_int_eq(2, code);

}
END_TEST

START_TEST(test_stack_number11)
{
#line 88
int code = s21_get_priority('^');
ck_assert_int_eq(3, code);

}
END_TEST

START_TEST(test_stack_number12)
{
#line 92
int code = s21_get_priority('s');
ck_assert_int_eq(4, code);

}
END_TEST

START_TEST(test_stack_number13)
{
#line 96
int code = s21_get_priority('(');
ck_assert_int_eq(5, code);

}
END_TEST

START_TEST(test_stack_number14)
{
#line 100
int code = s21_get_priority('@');
ck_assert_int_eq(0, code);

}
END_TEST

START_TEST(test_stack_number15)
{
#line 104
int code = s21_valid_function('s');
ck_assert_int_eq(1, code);

}
END_TEST

START_TEST(test_stack_number16)
{
#line 108
int code = s21_valid_function('g');
ck_assert_int_eq(0, code);

}
END_TEST

START_TEST(test_stack_number17)
{
#line 112
char expression[256]="s";
char strarray[500][256];
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
stack_t stack_result = s21_stack_peek(&stack_item);
ck_assert_int_eq(FUNCTION, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number18)
{
#line 122
char expression[256]="+";
char strarray[500][256];
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
stack_t stack_result = s21_stack_peek(&stack_item);
ck_assert_int_eq(OPERATION, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number19)
{
#line 132
char expression[256]="3";
char strarray[500][256];
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
stack_t stack_result = s21_stack_peek(&stack_item);
ck_assert_int_eq(NUMBER, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number20)
{
#line 142
char expression[256]="(";
char strarray[500][256];
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
stack_t stack_result = s21_stack_peek(&stack_item);
ck_assert_int_eq(LEFT_BRACKET, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number21)
{
#line 152
char expression[256]="@";
char strarray[500][256];
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
int code = s21_convert_to_stack(strarray, lexems_count, &stack_item);
ck_assert_int_eq(code, ERROR_BAD_CONVERT);

}
END_TEST

START_TEST(test_stack_number22)
{
#line 160
char expression[256]=")";
char strarray[500][256];
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
stack_t stack_result = s21_stack_peek(&stack_item);
ck_assert_int_eq(RIGHT_BRACKET, stack_result.type);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number23)
{
#line 170
char expression[256]="2+2+2";
char strarray[500][256];
s21_replace_functions(expression);
s21_add_separator(expression);
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
s21_stack_revers(&stack_item);
int code = s21_polish_postfix(&stack_item);
ck_assert_int_eq(ERROR_NO, code);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number24)
{
#line 183
char expression[256]="(2+2)*2";
char strarray[500][256];
s21_replace_functions(expression);
s21_add_separator(expression);
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
s21_stack_revers(&stack_item);
int code = s21_polish_postfix(&stack_item);
ck_assert_int_eq(ERROR_NO, code);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number25)
{
#line 196
char expression[256]="sin(-4)";
char strarray[500][256];
s21_replace_functions(expression);
s21_add_separator(expression);
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
s21_stack_revers(&stack_item);
int code = s21_polish_postfix(&stack_item);
ck_assert_int_eq(ERROR_NO, code);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number26)
{
#line 209
char expression[256]="sin(x)";
char strarray[500][256];
s21_replace_functions(expression);
s21_add_separator(expression);
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
s21_stack_revers(&stack_item);
int code = s21_polish_postfix(&stack_item);
ck_assert_int_eq(ERROR_BAD_EXPRESSION, code);
s21_stack_clear(&stack_item);

}
END_TEST

START_TEST(test_stack_number27)
{
#line 222
char expression[256]="(8+2*5)/(1+3*2-4)";
char strarray[500][256];
s21_replace_functions(expression);
s21_add_separator(expression);
int lexems_count = s21_lexems(expression, strarray);
StackDataPtr stack_item = NULL;
s21_convert_to_stack(strarray, lexems_count, &stack_item);
s21_stack_revers(&stack_item);
int code = s21_polish_postfix(&stack_item);
ck_assert_int_eq(ERROR_NO, code);
s21_stack_clear(&stack_item);
}
END_TEST

int main(void)
{
    Suite *s1 = suite_create("Core");
    TCase *tc1_1 = tcase_create("Core");
    SRunner *sr = srunner_create(s1);
    int nf;

    suite_add_tcase(s1, tc1_1);
    tcase_add_test(tc1_1, test_stack_number1);
    tcase_add_test(tc1_1, test_stack_number2);
    tcase_add_test(tc1_1, test_stack_number3);
    tcase_add_test(tc1_1, test_stack_number4);
    tcase_add_test(tc1_1, test_stack_number5);
    tcase_add_test(tc1_1, test_stack_number6);
    tcase_add_test(tc1_1, test_stack_number7);
    tcase_add_test(tc1_1, test_stack_number8);
    tcase_add_test(tc1_1, test_stack_number9);
    tcase_add_test(tc1_1, test_stack_number10);
    tcase_add_test(tc1_1, test_stack_number11);
    tcase_add_test(tc1_1, test_stack_number12);
    tcase_add_test(tc1_1, test_stack_number13);
    tcase_add_test(tc1_1, test_stack_number14);
    tcase_add_test(tc1_1, test_stack_number15);
    tcase_add_test(tc1_1, test_stack_number16);
    tcase_add_test(tc1_1, test_stack_number17);
    tcase_add_test(tc1_1, test_stack_number18);
    tcase_add_test(tc1_1, test_stack_number19);
    tcase_add_test(tc1_1, test_stack_number20);
    tcase_add_test(tc1_1, test_stack_number21);
    tcase_add_test(tc1_1, test_stack_number22);
    tcase_add_test(tc1_1, test_stack_number23);
    tcase_add_test(tc1_1, test_stack_number24);
    tcase_add_test(tc1_1, test_stack_number25);
    tcase_add_test(tc1_1, test_stack_number26);
    tcase_add_test(tc1_1, test_stack_number27);

    srunner_run_all(sr, CK_ENV);
    nf = srunner_ntests_failed(sr);
    srunner_free(sr);

    return nf == 0 ? 0 : 1;
}
