package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Zs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1162Zs {
    public static void A00(View view, boolean z, View.OnClickListener onClickListener) {
        if (!z) {
            view.setOnClickListener(onClickListener);
        } else if (!z) {
        } else {
            View$OnClickListenerC1161Zr view$OnClickListenerC1161Zr = new View$OnClickListenerC1161Zr(onClickListener);
            view.setOnClickListener(view$OnClickListenerC1161Zr);
            view.setOnTouchListener(new View$OnTouchListenerC1160Zq(view$OnClickListenerC1161Zr));
        }
    }
}
