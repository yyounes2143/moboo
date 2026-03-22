package j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.r1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C2268r1 extends CountedCompleter {

    /* renamed from: a  reason: collision with root package name */
    public final C0 f11927a;
    public final int b;
    public final /* synthetic */ int c;
    public final Object d;

    public C2268r1(C0 c0, Object obj, int i) {
        this.c = i;
        this.f11927a = c0;
        this.b = 0;
        this.d = obj;
    }

    public C2268r1(C2268r1 c2268r1, C0 c0, int i, byte b) {
        super(c2268r1);
        this.f11927a = c0;
        this.b = i;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        C2268r1 c2268r1 = this;
        while (c2268r1.f11927a.r() != 0) {
            c2268r1.setPendingCount(c2268r1.f11927a.r() - 1);
            int i = 0;
            int i2 = 0;
            while (i < c2268r1.f11927a.r() - 1) {
                C2268r1 a2 = c2268r1.a(i, c2268r1.b + i2);
                i2 = (int) (a2.f11927a.count() + i2);
                a2.fork();
                i++;
            }
            c2268r1 = c2268r1.a(i, c2268r1.b + i2);
        }
        switch (c2268r1.c) {
            case 0:
                ((B0) c2268r1.f11927a).d(c2268r1.d, c2268r1.b);
                break;
            default:
                c2268r1.f11927a.j((Object[]) c2268r1.d, c2268r1.b);
                break;
        }
        c2268r1.propagateCompletion();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2268r1(C2268r1 c2268r1, C0 c0, int i) {
        this(c2268r1, c0, i, (byte) 0);
        this.c = 1;
        this.d = (Object[]) c2268r1.d;
    }

    public final C2268r1 a(int i, int i2) {
        switch (this.c) {
            case 0:
                return new C2268r1(this, ((B0) this.f11927a).b(i), i2);
            default:
                return new C2268r1(this, this.f11927a.b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2268r1(C2268r1 c2268r1, B0 b0, int i) {
        this(c2268r1, b0, i, (byte) 0);
        this.c = 0;
        this.d = c2268r1.d;
    }
}
