package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.lf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1867lf implements EU, C5H {
    public int A00;
    public int A01;
    @MetaExoPlayerCustomization("Needed for Meta Custom getAvailableSamples")
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public boolean A0A;
    public final C3T A0B;
    public final ES A0C;
    public final C0627Eu A0D;
    @MetaExoPlayerCustomization("Upstream uses Map. Oculus doesn't play well with these collections")
    public final Map<Integer, Long> A0E;
    public final boolean A0F;
    public static final List<Long> A0L = C1658i1.A03(4400000L, 3200000L, 2300000L, 1600000L, 810000L);
    public static final List<Long> A0G = C1658i1.A03(1400000L, 990000L, 730000L, 510000L, 230000L);
    public static final List<Long> A0H = C1658i1.A03(2100000L, 1400000L, 1000000L, 890000L, 640000L);
    public static final List<Long> A0I = C1658i1.A03(2600000L, 1700000L, 1300000L, 1000000L, 700000L);
    public static final List<Long> A0J = C1658i1.A03(5700000L, 3700000L, 2300000L, 1700000L, 990000L);
    public static final List<Long> A0K = C1658i1.A03(2800000L, 1800000L, 1400000L, 1100000L, 870000L);

    @Deprecated
    public C1867lf() {
        this(null, Collections.emptyMap(), 2000, C3T.A00, false);
    }

    public C1867lf(Context context, Map<Integer, Long> initialBitrateEstimates, int i, C3T c3t, boolean z) {
        this.A0E = C1658i1.A04(initialBitrateEstimates);
        this.A0C = new ES();
        this.A0D = new C0627Eu(i);
        this.A0B = c3t;
        this.A0F = z;
        if (context != null) {
            C4D A03 = C4D.A03(context);
            this.A00 = A03.A09();
            this.A04 = A00(this.A00);
            A03.A0A(new C4B() { // from class: com.facebook.ads.redexgen.X.lg
                @Override // com.facebook.ads.redexgen.X.C4B
                public final void AEM(int i2) {
                    C1867lf.this.A01(i2);
                }
            });
            return;
        }
        this.A00 = 0;
        this.A04 = A00(0);
    }

    private long A00(int i) {
        Long initialBitrateEstimate = this.A0E.get(Integer.valueOf(i));
        if (initialBitrateEstimate == null) {
            initialBitrateEstimate = this.A0E.get(0);
        }
        if (initialBitrateEstimate == null) {
            initialBitrateEstimate = 1000000L;
        }
        return initialBitrateEstimate.longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A01(int i) {
        int sampleElapsedTimeMs;
        if (this.A00 == 0 || this.A0F) {
            if (this.A0A) {
                i = this.A01;
            }
            if (this.A00 == i) {
                return;
            }
            this.A00 = i;
            if (i == 1 || i == 0 || i == 8) {
                return;
            }
            this.A04 = A00(i);
            long A6B = this.A0B.A6B();
            if (this.A03 > 0) {
                long nowMs = A6B - this.A07;
                sampleElapsedTimeMs = (int) nowMs;
            } else {
                sampleElapsedTimeMs = 0;
            }
            A02(sampleElapsedTimeMs, this.A06, this.A04);
            this.A07 = A6B;
            this.A06 = 0L;
            this.A08 = 0L;
            this.A09 = 0L;
            this.A0D.A06();
        }
    }

    private void A02(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.A05) {
            return;
        }
        this.A05 = j2;
        this.A0C.A00(i, j, j2);
    }

    public static boolean A04(AnonymousClass56 anonymousClass56, boolean z) {
        return z && !anonymousClass56.A06(8);
    }

    @Override // com.facebook.ads.redexgen.X.C5H
    public final synchronized void ACg(InterfaceC1996nl interfaceC1996nl, AnonymousClass56 anonymousClass56, boolean z, int i) {
        if (A04(anonymousClass56, z)) {
            this.A06 += i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0058, code lost:
        if (r0 >= 0) goto L19;
     */
    @Override // com.facebook.ads.redexgen.X.C5H
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void AFW(com.facebook.ads.redexgen.X.InterfaceC1996nl r17, com.facebook.ads.redexgen.X.AnonymousClass56 r18, boolean r19) {
        /*
            r16 = this;
            r4 = r16
            monitor-enter(r4)
            r0 = r19
            r1 = r18
            boolean r0 = A04(r1, r0)     // Catch: java.lang.Throwable -> L7f
            if (r0 != 0) goto Lf
            monitor-exit(r4)
            return
        Lf:
            int r0 = r4.A03     // Catch: java.lang.Throwable -> L7f
            r9 = 1
            if (r0 <= 0) goto L16
            r0 = 1
            goto L17
        L16:
            r0 = 0
        L17:
            com.facebook.ads.redexgen.X.C3M.A08(r0)     // Catch: java.lang.Throwable -> L7f
            com.facebook.ads.redexgen.X.3T r0 = r4.A0B     // Catch: java.lang.Throwable -> L7f
            long r2 = r0.A6B()     // Catch: java.lang.Throwable -> L7f
            long r5 = r4.A07     // Catch: java.lang.Throwable -> L7f
            long r0 = r2 - r5
            int r11 = (int) r0     // Catch: java.lang.Throwable -> L7f
            long r5 = r4.A09     // Catch: java.lang.Throwable -> L7f
            long r0 = (long) r11     // Catch: java.lang.Throwable -> L7f
            long r5 = r5 + r0
            r4.A09 = r5     // Catch: java.lang.Throwable -> L7f
            long r5 = r4.A08     // Catch: java.lang.Throwable -> L7f
            long r0 = r4.A06     // Catch: java.lang.Throwable -> L7f
            long r5 = r5 + r0
            r4.A08 = r5     // Catch: java.lang.Throwable -> L7f
            if (r11 <= 0) goto L78
            long r0 = r4.A06     // Catch: java.lang.Throwable -> L7f
            float r8 = (float) r0     // Catch: java.lang.Throwable -> L7f
            r0 = 1174011904(0x45fa0000, float:8000.0)
            float r8 = r8 * r0
            float r0 = (float) r11     // Catch: java.lang.Throwable -> L7f
            float r8 = r8 / r0
            com.facebook.ads.redexgen.X.Eu r7 = r4.A0D     // Catch: java.lang.Throwable -> L7f
            long r5 = r4.A06     // Catch: java.lang.Throwable -> L7f
            double r0 = (double) r5     // Catch: java.lang.Throwable -> L7f
            double r5 = java.lang.Math.sqrt(r0)     // Catch: java.lang.Throwable -> L7f
            int r0 = (int) r5     // Catch: java.lang.Throwable -> L7f
            r7.A07(r0, r8)     // Catch: java.lang.Throwable -> L7f
            long r7 = r4.A09     // Catch: java.lang.Throwable -> L7f
            r5 = 2000(0x7d0, double:9.88E-321)
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 >= 0) goto L5a
            long r7 = r4.A08     // Catch: java.lang.Throwable -> L7f
            r5 = 524288(0x80000, double:2.590327E-318)
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 < 0) goto L65
        L5a:
            com.facebook.ads.redexgen.X.Eu r1 = r4.A0D     // Catch: java.lang.Throwable -> L7f
            r0 = 1056964608(0x3f000000, float:0.5)
            float r0 = r1.A05(r0)     // Catch: java.lang.Throwable -> L7f
            long r0 = (long) r0     // Catch: java.lang.Throwable -> L7f
            r4.A04 = r0     // Catch: java.lang.Throwable -> L7f
        L65:
            int r0 = r4.A02     // Catch: java.lang.Throwable -> L7f
            int r0 = r0 + r9
            r4.A02 = r0     // Catch: java.lang.Throwable -> L7f
            long r12 = r4.A06     // Catch: java.lang.Throwable -> L7f
            long r14 = r4.A04     // Catch: java.lang.Throwable -> L7f
            r10 = r4
            r10.A02(r11, r12, r14)     // Catch: java.lang.Throwable -> L7f
            r4.A07 = r2     // Catch: java.lang.Throwable -> L7f
            r0 = 0
            r4.A06 = r0     // Catch: java.lang.Throwable -> L7f
        L78:
            int r0 = r4.A03     // Catch: java.lang.Throwable -> L7f
            int r0 = r0 - r9
            r4.A03 = r0     // Catch: java.lang.Throwable -> L7f
            monitor-exit(r4)
            return
        L7f:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1867lf.AFW(com.facebook.ads.redexgen.X.nl, com.facebook.ads.redexgen.X.56, boolean):void");
    }

    @Override // com.facebook.ads.redexgen.X.C5H
    public final synchronized void AFX(@MetaExoPlayerCustomization InterfaceC1996nl interfaceC1996nl, AnonymousClass56 anonymousClass56, boolean z, boolean z2) {
        if (A04(anonymousClass56, z)) {
            if (this.A03 == 0) {
                this.A07 = this.A0B.A6B();
            }
            this.A03++;
        }
    }
}
