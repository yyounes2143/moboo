package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.mQ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1913mQ implements InterfaceC0572Cr {
    public static String[] A03 = {"SXf2ikyU7x67I20o8i24dVpGUFSBqQTw", "mkUiuiIj8yhWc2", "ZVpzrzkkS3TCIC8ssuB1q665Cly", "AyVvw5Y1t2x", "iglXNLTRJoy", "iTKB7JlXxZgW", "zcduVvETVwMCfQslxyZfhoZ", "8SZ4gfyzqyWZuyWUMuDO3PJ5JnvEF7yK"};
    public boolean A00;
    public final InterfaceC0572Cr A01;
    public final /* synthetic */ C9F A02;

    public C1913mQ(C9F c9f, InterfaceC0572Cr interfaceC0572Cr) {
        this.A02 = c9f;
        this.A01 = interfaceC0572Cr;
    }

    public final void A00() {
        this.A00 = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0572Cr
    public final boolean AAV() {
        if (!this.A02.A03()) {
            boolean AAV = this.A01.AAV();
            String[] strArr = A03;
            if (strArr[5].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "tfusTrbeCFgw";
            strArr2[6] = "N1qkw3c8e5Hqf14VA9IMw1Y";
            if (AAV) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0572Cr
    public final void ABs() throws IOException {
        this.A01.ABs();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
        if (r0 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
        if (r0 != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006b, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0098, code lost:
        if (r0 != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
        r3 = r6.A08;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00df, code lost:
        if (r3 == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f7, code lost:
        if (r3 == false) goto L37;
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0572Cr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int AGf(com.facebook.ads.redexgen.X.C6N r13, com.facebook.ads.redexgen.X.C1983nY r14, int r15) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1913mQ.AGf(com.facebook.ads.redexgen.X.6N, com.facebook.ads.redexgen.X.nY, int):int");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0572Cr
    public final int AJI(long j) {
        if (this.A02.A03()) {
            return -3;
        }
        return this.A01.AJI(j);
    }
}
