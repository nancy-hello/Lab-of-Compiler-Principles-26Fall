#pragma pack(push, 1)
struct Packed { char c; int x; };
#pragma pack(pop)
// Invalid extra argument exercises the 7.2 handler without requiring 7.3.
#pragma overflowCheck unexpected
int add(int a, int b) { return a + b; }
int main(void) { return add(20, 22) != 42; }
