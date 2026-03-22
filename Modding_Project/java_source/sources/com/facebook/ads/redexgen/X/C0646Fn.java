package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.SystemClock;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
/* renamed from: com.facebook.ads.redexgen.X.Fn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0646Fn {
    public final Handler A00;
    public final InterfaceC0647Fo A01;

    public C0646Fn(Handler handler, InterfaceC0647Fo interfaceC0647Fo) {
        this.A00 = interfaceC0647Fo != null ? (Handler) C3M.A01(handler) : null;
        this.A01 = interfaceC0647Fo;
    }

    public final void A00(final int i, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fj
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A02(i, j);
                }
            });
        }
    }

    public final void A01(final int i, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fa
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A03(i, j);
                }
            });
        }
    }

    public final /* synthetic */ void A02(int i, long j) {
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).ACr(i, j);
    }

    public final /* synthetic */ void A03(int i, long j) {
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AD7(i, j);
    }

    @MetaExoPlayerCustomization("New event handler")
    public final void A04(int i, C2061or c2061or) {
        if (this.A01 != null) {
            this.A00.post(new RunnableC0645Fm(this, i, c2061or));
        }
    }

    public final void A05(final C2061or c2061or, final C03975j c03975j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fg
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A06(c2061or, c03975j);
                }
            });
        }
    }

    public final /* synthetic */ void A06(C2061or c2061or, C03975j c03975j) {
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AFk(c2061or);
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AFl(c2061or, c03975j);
    }

    public final void A07(final C2014o4 c2014o4) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fi
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A08(c2014o4);
                }
            });
        }
    }

    public final /* synthetic */ void A08(C2014o4 c2014o4) {
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AFr(c2014o4);
    }

    public final void A09(final C03945g c03945g) {
        c03945g.A02();
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fk
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A0B(c03945g);
                }
            });
        }
    }

    public final void A0A(final C03945g c03945g) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fe
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A0C(c03945g);
                }
            });
        }
    }

    public final /* synthetic */ void A0B(C03945g c03945g) {
        c03945g.A02();
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AFe(c03945g);
    }

    public final /* synthetic */ void A0C(C03945g c03945g) {
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AFf(c03945g);
    }

    public final void A0D(final Object obj) {
        if (this.A00 != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Ff
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A0E(obj, elapsedRealtime);
                }
            });
        }
    }

    public final /* synthetic */ void A0E(Object obj, long j) {
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AEx(obj, j);
    }

    @MetaExoPlayerCustomization("New event handler")
    public final void A0F(final String str) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fh
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0G(final String str, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Fd
                @Override // java.lang.Runnable
                public final void run() {
                    C0646Fn.this.A0H(str, j, j2);
                }
            });
        }
    }

    public final /* synthetic */ void A0H(String str, long j, long j2) {
        ((InterfaceC0647Fo) AbstractC03624a.A0f(this.A01)).AFd(str, j, j2);
    }
}
