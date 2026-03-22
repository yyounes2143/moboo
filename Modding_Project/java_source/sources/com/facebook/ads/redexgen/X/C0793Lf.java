package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Lf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0793Lf implements InterfaceC1103Xl {
    public static String[] A01 = {"dAENZa04S5kpLZ1505OVGzU", "BCWAX", "x4EBtM5L1", "d5mzvX7vdf5oGTbdkf23a85QS6J33UuP", "T3xMk8xyeuXfnP2cHDF22zgmf4sSWk7a", "D6RnJQb1nSkQk7teZoJG77p", "lMrZ8D5HcAsH09zpnUIM78ubrFXrhoz6", "r7D6OIPJDO7XxyVdFUwVLtQI1zZlrgYr"};
    public final /* synthetic */ C0790Lc A00;

    public C0793Lf(C0790Lc c0790Lc) {
        this.A00 = c0790Lc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1103Xl
    public final void ACC(AbstractC1104Xm abstractC1104Xm) {
        boolean A0W;
        boolean z;
        C1017Ua c1017Ua;
        NB nb;
        InterfaceC1105Xn interfaceC1105Xn;
        YY yy;
        C1376dL c1376dL;
        AtomicBoolean atomicBoolean;
        boolean A0V;
        AtomicBoolean atomicBoolean2;
        C1188aI c1188aI;
        A0W = this.A00.A0W();
        if (A0W) {
            atomicBoolean2 = this.A00.A0V;
            if (!atomicBoolean2.get()) {
                c1188aI = this.A00.A0T;
                c1188aI.A07(this.A00);
                return;
            }
        }
        C0790Lc c0790Lc = this.A00;
        if (A01[4].charAt(5) == '8') {
            A01[1] = "011C";
            z = c0790Lc.A0X;
            if (z) {
                atomicBoolean = this.A00.A0V;
                if (!atomicBoolean.get()) {
                    A0V = this.A00.A0V();
                    if (A0V) {
                        this.A00.A0a.setToolbarActionMode(0);
                        this.A00.A0L();
                        return;
                    }
                }
            }
            c1017Ua = this.A00.A0N;
            c1017Ua.A04(UZ.A07, null);
            nb = this.A00.A0J;
            if (nb.A0P()) {
                c1376dL = this.A00.A0L;
                c1376dL.A0F().ADk();
            }
            interfaceC1105Xn = this.A00.A0Q;
            C0790Lc c0790Lc2 = this.A00;
            if (A01[2].length() == 9) {
                A01[6] = "SsRiNY9tvP3hEWy4eyTF9NsffnrPtCfL";
                yy = c0790Lc2.A0R;
                interfaceC1105Xn.A4b(yy.A7o());
                return;
            }
        }
        throw new RuntimeException();
    }
}
