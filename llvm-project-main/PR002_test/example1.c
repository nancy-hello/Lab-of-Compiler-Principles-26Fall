#pragma overflowCheck
int test(int n) {
    int A[1000];
    const int B[1000];
    int a = A[n];
    int b = B[n];
    return 0;
}

int main() {
    test(1000);
    return 0;
}