package com.applovin.impl;

import android.app.Activity;
import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.impl.r5;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class s1 extends r1 {
    private final t1 N;
    private c0 O;
    private long P;
    private final AtomicBoolean Q;

    public s1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.N = new t1(this.f3517a, this.d, this.b);
        this.Q = new AtomicBoolean();
    }

    private long D() {
        com.applovin.impl.sdk.ad.b bVar = this.f3517a;
        if (bVar instanceof com.applovin.impl.sdk.ad.a) {
            float p1 = ((com.applovin.impl.sdk.ad.a) bVar).p1();
            if (p1 <= 0.0f) {
                p1 = (float) this.f3517a.s();
            }
            return (long) (z6.c(p1) * (this.f3517a.I() / 100.0d));
        }
        return 0L;
    }

    private int E() {
        c0 c0Var;
        int i = 100;
        if (i()) {
            if (!F() && (c0Var = this.O) != null) {
                i = (int) Math.min(100.0d, ((this.P - c0Var.b()) / this.P) * 100.0d);
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                oVar.a("AppLovinFullscreenActivity", "Ad engaged at " + i + "%");
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Marking ad as fully watched");
        }
        this.Q.set(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        this.q = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.g gVar = this.k;
        if (gVar != null) {
            arrayList.add(new u3(gVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.j;
            arrayList.add(new u3(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.f3517a.getAdEventTracker().b(this.i, arrayList);
    }

    @Override // com.applovin.impl.r1
    public void B() {
        this.N.a(this.l);
        this.q = SystemClock.elapsedRealtime();
        this.Q.set(true);
    }

    public boolean F() {
        if ((this.K && this.f3517a.j1()) || !i()) {
            return true;
        }
        return this.Q.get();
    }

    public void J() {
        long Z;
        long j = 0;
        if (this.f3517a.Y() < 0 && this.f3517a.Z() < 0) {
            return;
        }
        if (this.f3517a.Y() >= 0) {
            Z = this.f3517a.Y();
        } else {
            if (this.f3517a.f1()) {
                int p1 = (int) ((com.applovin.impl.sdk.ad.a) this.f3517a).p1();
                if (p1 > 0) {
                    j = TimeUnit.SECONDS.toMillis(p1);
                } else {
                    int s = (int) this.f3517a.s();
                    if (s > 0) {
                        j = TimeUnit.SECONDS.toMillis(s);
                    }
                }
            }
            Z = (long) (j * (this.f3517a.Z() / 100.0d));
        }
        c(Z);
    }

    @Override // com.applovin.impl.c2.a
    public void a() {
    }

    @Override // com.applovin.impl.c2.a
    public void b() {
    }

    @Override // com.applovin.impl.r1
    public void f() {
        super.f();
        B();
    }

    @Override // com.applovin.impl.r1
    public void g() {
        super.g();
        B();
    }

    @Override // com.applovin.impl.r1
    public void n() {
        super.a(E(), false, F(), -2L);
    }

    @Override // com.applovin.impl.r1
    public void x() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.r1
    public void y() {
        super.y();
        this.Q.set(true);
    }

    @Override // com.applovin.impl.r1
    public void a(ViewGroup viewGroup) {
        this.N.a(this.k, this.j, this.i, viewGroup);
        if (a(false)) {
            return;
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null) {
            kVar.b();
        }
        this.i.renderAd(this.f3517a);
        a("javascript:al_onPoststitialShow();", this.f3517a.H());
        if (i()) {
            long D = D();
            this.P = D;
            if (D > 0) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.c;
                    oVar.a("AppLovinFullscreenActivity", "Scheduling timer for ad fully watched in " + this.P + "ms...");
                }
                this.O = c0.a(this.P, this.b, new Runnable() { // from class: com.applovin.impl.Oooooooooo
                    @Override // java.lang.Runnable
                    public final void run() {
                        s1.this.G();
                    }
                });
            }
        }
        if (this.k != null) {
            if (this.f3517a.s() >= 0) {
                a(this.k, this.f3517a.s(), new Runnable() { // from class: com.applovin.impl.Ooooooooo
                    @Override // java.lang.Runnable
                    public final void run() {
                        s1.this.H();
                    }
                });
            } else {
                this.k.setVisibility(0);
            }
        }
        J();
        this.b.q0().a(new f6(this.b, "updateMainViewOM", new Runnable() { // from class: com.applovin.impl.Oooooooo
            @Override // java.lang.Runnable
            public final void run() {
                s1.this.I();
            }
        }), r5.b.OTHER, TimeUnit.SECONDS.toMillis(1L));
        q();
        super.c(z6.e(this.b));
    }

    @Override // com.applovin.impl.r1
    public void b(long j) {
    }

    @Override // com.applovin.impl.r1
    public void a(String str) {
        if (!((Boolean) this.b.a(l4.k6)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar = this.f3517a;
            if (bVar != null) {
                bVar.a(str);
            }
            n();
        }
        c0 c0Var = this.O;
        if (c0Var != null) {
            c0Var.a();
            this.O = null;
        }
        super.a(str);
    }

    @Override // com.applovin.impl.r1
    public void w() {
    }
}
