package j$.time.format;
/* loaded from: classes2.dex */
public final class o implements f {

    /* renamed from: a  reason: collision with root package name */
    public final j$.time.temporal.p f11758a;
    public final B b;
    public final x c;
    public volatile j d;

    public o(j$.time.temporal.p pVar, B b, x xVar) {
        this.f11758a = pVar;
        this.b = b;
        this.c = xVar;
    }

    @Override // j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        String c;
        Long a2 = uVar.a(this.f11758a);
        if (a2 == null) {
            return false;
        }
        j$.time.chrono.l lVar = (j$.time.chrono.l) uVar.f11762a.n(j$.time.temporal.q.b);
        if (lVar == null || lVar == j$.time.chrono.s.c) {
            c = this.c.c(this.f11758a, a2.longValue(), this.b, uVar.b.b);
        } else {
            c = this.c.b(lVar, this.f11758a, a2.longValue(), this.b, uVar.b.b);
        }
        if (c != null) {
            sb.append(c);
            return true;
        }
        if (this.d == null) {
            this.d = new j(this.f11758a, 1, 19, A.NORMAL);
        }
        return this.d.h(uVar, sb);
    }

    public final String toString() {
        B b = B.FULL;
        j$.time.temporal.p pVar = this.f11758a;
        B b2 = this.b;
        if (b2 == b) {
            return "Text(" + pVar + ")";
        }
        return "Text(" + pVar + "," + b2 + ")";
    }
}
