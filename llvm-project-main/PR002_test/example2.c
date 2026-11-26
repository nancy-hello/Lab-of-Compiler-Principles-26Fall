#pragma overflowCheck
#pragma overflowCheck
#pragma overflowCheck
int test(int n) {
    int A[1000];
    int B[2000];
    int a = A[n];
    int b = B[n];
    return 0;
}

int main() {
    test(2000);
    return 0;
}