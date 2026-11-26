#pragma overflowCheck
int test(int n) {
    int A[1000];
    int a = A[2 * n + 1];
    return 0;
}

int main() {
    test(500);
    return 0;
}