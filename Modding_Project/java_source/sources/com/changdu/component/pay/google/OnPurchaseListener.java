package com.changdu.component.pay.google;

import com.android.billingclient.api.Purchase;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\b\u0010\r\u001a\u00020\u0003H&¨\u0006\u000e"}, d2 = {"Lcom/changdu/component/pay/google/OnPurchaseListener;", "", "onError", "", "errorCode", "", "errorMsg", "", "throwable", "", "onPurchasePaySuccess", FirebaseAnalytics.Event.PURCHASE, "Lcom/android/billingclient/api/Purchase;", "onReady", "pay-google_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface OnPurchaseListener {
    void onError(int i, @Nullable String str, @Nullable Throwable th);

    void onPurchasePaySuccess(@Nullable Purchase purchase);

    void onReady();
}
