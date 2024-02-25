
#include <stdio.h>

#include "lvgl/lvgl.h"

int main(int argc, char* argv[]) {
	
	lv_init();
	
	if(lv_is_initialized()) {
		printf("Hello lvgl !\n");
	}
	
	printf("Exit\n");
	return 0;
}