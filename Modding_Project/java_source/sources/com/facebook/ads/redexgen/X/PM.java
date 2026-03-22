package com.facebook.ads.redexgen.X;

import android.view.accessibility.AccessibilityEvent;
/* loaded from: assets/audience_network.dex */
public abstract class PM {
    public static final PL A00 = new C1566gS() { // from class: com.facebook.ads.redexgen.X.6m
        @Override // com.facebook.ads.redexgen.X.PL
        public final int A00(AccessibilityEvent accessibilityEvent) {
            return accessibilityEvent.getContentChangeTypes();
        }

        @Override // com.facebook.ads.redexgen.X.PL
        public final void A01(AccessibilityEvent accessibilityEvent, int i) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    };

    public static int A00(AccessibilityEvent accessibilityEvent) {
        return A00.A00(accessibilityEvent);
    }

    public static void A01(AccessibilityEvent accessibilityEvent, int i) {
        A00.A01(accessibilityEvent, i);
    }
}
