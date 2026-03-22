package j$.time.chrono;

import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class G extends AbstractC2152a implements Serializable {
    public static final G c = new G();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        hashMap.put("en", new String[]{"BB", "BE"});
        hashMap.put("th", new String[]{"BB", "BE"});
        hashMap2.put("en", new String[]{"B.B.", "B.E."});
        hashMap2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        hashMap3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        hashMap3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    @Override // j$.time.chrono.l
    public final m D(int i) {
        if (i != 0) {
            if (i == 1) {
                return J.BE;
            }
            throw new RuntimeException("Invalid era: " + i);
        }
        return J.BEFORE_BE;
    }

    @Override // j$.time.chrono.l
    public final String getId() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "buddhist";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b w(int i) {
        return new I(LocalDate.N(i - 543, 1, 1));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC2153b j(j$.time.temporal.m mVar) {
        if (mVar instanceof I) {
            return (I) mVar;
        }
        return new I(LocalDate.H(mVar));
    }

    @Override // j$.time.chrono.l
    public final boolean C(long j) {
        return s.c.C(j - 543);
    }

    private G() {
    }

    public final j$.time.temporal.t i(j$.time.temporal.a aVar) {
        int i = F.f11721a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.t tVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.t.e(tVar.f11791a + 6516, tVar.d + 6516);
        } else if (i == 2) {
            j$.time.temporal.t tVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.t.f(1L, (-(tVar2.f11791a + 543)) + 1, tVar2.d + 543);
        } else if (i != 3) {
            return aVar.b;
        } else {
            j$.time.temporal.t tVar3 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.t.e(tVar3.f11791a + 543, tVar3.d + 543);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new E((byte) 1, this);
    }
}
