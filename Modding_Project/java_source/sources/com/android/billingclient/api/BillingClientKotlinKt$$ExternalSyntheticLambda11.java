package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import java.util.List;
import kotlinx.coroutines.CompletableDeferred;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class BillingClientKotlinKt$$ExternalSyntheticLambda11 implements SkuDetailsResponseListener {
    @RecentlyNonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public /* synthetic */ CompletableDeferred f2281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.android.billingclient.api.SkuDetailsResponseListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull List list) {
        this.f2281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.complete(new SkuDetailsResult(billingResult, list));
    }
}
