package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.LinkedHashMap;
/* loaded from: assets/audience_network.dex */
public class A9 implements InterfaceC2105pp {
    public final /* synthetic */ A8 A00;

    public A9(A8 a8) {
        this.A00 = a8;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2105pp
    public final void AF8() {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        ArrayList<Runnable> arrayList;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        InterfaceC2105pp interfaceC2105pp;
        InterfaceC2105pp interfaceC2105pp2;
        linkedHashMap = this.A00.A06;
        synchronized (linkedHashMap) {
            linkedHashMap2 = this.A00.A06;
            arrayList = new ArrayList(linkedHashMap2.size());
            linkedHashMap3 = this.A00.A06;
            for (Runnable runnable : linkedHashMap3.values()) {
                if (runnable != null) {
                    arrayList.add(runnable);
                }
            }
            linkedHashMap4 = this.A00.A06;
            linkedHashMap4.clear();
        }
        for (Runnable runnable2 : arrayList) {
            runnable2.run();
        }
        interfaceC2105pp = this.A00.A01;
        if (interfaceC2105pp != null) {
            interfaceC2105pp2 = this.A00.A01;
            interfaceC2105pp2.AF8();
        }
    }
}
