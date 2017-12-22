#include <stdio.h>

int main() {
  int total = 0;
  for (int i = 0; i < 10 * 1000 * 1000; i++) {
    total = (total + i) % 19;
  }
  printf("%d\n",total);
  return 0;
}
