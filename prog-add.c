#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

int64_t add(int64_t, int64_t);


int main()
{
	int a;
	int b;
	scanf("%d\n%d",&a,&b);
	printf("%ld\n",add(a,b));
	
	return 0;
}
