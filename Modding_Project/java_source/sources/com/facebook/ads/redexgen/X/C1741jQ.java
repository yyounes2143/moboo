package com.facebook.ads.redexgen.X;

import java.io.File;
/* renamed from: com.facebook.ads.redexgen.X.jQ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1741jQ implements InterfaceC0780Ks<File> {
    @Override // com.facebook.ads.redexgen.X.InterfaceC0780Ks
    public final C0779Kr<File> A3p(File file, LA la) {
        if (file.exists()) {
            return new C0779Kr<>(true, file);
        }
        return new C0779Kr<>(false, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0780Ks
    public final void A55(File file, LA la) {
    }
}
