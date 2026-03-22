package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/android/billingclient/api/CreateAlternativeBillingOnlyReportingDetailsResult;", "", "Lcom/android/billingclient/api/BillingResult;", "billingResult", "Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;", "alternativeBillingOnlyReportingDetails", "<init>", "(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "other", "", "equals", "(Ljava/lang/Object;)Z", "java.com.google.android.libraries.play.billing.public.ktbilling_granule"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CreateAlternativeBillingOnlyReportingDetailsResult {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AlternativeBillingOnlyReportingDetails f2323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BillingResult f2324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CreateAlternativeBillingOnlyReportingDetailsResult(@RecentlyNonNull BillingResult billingResult, @Nullable AlternativeBillingOnlyReportingDetails alternativeBillingOnlyReportingDetails) {
        this.f2324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = billingResult;
        this.f2323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = alternativeBillingOnlyReportingDetails;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreateAlternativeBillingOnlyReportingDetailsResult)) {
            return false;
        }
        CreateAlternativeBillingOnlyReportingDetailsResult createAlternativeBillingOnlyReportingDetailsResult = (CreateAlternativeBillingOnlyReportingDetailsResult) obj;
        if (Intrinsics.areEqual(this.f2324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, createAlternativeBillingOnlyReportingDetailsResult.f2324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, createAlternativeBillingOnlyReportingDetailsResult.f2323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f2324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31;
        AlternativeBillingOnlyReportingDetails alternativeBillingOnlyReportingDetails = this.f2323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (alternativeBillingOnlyReportingDetails == null) {
            hashCode = 0;
        } else {
            hashCode = alternativeBillingOnlyReportingDetails.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "CreateAlternativeBillingOnlyReportingDetailsResult(billingResult=" + this.f2324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", alternativeBillingOnlyReportingDetails=" + this.f2323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ")";
    }
}
