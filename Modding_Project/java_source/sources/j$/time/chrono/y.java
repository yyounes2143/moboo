package j$.time.chrono;

import com.tencent.rtmp.TXVodConstants;
import j$.time.LocalDate;
import j$.time.format.C2162a;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class y implements m, Serializable {
    public static final y d;
    public static final y[] e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* renamed from: a  reason: collision with root package name */
    public final transient int f11741a;
    public final transient LocalDate b;
    public final transient String c;

    @Override // j$.time.temporal.m
    public final /* synthetic */ boolean e(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.q(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ int i(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.l(this, (j$.time.temporal.a) pVar);
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ Object n(C2162a c2162a) {
        return j$.com.android.tools.r8.a.u(this, c2162a);
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ long r(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.n(this, pVar);
    }

    static {
        y yVar = new y(-1, LocalDate.N(1868, 1, 1), "Meiji");
        d = yVar;
        y yVar2 = new y(0, LocalDate.N(1912, 7, 30), "Taisho");
        y yVar3 = new y(1, LocalDate.N(1926, 12, 25), "Showa");
        y yVar4 = new y(2, LocalDate.N(1989, 1, 8), "Heisei");
        y yVar5 = new y(3, LocalDate.N(TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, 5, 1), "Reiwa");
        e = r8;
        y[] yVarArr = {yVar, yVar2, yVar3, yVar4, yVar5};
    }

    public final y m() {
        y[] yVarArr = e;
        if (this == yVarArr[yVarArr.length - 1]) {
            return null;
        }
        return q(this.f11741a + 1);
    }

    public y(int i, LocalDate localDate, String str) {
        this.f11741a = i;
        this.b = localDate;
        this.c = str;
    }

    public static y q(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            y[] yVarArr = e;
            if (i2 < yVarArr.length) {
                return yVarArr[i2];
            }
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(getValue(), j$.time.temporal.a.ERA);
    }

    public static y j(LocalDate localDate) {
        LocalDate localDate2 = x.d;
        if (!j$.time.c.b(localDate2) ? localDate.s() >= localDate2.s() : localDate.F(localDate2) >= 0) {
            throw new RuntimeException("JapaneseDate before Meiji 6 are not supported");
        }
        y[] yVarArr = e;
        for (int length = yVarArr.length - 1; length >= 0; length--) {
            y yVar = yVarArr[length];
            if (localDate.compareTo(yVar.b) >= 0) {
                return yVar;
            }
        }
        return null;
    }

    @Override // j$.time.chrono.m
    public final int getValue() {
        return this.f11741a;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        if (pVar != aVar) {
            return j$.time.temporal.q.d(this, pVar);
        }
        return v.c.i(aVar);
    }

    public final String toString() {
        return this.c;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 5, this);
    }
}
