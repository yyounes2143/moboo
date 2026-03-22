package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.WindowInsets;
/* renamed from: com.facebook.ads.redexgen.X.0B  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class C0B extends C0E {
    @Override // com.facebook.ads.redexgen.X.P2
    public final PK A07(View view, PK pk) {
        WindowInsets result = (WindowInsets) PK.A01(pk);
        WindowInsets unwrapped = view.dispatchApplyWindowInsets(result);
        if (unwrapped != result) {
            result = new WindowInsets(unwrapped);
        }
        return PK.A00(result);
    }

    @Override // com.facebook.ads.redexgen.X.P2
    public final PK A08(View view, PK pk) {
        WindowInsets result = (WindowInsets) PK.A01(pk);
        WindowInsets unwrapped = view.onApplyWindowInsets(result);
        if (unwrapped != result) {
            result = new WindowInsets(unwrapped);
        }
        return PK.A00(result);
    }

    @Override // com.facebook.ads.redexgen.X.P2
    public final void A0A(View view) {
        view.stopNestedScroll();
    }

    @Override // com.facebook.ads.redexgen.X.P2
    public final void A0E(View view, InterfaceC0876On interfaceC0876On) {
        if (interfaceC0876On == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new P1(this, interfaceC0876On));
        }
    }
}
