package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.InterfaceC2153b;
/* loaded from: classes2.dex */
public final class t implements j$.time.temporal.m {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InterfaceC2153b f11761a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ j$.time.chrono.l c;
    public final /* synthetic */ ZoneId d;

    @Override // j$.time.temporal.m
    public final /* synthetic */ int i(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.a(this, pVar);
    }

    public t(InterfaceC2153b interfaceC2153b, j$.time.temporal.m mVar, j$.time.chrono.l lVar, ZoneId zoneId) {
        this.f11761a = interfaceC2153b;
        this.b = mVar;
        this.c = lVar;
        this.d = zoneId;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.time.temporal.m, java.lang.Object] */
    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        InterfaceC2153b interfaceC2153b = this.f11761a;
        if (interfaceC2153b != null && pVar.r()) {
            return interfaceC2153b.e(pVar);
        }
        return this.b.e(pVar);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.time.temporal.m, java.lang.Object] */
    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        InterfaceC2153b interfaceC2153b = this.f11761a;
        if (interfaceC2153b != null && pVar.r()) {
            return interfaceC2153b.l(pVar);
        }
        return this.b.l(pVar);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.time.temporal.m, java.lang.Object] */
    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        InterfaceC2153b interfaceC2153b = this.f11761a;
        if (interfaceC2153b != null && pVar.r()) {
            return interfaceC2153b.r(pVar);
        }
        return this.b.r(pVar);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [j$.time.temporal.m, java.lang.Object] */
    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.b) {
            return this.c;
        }
        if (c2162a == j$.time.temporal.q.f11790a) {
            return this.d;
        }
        if (c2162a == j$.time.temporal.q.c) {
            return this.b.n(c2162a);
        }
        return c2162a.a(this);
    }

    public final String toString() {
        String str;
        String str2 = "";
        j$.time.chrono.l lVar = this.c;
        if (lVar != null) {
            str = " with chronology " + lVar;
        } else {
            str = "";
        }
        ZoneId zoneId = this.d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.b + str + str2;
    }
}
