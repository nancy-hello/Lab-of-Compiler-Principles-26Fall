#pragma overflowCheck
int test(int n) {
    int A[1000];
    for (int i = 0; i < 1000; i++) {
        int a = A[n];
    }
    return 0;
}

#pragma overflowCheck
int main() {
    test(1500);
    return 0;
}