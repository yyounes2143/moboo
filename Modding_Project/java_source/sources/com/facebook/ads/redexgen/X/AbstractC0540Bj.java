package com.facebook.ads.redexgen.X;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Bj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0540Bj implements InterfaceC1497fK {
    public final EnumC1489fC A00;
    public final AbstractC03111z A01;

    public AbstractC0540Bj(AbstractC03111z abstractC03111z, EnumC1489fC enumC1489fC) {
        this.A01 = abstractC03111z;
        this.A00 = enumC1489fC;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1497fK
    public void A45(Map<InterfaceC1480f2, EnumC1502fP> map, Map<SyncModifiableBundle, EnumC1489fC> map2) {
        map2.put(null, this.A00);
    }
}
