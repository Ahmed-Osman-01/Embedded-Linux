#include <stdio.h>

int binary_search(int *arr, int size , int target) 
{
	int mid, left, right, i;
	left = 0;
	right = size;
	while(left <= right)
	{
		mid = (left + right)/2;
		if( arr[mid] == target)
		{
			return mid;
		}
		else if(arr[mid] > target)
		{
			right = mid-1;
		}
		else
		{
			left = mid+1;
		}
	}
	return -1; 
}

int main()
{
	int arr[10] = {1,2,3,4,5,6,7,8,9,10};
	
	int res = binary_search(arr, 10, 5);
	if(res == -1)
	{
		printf("Number is not found\n");
	}
	else
	{
		printf("5 is found at index %d\n", res);
	}
	return 0;
}
