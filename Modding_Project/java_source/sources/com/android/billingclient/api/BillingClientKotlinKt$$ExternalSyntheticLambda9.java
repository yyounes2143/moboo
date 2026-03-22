package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import kotlinx.coroutines.CompletableDeferred;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class BillingClientKotlinKt$$ExternalSyntheticLambda9 implements AlternativeBillingOnlyReportingDetailsListener {
    @RecentlyNonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public /* synthetic */ CompletableDeferred f2289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.android.billingclient.api.AlternativeBillingOnlyReportingDetailsListener
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@RecentlyNonNull BillingResult billingResult, @RecentlyNonNull AlternativeBillingOnlyReportingDetails alternativeBillingOnlyReportingDetails) {
        this.f2289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.complete(new CreateAlternativeBillingOnlyReportingDetailsResult(billingResult, alternativeBillingOnlyReportingDetails));
    }
}
