package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
/* renamed from: com.facebook.ads.redexgen.X.98  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass98 extends AbstractC1915mS implements InterfaceC0561Cg {
    public long A00;
    public C5H A01;
    public InterfaceC1737jM<InterfaceExecutorC0632Ez> A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final C2Q A07;
    public final C2052oi A08;
    public final InterfaceC03844w A09;
    public final C9U A0A;
    public final InterfaceC0555Ca A0B;
    public final InterfaceC0610Ed A0C;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.jM != com.google.common.base.Supplier<com.facebook.ads.androidx.media3.exoplayer.util.ReleasableExecutor> */
    @MetaExoPlayerCustomization("Allow for passing a new drmSessionManager")
    public AnonymousClass98(C2052oi c2052oi, InterfaceC03844w interfaceC03844w, InterfaceC0555Ca interfaceC0555Ca, C9U c9u, InterfaceC0610Ed interfaceC0610Ed, int i, InterfaceC1737jM<InterfaceExecutorC0632Ez> interfaceC1737jM) {
        this.A07 = (C2Q) C3M.A01(c2052oi.A03);
        this.A08 = c2052oi;
        this.A09 = interfaceC03844w;
        this.A0B = interfaceC0555Ca;
        this.A0A = c9u == null ? C9U.A00 : c9u;
        this.A0C = interfaceC0610Ed;
        this.A06 = i;
        this.A04 = true;
        this.A00 = -9223372036854775807L;
        this.A02 = interfaceC1737jM;
    }

    private void A00() {
        final Timeline anonymousClass97 = new AnonymousClass97(this.A00, this.A05, false, this.A03, null, this.A08);
        if (this.A04) {
            Timeline timeline = new C9C(anonymousClass97) { // from class: com.facebook.ads.redexgen.X.12
                @Override // com.facebook.ads.redexgen.X.C9C, com.facebook.ads.androidx.media3.common.Timeline
                public final C2032oN A0I(int i, C2032oN c2032oN, boolean z) {
                    super.A0I(i, c2032oN, z);
                    c2032oN.A05 = true;
                    return c2032oN;
                }

                @Override // com.facebook.ads.redexgen.X.C9C, com.facebook.ads.androidx.media3.common.Timeline
                public final C2030oL A0L(int i, C2030oL c2030oL, long j) {
                    super.A0L(i, c2030oL, j);
                    c2030oL.A0F = true;
                    return c2030oL;
                }
            };
            anonymousClass97 = timeline;
        }
        A05(anonymousClass97);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1915mS
    public final void A09() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1915mS
    public final void A0A(C5H c5h) {
        this.A01 = c5h;
        this.A0A.AGK();
        this.A0A.AIu((Looper) C3M.A01(Looper.myLooper()), A00());
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.CL
    @MetaExoPlayerCustomization("PlayerId needs to be set")
    public final InterfaceC1909mM A5O(C1908mL c1908mL, EO eo, long j) {
        InterfaceExecutorC0632Ez interfaceExecutorC0632Ez;
        InterfaceC1996nl A5A = this.A09.A5A();
        if (this.A01 != null) {
            A5A.A3v(this.A01);
        }
        Uri uri = this.A07.A00;
        InterfaceC0556Cb A5P = this.A0B.A5P(C04527m.A03);
        C9U c9u = this.A0A;
        C9P A01 = A01(c1908mL);
        InterfaceC0610Ed interfaceC0610Ed = this.A0C;
        CW A02 = A02(c1908mL);
        String str = this.A07.A04;
        int i = this.A06;
        if (this.A02 != null) {
            interfaceExecutorC0632Ez = this.A02.get();
        } else {
            interfaceExecutorC0632Ez = null;
        }
        return new C9A(uri, A5A, A5P, c9u, A01, interfaceC0610Ed, A02, this, eo, str, i, interfaceExecutorC0632Ez);
    }

    @Override // com.facebook.ads.redexgen.X.CL
    public final void ABu() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0561Cg
    public final void AFH(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.A00;
        }
        if (!this.A04 && this.A00 == j && this.A05 == z && this.A03 == z2) {
            return;
        }
        this.A00 = j;
        this.A05 = z;
        this.A03 = z2;
        this.A04 = false;
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.CL
    public final void AH0(InterfaceC1909mM interfaceC1909mM) {
        ((C9A) interfaceC1909mM).A0a();
    }
}
