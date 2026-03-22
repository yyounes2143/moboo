package com.changdu.component.pay.base.model;

import androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;", "Ljava/io/Serializable;", "isSubs", "", "itemId", "", "formattedPrice", "priceAmountMicros", "", "priceCurrencyCode", "(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "getFormattedPrice", "()Ljava/lang/String;", "()Z", "getItemId", "getPriceAmountMicros", "()J", "getPriceCurrencyCode", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PurchaseItemMonetization implements Serializable {
    @NotNull
    private final String formattedPrice;
    private final boolean isSubs;
    @NotNull
    private final String itemId;
    private final long priceAmountMicros;
    @NotNull
    private final String priceCurrencyCode;

    public PurchaseItemMonetization(boolean z, @NotNull String str, @NotNull String str2, long j, @NotNull String str3) {
        this.isSubs = z;
        this.itemId = str;
        this.formattedPrice = str2;
        this.priceAmountMicros = j;
        this.priceCurrencyCode = str3;
    }

    public static /* synthetic */ PurchaseItemMonetization copy$default(PurchaseItemMonetization purchaseItemMonetization, boolean z, String str, String str2, long j, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = purchaseItemMonetization.isSubs;
        }
        if ((i & 2) != 0) {
            str = purchaseItemMonetization.itemId;
        }
        if ((i & 4) != 0) {
            str2 = purchaseItemMonetization.formattedPrice;
        }
        if ((i & 8) != 0) {
            j = purchaseItemMonetization.priceAmountMicros;
        }
        if ((i & 16) != 0) {
            str3 = purchaseItemMonetization.priceCurrencyCode;
        }
        String str4 = str3;
        String str5 = str2;
        return purchaseItemMonetization.copy(z, str, str5, j, str4);
    }

    public final boolean component1() {
        return this.isSubs;
    }

    @NotNull
    public final String component2() {
        return this.itemId;
    }

    @NotNull
    public final String component3() {
        return this.formattedPrice;
    }

    public final long component4() {
        return this.priceAmountMicros;
    }

    @NotNull
    public final String component5() {
        return this.priceCurrencyCode;
    }

    @NotNull
    public final PurchaseItemMonetization copy(boolean z, @NotNull String str, @NotNull String str2, long j, @NotNull String str3) {
        return new PurchaseItemMonetization(z, str, str2, j, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseItemMonetization)) {
            return false;
        }
        PurchaseItemMonetization purchaseItemMonetization = (PurchaseItemMonetization) obj;
        if (this.isSubs == purchaseItemMonetization.isSubs && Intrinsics.areEqual(this.itemId, purchaseItemMonetization.itemId) && Intrinsics.areEqual(this.formattedPrice, purchaseItemMonetization.formattedPrice) && this.priceAmountMicros == purchaseItemMonetization.priceAmountMicros && Intrinsics.areEqual(this.priceCurrencyCode, purchaseItemMonetization.priceCurrencyCode)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    @NotNull
    public final String getItemId() {
        return this.itemId;
    }

    public final long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    @NotNull
    public final String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    public int hashCode() {
        int a2 = a.a(this.formattedPrice, a.a(this.itemId, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.isSubs) * 31, 31), 31);
        return this.priceCurrencyCode.hashCode() + ((androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.priceAmountMicros) + a2) * 31);
    }

    public final boolean isSubs() {
        return this.isSubs;
    }

    @NotNull
    public String toString() {
        boolean z = this.isSubs;
        String str = this.itemId;
        String str2 = this.formattedPrice;
        long j = this.priceAmountMicros;
        String str3 = this.priceCurrencyCode;
        return "PurchaseItemMonetization(isSubs=" + z + ", itemId=" + str + ", formattedPrice=" + str2 + ", priceAmountMicros=" + j + ", priceCurrencyCode=" + str3 + ")";
    }
}
