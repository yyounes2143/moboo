package j$.time.chrono;

import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.time.InstantKt;
/* loaded from: classes2.dex */
public final class v extends AbstractC2152a implements Serializable {
    public static final v c = new v();
    private static final long serialVersionUID = 459996390165777884L;

    @Override // j$.time.chrono.l
    public final String getId() {
        return "Japanese";
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "japanese";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b w(int i) {
        return new x(LocalDate.N(i, 1, 1));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b j(j$.time.temporal.m mVar) {
        if (mVar instanceof x) {
            return (x) mVar;
        }
        return new x(LocalDate.H(mVar));
    }

    @Override // j$.time.chrono.l
    public final boolean C(long j) {
        return s.c.C(j);
    }

    private v() {
    }

    @Override // j$.time.chrono.l
    public final m D(int i) {
        return y.q(i);
    }

    public final j$.time.temporal.t i(j$.time.temporal.a aVar) {
        switch (u.f11738a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new RuntimeException("Unsupported field: " + aVar);
            case 5:
                y[] yVarArr = y.e;
                LocalDate localDate = yVarArr[yVarArr.length - 1].b;
                int i = InstantKt.NANOS_PER_SECOND - yVarArr[yVarArr.length - 1].b.f11710a;
                int i2 = yVarArr[0].b.f11710a;
                int i3 = 1;
                while (i3 < yVarArr.length) {
                    y yVar = yVarArr[i3];
                    i = Math.min(i, (yVar.b.f11710a - i2) + 1);
                    i3++;
                    i2 = yVar.b.f11710a;
                }
                return j$.time.temporal.t.f(1L, i, 999999999 - localDate.f11710a);
            case 6:
                y yVar2 = y.d;
                j$.time.temporal.t tVar = j$.time.temporal.a.DAY_OF_YEAR.b;
                y[] yVarArr2 = y.e;
                long j = tVar.c;
                for (y yVar3 : yVarArr2) {
                    long min = Math.min(j, (yVar3.b.A() - yVar3.b.K()) + 1);
                    if (yVar3.m() != null) {
                        min = Math.min(min, yVar3.m().b.K() - 1);
                    }
                    j = min;
                }
                return j$.time.temporal.t.f(1L, j, j$.time.temporal.a.DAY_OF_YEAR.b.d);
            case 7:
                return j$.time.temporal.t.e(x.d.f11710a, 999999999L);
            case 8:
                long j2 = y.d.f11741a;
                y[] yVarArr3 = y.e;
                return j$.time.temporal.t.e(j2, yVarArr3[yVarArr3.length - 1].f11741a);
            default:
                return aVar.b;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new E((byte) 1, this);
    }
}
