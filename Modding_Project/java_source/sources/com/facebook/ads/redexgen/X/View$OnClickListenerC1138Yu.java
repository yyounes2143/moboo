package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1138Yu implements View.OnClickListener {
    public static String[] A03 = {"qTn7FHoQ", "BapBypyKyXgi02nUaikHNoU7eY2sLlHG", "hAbogJy7", "1kKCdLvWKNxoPSiH", "Xjk6qTkQoY8vuVUP", "RHy2P55wnjv0LaFNgRpD8dXF", "4s2GzZI6q8xqZAbl0Skgz3P6Lr2GKXBU", "B9Ul8cdGX1dUct8fF9ORVNarLvr0UfHM"};
    public final /* synthetic */ O6 A00;
    public final /* synthetic */ C1125Yh A01;
    public final /* synthetic */ C1139Yv A02;

    public View$OnClickListenerC1138Yu(C1139Yv c1139Yv, C1125Yh c1125Yh, O6 o6) {
        this.A02 = c1139Yv;
        this.A01 = c1125Yh;
        this.A00 = o6;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1123Yf interfaceC1123Yf;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            interfaceC1123Yf = this.A02.A02;
            interfaceC1123Yf.AEP(this.A00);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
            String[] strArr = A03;
            if (strArr[3].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[3] = "Wxfvm9MNAlg6MGh9";
            strArr2[4] = "9MWDJcBk5PnwUytH";
        }
    }
}
