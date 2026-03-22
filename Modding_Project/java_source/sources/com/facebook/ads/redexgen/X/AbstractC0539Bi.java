package com.facebook.ads.redexgen.X;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Bi  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0539Bi implements InterfaceC1497fK {
    public final By A00;
    public final EnumC1502fP A01;

    public AbstractC0539Bi(By by, EnumC1502fP enumC1502fP) {
        this.A00 = by;
        this.A01 = enumC1502fP;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1497fK
    public void A45(Map<InterfaceC1480f2, EnumC1502fP> map, Map<SyncModifiableBundle, EnumC1489fC> map2) {
        map.put(this.A00, this.A01);
    }
}
