package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Vf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1047Vf implements InterfaceC2114py<UE, UJ> {
    public VN A00;

    public C1047Vf(VN vn) {
        this.A00 = vn;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<com.facebook.ads.internal.impressionsecondchannel.model.Impression, com.facebook.ads.internal.impressionsecondchannel.state.ImpressionState> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2114py
    public final void A6J(C2110pu<UE, UJ> c2110pu, InterfaceC2100pk interfaceC2100pk) {
        switch (interfaceC2100pk.A9M(c2110pu)) {
            case A02:
            case A04:
                this.A00.A02(c2110pu, interfaceC2100pk);
                return;
            default:
                return;
        }
    }
}
