package com.changdu.component.pay.google;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.b  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC0245b {
    public static /* synthetic */ void a(OnPurchaseListener onPurchaseListener, int i, String str, int i2) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        onPurchaseListener.onError(i, str, null);
    }
}
