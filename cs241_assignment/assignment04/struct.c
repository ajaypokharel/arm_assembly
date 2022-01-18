#include <stdio.h>
#include <math.h>

struct point{
	float x;
	float y;
};

struct triangle {
	struct point p1, p2, p3;
};

float func_dis(struct point *p1, struct point *p2);
float area(struct triangle *t1);

int main(){
	struct point p1, p2, p3;
	float area1;
	printf("You will be asked to enter the coordinate points for a triangle\n");
	printf("Enter the x-axis for p1: ");
	scanf("%f", &p1.x);
	printf("Enter the y-axis for p1: ");
	scanf("%f", &p1.y);
	printf("Enter the x-axis for p2: ");
	scanf("%f", &p2.x);
	printf("Enter the y-axis for p2: ");
	scanf("%f", &p2.y);
	printf("Enter the x-axis for p3: ");
	scanf("%f", &p3.x);
	printf("Enter the y-axis for p3: ");
	scanf("%f", &p3.y);
	
	struct triangle triangle1;
	triangle1.p1 = p1;
	triangle1.p2 = p2;
	triangle1.p3 = p3;
	area1 = area(&triangle1);
	printf("The area of the triangle for the coordinates you entered is: %2.3f\n", area1);
	return 0;
}

float func_dis(struct point *p1, struct point *p2){
	float x_dis, y_dis, dis;
	x_dis = pow(p1->x - p2->x, 2);
	y_dis = pow(p1->y - p2->y, 2);
	dis = sqrt(x_dis + y_dis);
	return dis;
};

float area(struct triangle *t1){
	float a, b, c, s, a_sq, b_sq, c_sq, result;
	a = func_dis(&t1->p1, &t1->p2);
	b = func_dis(&t1->p1, &t1->p3);
	c = func_dis(&t1->p2, &t1->p3);
	s = (a + b + c)/2;
	result = sqrt(s*(s-a)*(s-b)*(s-c));
	return result;
};
