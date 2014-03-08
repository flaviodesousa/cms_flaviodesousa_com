main(){int c,b=0,m=8;while((c=getchar())>=0){b=((b<<1)|c&1);if(!--m)putchar(b),b=0,m=8;}}
