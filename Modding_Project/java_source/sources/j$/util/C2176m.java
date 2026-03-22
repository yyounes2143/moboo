package j$.util;
/* renamed from: j$.util.m  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2176m {
    public static final C2176m c = new C2176m();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11852a;
    public final long b;

    public C2176m() {
        this.f11852a = false;
        this.b = 0L;
    }

    public C2176m(long j) {
        this.f11852a = true;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2176m) {
            C2176m c2176m = (C2176m) obj;
            boolean z = this.f11852a;
            return (z && c2176m.f11852a) ? this.b == c2176m.b : z == c2176m.f11852a;
        }
        return false;
    }

    public final int hashCode() {
        if (this.f11852a) {
            long j = this.b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public final String toString() {
        if (this.f11852a) {
            return "OptionalLong[" + this.b + "]";
        }
        return "OptionalLong.empty";
    }
}
