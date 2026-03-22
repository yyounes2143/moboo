package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Kb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0763Kb {
    public final int A00;
    public final String A01;
    public final List<C0762Ka> A02;
    public final byte[] A03;

    public C0763Kb(int i, String str, List<C0762Ka> list, byte[] bArr) {
        List<C0762Ka> unmodifiableList;
        this.A00 = i;
        this.A01 = str;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.A02 = unmodifiableList;
        this.A03 = bArr;
    }
}
