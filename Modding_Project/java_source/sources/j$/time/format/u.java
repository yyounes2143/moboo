package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.InterfaceC2153b;
import j$.util.Objects;
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public final j$.time.temporal.m f11762a;
    public final DateTimeFormatter b;
    public int c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, j$.time.chrono.l] */
    public u(j$.time.temporal.m mVar, DateTimeFormatter dateTimeFormatter) {
        j$.time.temporal.a[] values;
        j$.time.chrono.s sVar = dateTimeFormatter.d;
        if (sVar != null) {
            ?? r1 = (j$.time.chrono.l) mVar.n(j$.time.temporal.q.b);
            ZoneId zoneId = (ZoneId) mVar.n(j$.time.temporal.q.f11790a);
            InterfaceC2153b interfaceC2153b = null;
            sVar = Objects.equals(sVar, r1) ? null : sVar;
            Objects.equals(null, zoneId);
            if (sVar != null) {
                j$.time.chrono.s sVar2 = sVar != null ? sVar : r1;
                if (sVar != null) {
                    if (mVar.e(j$.time.temporal.a.EPOCH_DAY)) {
                        interfaceC2153b = sVar2.j(mVar);
                    } else if (sVar != j$.time.chrono.s.c || r1 != 0) {
                        for (j$.time.temporal.a aVar : j$.time.temporal.a.values()) {
                            if (aVar.r() && mVar.e(aVar)) {
                                throw new RuntimeException("Unable to apply override chronology '" + sVar + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + mVar);
                            }
                        }
                    }
                }
                mVar = new t(interfaceC2153b, mVar, sVar2, zoneId);
            }
        }
        this.f11762a = mVar;
        this.b = dateTimeFormatter;
    }

    public final Object b(C2162a c2162a) {
        j$.time.temporal.m mVar = this.f11762a;
        Object n = mVar.n(c2162a);
        if (n == null && this.c == 0) {
            throw new RuntimeException("Unable to extract " + c2162a + " from temporal " + mVar);
        }
        return n;
    }

    public final Long a(j$.time.temporal.p pVar) {
        int i = this.c;
        j$.time.temporal.m mVar = this.f11762a;
        if (i <= 0 || mVar.e(pVar)) {
            return Long.valueOf(mVar.r(pVar));
        }
        return null;
    }

    public final String toString() {
        return this.f11762a.toString();
    }
}
