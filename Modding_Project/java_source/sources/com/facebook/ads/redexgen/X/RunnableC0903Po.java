package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Po  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0903Po implements Runnable {
    public final /* synthetic */ C04236j A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC0903Po(C04236j c04236j, ArrayList arrayList) {
        this.A00 = c04236j;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            C0910Pv change = (C0910Pv) it.next();
            this.A00.A0c(change);
        }
        this.A01.clear();
        this.A00.A03.remove(this.A01);
    }
}
