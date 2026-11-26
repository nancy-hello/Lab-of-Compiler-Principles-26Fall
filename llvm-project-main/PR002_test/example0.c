#pragma overflowCheck
int test() {
    int A[1000];
    const int B[1000];
    int a = A[1000];
    int b = B[1000];
    return 0;
}

int main() {
    test();
    return 0;
}