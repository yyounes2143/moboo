package j$.util;
/* renamed from: j$.util.l  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2175l {
    public static final C2175l c = new C2175l();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11851a;
    public final int b;

    public C2175l() {
        this.f11851a = false;
        this.b = 0;
    }

    public C2175l(int i) {
        this.f11851a = true;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2175l) {
            C2175l c2175l = (C2175l) obj;
            boolean z = this.f11851a;
            return (z && c2175l.f11851a) ? this.b == c2175l.b : z == c2175l.f11851a;
        }
        return false;
    }

    public final int hashCode() {
        if (this.f11851a) {
            return this.b;
        }
        return 0;
    }

    public final String toString() {
        if (this.f11851a) {
            return "OptionalInt[" + this.b + "]";
        }
        return "OptionalInt.empty";
    }
}
