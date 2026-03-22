package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.facebook.ads.redexgen.X.Pp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0904Pp implements Runnable {
    public final /* synthetic */ C04236j A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC0904Pp(C04236j c04236j, ArrayList arrayList) {
        this.A00 = c04236j;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.A01.iterator();
        while (it.hasNext()) {
            AbstractC0921Qg holder = (AbstractC0921Qg) it.next();
            this.A00.A0d(holder);
        }
        this.A01.clear();
        this.A00.A01.remove(this.A01);
    }
}
