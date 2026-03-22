package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import java.util.List;
import kotlinx.coroutines.CompletableDeferred;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class BillingClientKotlinKt$$ExternalSyntheticLambda0 implements PurchasesResponseListener {
    @RecentlyNonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public /* synthetic */ CompletableDeferred f2278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.android.billingclient.api.PurchasesResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull List list) {
        this.f2278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.complete(new PurchasesResult(billingResult, list));
    }
}
