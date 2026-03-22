package com.mbridge.msdk.tracker;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class q implements l {

    /* renamed from: a  reason: collision with root package name */
    private final g f9703a;

    public q(g gVar) {
        this.f9703a = gVar;
    }

    @Override // com.mbridge.msdk.tracker.l
    public void a(e eVar) {
        if (y.b(this.f9703a)) {
            return;
        }
        this.f9703a.a(eVar);
    }

    @Override // com.mbridge.msdk.tracker.l
    public void b(e eVar) {
        if (!y.b(this.f9703a)) {
            try {
                h e = eVar.e();
                if (y.a(e)) {
                    eVar.a(e.a(eVar));
                }
                this.f9703a.b(eVar);
            } catch (Exception unused) {
                boolean z = a.f9655a;
            }
        }
    }

    @Override // com.mbridge.msdk.tracker.l
    public long[] a() {
        if (y.b(this.f9703a)) {
            return new long[]{0, 0};
        }
        return this.f9703a.a();
    }
}
