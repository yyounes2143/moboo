package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/android/billingclient/api/SkuDetailsResult;", "", "Lcom/android/billingclient/api/BillingResult;", "billingResult", "", "Lcom/android/billingclient/api/SkuDetails;", "skuDetailsList", "<init>", "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "other", "", "equals", "(Ljava/lang/Object;)Z", "java.com.google.android.libraries.play.billing.public.ktbilling_granule"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SkuDetailsResult {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List f2402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BillingResult f2403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SkuDetailsResult(@RecentlyNonNull BillingResult billingResult, @Nullable List<? extends SkuDetails> list) {
        this.f2403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = billingResult;
        this.f2402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuDetailsResult)) {
            return false;
        }
        SkuDetailsResult skuDetailsResult = (SkuDetailsResult) obj;
        if (Intrinsics.areEqual(this.f2403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, skuDetailsResult.f2403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, skuDetailsResult.f2402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f2403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31;
        List list = this.f2402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "SkuDetailsResult(billingResult=" + this.f2403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", skuDetailsList=" + this.f2402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ")";
    }
}
