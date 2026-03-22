package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.pw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2112pw<ModelType, StateType> {
    public final ModelType A03;
    public final StateType A04;
    public final String A05;
    public final String A06;
    public List<InterfaceC2114py<ModelType, StateType>> A01 = null;
    public C2110pu A00 = C2110pu.A0B;
    public boolean A02 = false;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pw != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    public C2112pw(ModelType model, StateType state, String str) {
        this.A03 = model;
        this.A04 = state;
        this.A06 = str;
        this.A05 = str;
    }

    public static /* synthetic */ C2110pu A00(C2112pw c2112pw) {
        return c2112pw.A00;
    }

    public static /* synthetic */ Object A01(C2112pw c2112pw) {
        return c2112pw.A03;
    }

    public static /* synthetic */ Object A02(C2112pw c2112pw) {
        return c2112pw.A04;
    }

    public static /* synthetic */ String A03(C2112pw c2112pw) {
        return c2112pw.A06;
    }

    public static /* synthetic */ List A04(C2112pw c2112pw) {
        return c2112pw.A01;
    }

    public static /* synthetic */ boolean A05(C2112pw c2112pw) {
        return c2112pw.A02;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pw != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.py != com.instagram.common.viewpoint.core.ViewpointAction<ModelType, StateType> */
    public final C2112pw<ModelType, StateType> A06(InterfaceC2114py<ModelType, StateType> interfaceC2114py) {
        if (this.A01 == null) {
            this.A01 = new ArrayList();
        }
        this.A01.add(interfaceC2114py);
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pw != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    public final C2110pu<ModelType, StateType> A07() {
        return new C2110pu<>(this);
    }
}
