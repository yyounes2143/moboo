package j$.time.chrono;

import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class A extends AbstractC2152a implements Serializable {
    public static final A c = new A();
    private static final long serialVersionUID = 1039765215346859963L;

    @Override // j$.time.chrono.l
    public final String getId() {
        return "Minguo";
    }

    @Override // j$.time.chrono.l
    public final m D(int i) {
        if (i != 0) {
            if (i == 1) {
                return D.ROC;
            }
            throw new RuntimeException("Invalid era: " + i);
        }
        return D.BEFORE_ROC;
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "roc";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b w(int i) {
        return new C(LocalDate.N(i + 1911, 1, 1));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b j(j$.time.temporal.m mVar) {
        if (mVar instanceof C) {
            return (C) mVar;
        }
        return new C(LocalDate.H(mVar));
    }

    @Override // j$.time.chrono.l
    public final boolean C(long j) {
        return s.c.C(j + 1911);
    }

    public final j$.time.temporal.t i(j$.time.temporal.a aVar) {
        int i = z.f11742a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.t tVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.t.e(tVar.f11791a - 22932, tVar.d - 22932);
        } else if (i == 2) {
            j$.time.temporal.t tVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.t.f(1L, tVar2.d - 1911, (-tVar2.f11791a) + 1912);
        } else if (i != 3) {
            return aVar.b;
        } else {
            j$.time.temporal.t tVar3 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.t.e(tVar3.f11791a - 1911, tVar3.d - 1911);
        }
    }

    private A() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new E((byte) 1, this);
    }
}
