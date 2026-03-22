package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Gb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public interface InterfaceC0660Gb {
    public static final InterfaceC0660Gb A00 = new InterfaceC0660Gb() { // from class: com.facebook.ads.redexgen.X.lL
        @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
        public final GX[] A5F() {
            return AbstractC0659Ga.A00();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
        public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
            return AbstractC0659Ga.A01(this, uri, map);
        }
    };

    GX[] A5F();

    GX[] A5G(Uri uri, Map<String, List<String>> map);
}
