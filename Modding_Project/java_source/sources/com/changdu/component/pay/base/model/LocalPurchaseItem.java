package com.changdu.component.pay.base.model;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003JE\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001f"}, d2 = {"Lcom/changdu/component/pay/base/model/LocalPurchaseItem;", "Ljava/io/Serializable;", "skuType", "", "itemId", "hwItemId", "orderPrice", "cdOrderId", "cdCallbackUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCdCallbackUrl", "()Ljava/lang/String;", "getCdOrderId", "getHwItemId", "getItemId", "getOrderPrice", "getSkuType", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPurchaseItem implements Serializable {
    @NotNull
    private final String cdCallbackUrl;
    @NotNull
    private final String cdOrderId;
    @NotNull
    private final String hwItemId;
    @NotNull
    private final String itemId;
    @NotNull
    private final String orderPrice;
    @NotNull
    private final String skuType;

    public LocalPurchaseItem(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6) {
        this.skuType = str;
        this.itemId = str2;
        this.hwItemId = str3;
        this.orderPrice = str4;
        this.cdOrderId = str5;
        this.cdCallbackUrl = str6;
    }

    public static /* synthetic */ LocalPurchaseItem copy$default(LocalPurchaseItem localPurchaseItem, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = localPurchaseItem.skuType;
        }
        if ((i & 2) != 0) {
            str2 = localPurchaseItem.itemId;
        }
        if ((i & 4) != 0) {
            str3 = localPurchaseItem.hwItemId;
        }
        if ((i & 8) != 0) {
            str4 = localPurchaseItem.orderPrice;
        }
        if ((i & 16) != 0) {
            str5 = localPurchaseItem.cdOrderId;
        }
        if ((i & 32) != 0) {
            str6 = localPurchaseItem.cdCallbackUrl;
        }
        String str7 = str5;
        String str8 = str6;
        return localPurchaseItem.copy(str, str2, str3, str4, str7, str8);
    }

    @NotNull
    public final String component1() {
        return this.skuType;
    }

    @NotNull
    public final String component2() {
        return this.itemId;
    }

    @NotNull
    public final String component3() {
        return this.hwItemId;
    }

    @NotNull
    public final String component4() {
        return this.orderPrice;
    }

    @NotNull
    public final String component5() {
        return this.cdOrderId;
    }

    @NotNull
    public final String component6() {
        return this.cdCallbackUrl;
    }

    @NotNull
    public final LocalPurchaseItem copy(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6) {
        return new LocalPurchaseItem(str, str2, str3, str4, str5, str6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalPurchaseItem)) {
            return false;
        }
        LocalPurchaseItem localPurchaseItem = (LocalPurchaseItem) obj;
        if (Intrinsics.areEqual(this.skuType, localPurchaseItem.skuType) && Intrinsics.areEqual(this.itemId, localPurchaseItem.itemId) && Intrinsics.areEqual(this.hwItemId, localPurchaseItem.hwItemId) && Intrinsics.areEqual(this.orderPrice, localPurchaseItem.orderPrice) && Intrinsics.areEqual(this.cdOrderId, localPurchaseItem.cdOrderId) && Intrinsics.areEqual(this.cdCallbackUrl, localPurchaseItem.cdCallbackUrl)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCdCallbackUrl() {
        return this.cdCallbackUrl;
    }

    @NotNull
    public final String getCdOrderId() {
        return this.cdOrderId;
    }

    @NotNull
    public final String getHwItemId() {
        return this.hwItemId;
    }

    @NotNull
    public final String getItemId() {
        return this.itemId;
    }

    @NotNull
    public final String getOrderPrice() {
        return this.orderPrice;
    }

    @NotNull
    public final String getSkuType() {
        return this.skuType;
    }

    public int hashCode() {
        return this.cdCallbackUrl.hashCode() + a.a(this.cdOrderId, a.a(this.orderPrice, a.a(this.hwItemId, a.a(this.itemId, this.skuType.hashCode() * 31, 31), 31), 31), 31);
    }

    @NotNull
    public String toString() {
        String str = this.skuType;
        String str2 = this.itemId;
        String str3 = this.hwItemId;
        String str4 = this.orderPrice;
        String str5 = this.cdOrderId;
        String str6 = this.cdCallbackUrl;
        return "LocalPurchaseItem(skuType=" + str + ", itemId=" + str2 + ", hwItemId=" + str3 + ", orderPrice=" + str4 + ", cdOrderId=" + str5 + ", cdCallbackUrl=" + str6 + ")";
    }
}
