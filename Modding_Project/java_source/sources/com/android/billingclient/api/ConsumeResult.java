package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/android/billingclient/api/ConsumeResult;", "", "Lcom/android/billingclient/api/BillingResult;", "billingResult", "", "purchaseToken", "<init>", "(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/android/billingclient/api/BillingResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/android/billingclient/api/BillingResult;", "java.com.google.android.libraries.play.billing.public.ktbilling_granule"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConsumeResult {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BillingResult f2322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ConsumeResult(@RecentlyNonNull BillingResult billingResult, @Nullable String str) {
        this.f2322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = billingResult;
        this.f2321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    @NotNull
    public final BillingResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConsumeResult)) {
            return false;
        }
        ConsumeResult consumeResult = (ConsumeResult) obj;
        if (Intrinsics.areEqual(this.f2322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, consumeResult.f2322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, consumeResult.f2321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f2322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31;
        String str = this.f2321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ConsumeResult(billingResult=" + this.f2322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", purchaseToken=" + this.f2321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ")";
    }
}
