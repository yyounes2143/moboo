package j$.util.stream;

import j$.util.Spliterator;
/* renamed from: j$.util.stream.t2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2279t2 {
    public static long c(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    public static long a(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    public static Spliterator b(Y2 y2, Spliterator spliterator, long j, long j2) {
        long c = c(j, j2);
        int i = AbstractC2269r2.f11928a[y2.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException("Unknown shape " + y2);
                    }
                    return new AbstractC2290v3((j$.util.A) spliterator, j, c);
                }
                return new AbstractC2290v3((j$.util.F) spliterator, j, c);
            }
            return new AbstractC2290v3((Spliterator.OfInt) spliterator, j, c);
        }
        return new C2295w3(spliterator, j, c);
    }

    public static C2235k2 h(AbstractC2185a2 abstractC2185a2, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2235k2(abstractC2185a2, d(j2), j, j2);
    }

    public static C2245m2 f(Y y, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2245m2(y, d(j2), j, j2);
    }

    public static C2255o2 g(AbstractC2213g0 abstractC2213g0, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2255o2(abstractC2213g0, d(j2), j, j2);
    }

    public static C2265q2 e(AbstractC2301y abstractC2301y, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2265q2(abstractC2301y, d(j2), j, j2);
    }

    public static int d(long j) {
        return (j != -1 ? X2.u : 0) | X2.t;
    }
}
