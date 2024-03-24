#ifndef SRC_S21_STRING_H_
#define SRC_S21_STRING_H_
#include <stdio.h>
#include <stdlib.h>

#include "s21_string_error.h"

#define s21_NULL ((void *)0)
#define OFFSET_LOWER_UPPER 32
typedef long unsigned int s21_size_t;
char *s21_strtok(char *str, const char *delim);
void *s21_memchr(const void *str, int c, s21_size_t n);
int s21_memcmp(const void *str1, const void *str2, s21_size_t n);
void *s21_memcpy(void *dest, const void *src, s21_size_t n);
void *s21_memmove(void *dest, const void *src, s21_size_t n);
void *s21_memset(void *str, int c, s21_size_t n);
char *s21_strncat(char *dest, const char *src, s21_size_t n);
char *s21_strchr(const char *str, int c);
int s21_strncmp(const char *str1, const char *str2, s21_size_t n);
char *s21_strcpy(char *dest, const char *src);
char *s21_strncpy(char *dest, const char *src, s21_size_t n);
s21_size_t s21_strcspn(const char *str1, const char *str2);
s21_size_t s21_strlen(const char *str);
char *s21_strpbrk(const char *str1, const char *str2);
char *s21_strrchr(const char *str, int c);
char *s21_strstr(const char *haystack, const char *needle);
char *s21_strtok(char *str, const char *delim);
char *s21_strcat(char *dest, const char *src);
char *s21_strerror(int errnum);
char *s21_itoa(int num);
void s21_reverse_string(char *str);
char *s21_strcat(char *destination, const char *source);
void *s21_to_lower(const char *str);
int s21_tolower(int c);
void *s21_to_upper(const char *str);
void *s21_insert(const char *src, const char *str, size_t start_index);
void delete_first_letter(char *str);
void delete_left_part(char *result, const char *src, const char *trim_chars);
void delete_right_part(char *result, const char *src, const char *trim_chars);
void *s21_trim(const char *src, const char *trim_chars);

#include "s21_sprintf.h"
#include "s21_sscanf.h"
#endif  // SRC_S21_STRING_H_
