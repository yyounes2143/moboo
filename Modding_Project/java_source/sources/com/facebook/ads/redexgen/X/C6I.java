package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
/* renamed from: com.facebook.ads.redexgen.X.6I  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6I implements QQ {
    public NativeAdBase A00;
    public NativeAdListener A01;

    public C6I(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        this.A01 = nativeAdListener;
        this.A00 = nativeAdBase;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1024Uh
    public final void ACD() {
        AbstractC1052Vk.A00(new QG(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1024Uh
    public final void ACH() {
        AbstractC1052Vk.A00(new QH(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1024Uh
    public final void ADB(V1 v1) {
        AbstractC1052Vk.A00(new QN(this, v1));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1024Uh
    public final void AE6() {
        AbstractC1052Vk.A00(new Q0(this));
    }

    @Override // com.facebook.ads.redexgen.X.QQ
    public final void AEB() {
        AbstractC1052Vk.A00(new QL(this));
    }
}
