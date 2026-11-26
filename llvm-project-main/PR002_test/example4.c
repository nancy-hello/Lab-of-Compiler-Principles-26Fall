#pragma overflowCheck
int test() {
    int A[1000];
    int n = 1000;
    int a = A[n];
    return 0;
}

#pragma overflowCheck
int test2() {
    int A[1000];
    int n = 500;
    int a = A[2 * n + 1];
    return 0;
}

int main() {
    test();
    test2();
    return 0;
}