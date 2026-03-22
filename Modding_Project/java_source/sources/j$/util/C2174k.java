package j$.util;
/* renamed from: j$.util.k  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2174k {
    public static final C2174k c = new C2174k();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11850a;
    public final double b;

    public C2174k() {
        this.f11850a = false;
        this.b = Double.NaN;
    }

    public C2174k(double d) {
        this.f11850a = true;
        this.b = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2174k) {
            C2174k c2174k = (C2174k) obj;
            boolean z = this.f11850a;
            return (z && c2174k.f11850a) ? Double.compare(this.b, c2174k.b) == 0 : z == c2174k.f11850a;
        }
        return false;
    }

    public final int hashCode() {
        if (this.f11850a) {
            long doubleToLongBits = Double.doubleToLongBits(this.b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public final String toString() {
        if (this.f11850a) {
            return "OptionalDouble[" + this.b + "]";
        }
        return "OptionalDouble.empty";
    }
}
