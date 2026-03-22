package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import kotlinx.coroutines.CompletableDeferred;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class BillingClientKotlinKt$$ExternalSyntheticLambda5 implements ExternalOfferReportingDetailsListener {
    @RecentlyNonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public /* synthetic */ CompletableDeferred f2285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.android.billingclient.api.ExternalOfferReportingDetailsListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull ExternalOfferReportingDetails externalOfferReportingDetails) {
        this.f2285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.complete(new CreateExternalOfferReportingDetailsResult(billingResult, externalOfferReportingDetails));
    }
}
