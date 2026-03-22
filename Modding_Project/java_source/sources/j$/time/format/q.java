package j$.time.format;

import j$.time.ZoneId;
/* loaded from: classes2.dex */
public class q implements f {

    /* renamed from: a  reason: collision with root package name */
    public final C2162a f11759a;
    public final String b;

    public q(C2162a c2162a, String str) {
        this.f11759a = c2162a;
        this.b = str;
    }

    @Override // j$.time.format.f
    public boolean h(u uVar, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) uVar.b(this.f11759a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    public final String toString() {
        return this.b;
    }
}
