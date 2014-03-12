#include <stdio.h>

int getint()
{
	int r = 0, i = 0;
	int c;

	for (;;) {
		c = getchar();
		if (c < 0) return i;
		if (c >= '0' && c <= '9') {
			if(!r) r = 1;
			i = i * 10 + c - '0';
		} else {
			if (r) return i;
		}
	}
}

void putlonglong(long long v)
{
	if (v > 9) {
		putlonglong(v / 10);
	}
	putchar('0' + v % 10);
}
