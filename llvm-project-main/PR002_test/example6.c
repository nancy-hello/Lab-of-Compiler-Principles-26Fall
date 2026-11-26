#pragma overflowCheck
int test(int n) {
    int A[1000];
    for (int i = 0; i < 3 * n; i++) {
        int a = A[i];
    }
    return 0;
}

int main() {
    test(400);
    return 0;
}