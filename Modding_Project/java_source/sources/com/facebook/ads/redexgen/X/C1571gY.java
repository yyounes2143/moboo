package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeProvider;
/* renamed from: com.facebook.ads.redexgen.X.gY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1571gY extends C0869Og {
    @Override // com.facebook.ads.redexgen.X.C0869Og
    public final View.AccessibilityDelegate A00(AbstractC0870Oh abstractC0870Oh) {
        return new C0867Oe(this, abstractC0870Oh);
    }

    @Override // com.facebook.ads.redexgen.X.C0869Og
    public final PU A01(View.AccessibilityDelegate accessibilityDelegate, View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new PU(accessibilityNodeProvider);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C0869Og
    public final boolean A02(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
        return accessibilityDelegate.performAccessibilityAction(view, i, bundle);
    }
}
