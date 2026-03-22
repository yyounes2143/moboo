package j$.time.temporal;

import j$.time.format.C2162a;
import j$.util.Objects;
/* loaded from: classes2.dex */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    public static final C2162a f11790a = new C2162a(1);
    public static final C2162a b = new C2162a(2);
    public static final C2162a c = new C2162a(3);
    public static final C2162a d = new C2162a(4);
    public static final C2162a e = new C2162a(5);
    public static final C2162a f = new C2162a(6);
    public static final C2162a g = new C2162a(7);

    public static t d(m mVar, p pVar) {
        if (pVar instanceof a) {
            if (!mVar.e(pVar)) {
                throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
            }
            return ((a) pVar).b;
        }
        Objects.requireNonNull(pVar, "field");
        return pVar.n(mVar);
    }

    public static int a(m mVar, p pVar) {
        t l = mVar.l(pVar);
        if (l.f11791a < -2147483648L || l.d > 2147483647L) {
            throw new RuntimeException("Invalid field " + pVar + " for get() method, use getLong() instead");
        }
        long r = mVar.r(pVar);
        if (l.d(r)) {
            return (int) r;
        }
        throw new RuntimeException("Invalid value for " + pVar + " (valid values " + l + "): " + r);
    }

    public static Object c(m mVar, C2162a c2162a) {
        if (c2162a == f11790a || c2162a == b || c2162a == c) {
            return null;
        }
        return c2162a.a(mVar);
    }

    public static l b(l lVar, long j, r rVar) {
        long j2;
        if (j == Long.MIN_VALUE) {
            lVar = lVar.d(Long.MAX_VALUE, rVar);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return lVar.d(j2, rVar);
    }
}
