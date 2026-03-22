package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import java.util.List;
import kotlinx.coroutines.CompletableDeferred;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class BillingClientKotlinKt$$ExternalSyntheticLambda8 implements PurchaseHistoryResponseListener {
    @RecentlyNonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public /* synthetic */ CompletableDeferred f2288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull List list) {
        this.f2288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.complete(new PurchaseHistoryResult(billingResult, list));
    }
}
