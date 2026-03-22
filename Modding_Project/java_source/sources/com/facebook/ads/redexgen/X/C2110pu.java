package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.pu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2110pu<ModelType, StateType> {
    public static byte[] A0A;
    public static final C2110pu A0B;
    public EnumC2111pv A00;
    public EnumC2101pl A01;
    public String A02;
    public boolean A03;
    public final boolean A04;
    public final C2110pu A05;
    public final ModelType A06;
    public final StateType A07;
    public final String A08;
    public final List<InterfaceC2114py<ModelType, StateType>> A09;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 26);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{78, 113, 125, 111, 104, 119, 113, 118, 108, 92, 121, 108, 121, 56, 107, 112, 119, 109, 116, 124, 56, 118, 119, 108, 56, 123, 119, 118, 108, 121, 113, 118, 56, 121, 56, 110, 113, 125, 111, 56, 121, 107, 56, 117, 119, 124, 125, 116, 83, 91, 70, 66, 79};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 4 out of bounds for length 4
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public final void A03(InterfaceC2100pk interfaceC2100pk) {
        for (InterfaceC2114py<ModelType, StateType> interfaceC2114py : this.A09) {
            interfaceC2114py.A6J(this, interfaceC2100pk);
        }
        EnumC2101pl A9M = interfaceC2100pk.A9M(this);
        this.A01 = A9M;
        if (A9M == EnumC2101pl.A02) {
            this.A03 = true;
        }
    }

    static {
        A02();
        A0B = new C2110pu(null, null, A01(48, 5, 44), A01(48, 5, 44), Collections.emptyList(), A0B, false);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<ModelType, StateType> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pw != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2110pu(com.facebook.ads.redexgen.X.C2112pw<ModelType, StateType> r9) {
        /*
            r8 = this;
            java.lang.Object r1 = com.facebook.ads.redexgen.X.C2112pw.A01(r9)
            java.lang.Object r2 = com.facebook.ads.redexgen.X.C2112pw.A02(r9)
            java.lang.String r3 = com.facebook.ads.redexgen.X.C2112pw.A03(r9)
            java.lang.String r4 = com.facebook.ads.redexgen.X.C2112pw.A03(r9)
            java.util.List r0 = com.facebook.ads.redexgen.X.C2112pw.A04(r9)
            if (r0 != 0) goto L27
            java.util.List r5 = java.util.Collections.emptyList()
        L1a:
            com.facebook.ads.redexgen.X.pu r6 = com.facebook.ads.redexgen.X.C2112pw.A00(r9)
            boolean r7 = com.facebook.ads.redexgen.X.C2112pw.A05(r9)
            r0 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        L27:
            java.util.List r5 = com.facebook.ads.redexgen.X.C2112pw.A04(r9)
            goto L1a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2110pu.<init>(com.facebook.ads.redexgen.X.pw):void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<ModelType, StateType> */
    public C2110pu(ModelType modeltype, StateType statetype, String str, String str2, List<InterfaceC2114py<ModelType, StateType>> list, C2110pu c2110pu, boolean z) {
        this.A00 = EnumC2111pv.A02;
        if (!(modeltype instanceof View)) {
            this.A06 = modeltype;
            this.A07 = statetype;
            this.A08 = str;
            this.A02 = str2;
            this.A05 = c2110pu;
            this.A03 = false;
            this.A09 = list;
            this.A04 = z;
            return;
        }
        throw new IllegalArgumentException(A01(0, 48, 2));
    }

    public static <ModelType, StateType> C2112pw<ModelType, StateType> A00(ModelType model, StateType state, String str) {
        return new C2112pw<>(model, state, str);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<ModelType, StateType> */
    public final boolean A04() {
        return this.A03;
    }
}
