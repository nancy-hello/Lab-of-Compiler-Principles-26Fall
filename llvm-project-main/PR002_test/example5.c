#pragma overflowCheck
int B[1000];
int test(int n) {
    int A[1000];
    int a = A[B[n + 3] * 2];
    return 0;
}

int main() {
    for (int i = 0; i < 1000; i++) {
        B[i] = i;
    }
    test(500);
    return 0;
}