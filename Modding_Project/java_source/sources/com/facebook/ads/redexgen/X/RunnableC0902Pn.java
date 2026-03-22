package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Pn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0902Pn implements Runnable {
    public final /* synthetic */ C04236j A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC0902Pn(C04236j c04236j, ArrayList arrayList) {
        this.A00 = c04236j;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            C0911Pw c0911Pw = (C0911Pw) it.next();
            this.A00.A0e(c0911Pw.A04, c0911Pw.A00, c0911Pw.A01, c0911Pw.A02, c0911Pw.A03);
        }
        this.A01.clear();
        this.A00.A05.remove(this.A01);
    }
}
