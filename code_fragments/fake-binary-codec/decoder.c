main(){int c,b=0,m=8;while((c=getchar())>=0){c-=48;if((c&1)==c)b=((b<<1)|c),m--;if(!m)putchar(b),m=8;}}
