package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
/* renamed from: com.facebook.ads.redexgen.X.8C  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C8C {
    public final Handler A00;
    public final C8D A01;

    public C8C(Handler handler, C8D c8d) {
        this.A00 = c8d != null ? (Handler) C3M.A01(handler) : null;
        this.A01 = c8d;
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "New API")
    public final void A00(final int i) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.7y
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A01(final int i, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.82
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A02(i, j, j2);
                }
            });
        }
    }

    public final /* synthetic */ void A02(int i, long j, long j2) {
        ((C8D) AbstractC03624a.A0f(this.A01)).ACY(i, j, j2);
    }

    public final void A03(final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.83
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A04(j);
                }
            });
        }
    }

    public final /* synthetic */ void A04(long j) {
        ((C8D) AbstractC03624a.A0f(this.A01)).ACU(j);
    }

    public final void A05(final C2061or c2061or, final C03975j c03975j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.87
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A06(c2061or, c03975j);
                }
            });
        }
    }

    public final /* synthetic */ void A06(C2061or c2061or, C03975j c03975j) {
        ((C8D) AbstractC03624a.A0f(this.A01)).ACS(c2061or);
        ((C8D) AbstractC03624a.A0f(this.A01)).ACT(c2061or, c03975j);
    }

    public final void A07(final C03945g c03945g) {
        c03945g.A02();
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.85
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A09(c03945g);
                }
            });
        }
    }

    public final void A08(final C03945g c03945g) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.8B
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A0A(c03945g);
                }
            });
        }
    }

    public final /* synthetic */ void A09(C03945g c03945g) {
        c03945g.A02();
        ((C8D) AbstractC03624a.A0f(this.A01)).ACQ(c03945g);
    }

    public final /* synthetic */ void A0A(C03945g c03945g) {
        ((C8D) AbstractC03624a.A0f(this.A01)).ACR(c03945g);
    }

    public final void A0B(final C8F c8f) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.81
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0C(final C8F c8f) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.7x
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0D(final Exception exc) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.84
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A0E(exc);
                }
            });
        }
    }

    public final /* synthetic */ void A0E(Exception exc) {
        ((C8D) AbstractC03624a.A0f(this.A01)).ACV(exc);
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "New API")
    public final void A0F(final String str) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.88
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0G(final String str, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.7w
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A0H(str, j, j2);
                }
            });
        }
    }

    public final /* synthetic */ void A0H(String str, long j, long j2) {
        ((C8D) AbstractC03624a.A0f(this.A01)).ACP(str, j, j2);
    }

    public final void A0I(final boolean z) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.80
                @Override // java.lang.Runnable
                public final void run() {
                    C8C.this.A0J(z);
                }
            });
        }
    }

    public final /* synthetic */ void A0J(boolean z) {
        ((C8D) AbstractC03624a.A0f(this.A01)).AFF(z);
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "New API")
    public final void A0K(final byte[] bArr, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.89
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }
}
