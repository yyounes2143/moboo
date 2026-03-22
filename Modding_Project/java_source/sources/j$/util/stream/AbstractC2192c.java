package j$.util.stream;
/* renamed from: j$.util.stream.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2192c {

    /* renamed from: a  reason: collision with root package name */
    public final int f11898a;
    public int b;
    public int c;
    public long[] d;

    public abstract void clear();

    public AbstractC2192c() {
        this.f11898a = 4;
    }

    public AbstractC2192c(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        }
        this.f11898a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public final long count() {
        int i = this.c;
        if (i == 0) {
            return this.b;
        }
        return this.d[i] + this.b;
    }
}
