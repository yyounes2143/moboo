package com.changdu.component.pay.base.model;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003JY\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\u0006\u0010'\u001a\u00020#J\t\u0010(\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000e\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000e¨\u0006)"}, d2 = {"Lcom/changdu/component/pay/base/model/PayRequestItem;", "Ljava/io/Serializable;", "payConfigId", "", "itemId", "", "shopItemId", "orderPrice", "hwItemId", "couponId", "paySource", "payCustomData", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCouponId", "()Ljava/lang/String;", "getHwItemId", "getItemId", "setItemId", "(Ljava/lang/String;)V", "getOrderPrice", "getPayConfigId", "()I", "getPayCustomData", "getPaySource", "getShopItemId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "isSubscription", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayRequestItem implements Serializable {
    @NotNull
    private final String couponId;
    @NotNull
    private final String hwItemId;
    @NotNull
    private String itemId;
    @NotNull
    private final String orderPrice;
    private final int payConfigId;
    @NotNull
    private final String payCustomData;
    @NotNull
    private final String paySource;
    @NotNull
    private final String shopItemId;

    public PayRequestItem(int i, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7) {
        this.payConfigId = i;
        this.itemId = str;
        this.shopItemId = str2;
        this.orderPrice = str3;
        this.hwItemId = str4;
        this.couponId = str5;
        this.paySource = str6;
        this.payCustomData = str7;
    }

    public static /* synthetic */ PayRequestItem copy$default(PayRequestItem payRequestItem, int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = payRequestItem.payConfigId;
        }
        if ((i2 & 2) != 0) {
            str = payRequestItem.itemId;
        }
        if ((i2 & 4) != 0) {
            str2 = payRequestItem.shopItemId;
        }
        if ((i2 & 8) != 0) {
            str3 = payRequestItem.orderPrice;
        }
        if ((i2 & 16) != 0) {
            str4 = payRequestItem.hwItemId;
        }
        if ((i2 & 32) != 0) {
            str5 = payRequestItem.couponId;
        }
        if ((i2 & 64) != 0) {
            str6 = payRequestItem.paySource;
        }
        if ((i2 & 128) != 0) {
            str7 = payRequestItem.payCustomData;
        }
        String str8 = str6;
        String str9 = str7;
        String str10 = str4;
        String str11 = str5;
        return payRequestItem.copy(i, str, str2, str3, str10, str11, str8, str9);
    }

    public final int component1() {
        return this.payConfigId;
    }

    @NotNull
    public final String component2() {
        return this.itemId;
    }

    @NotNull
    public final String component3() {
        return this.shopItemId;
    }

    @NotNull
    public final String component4() {
        return this.orderPrice;
    }

    @NotNull
    public final String component5() {
        return this.hwItemId;
    }

    @NotNull
    public final String component6() {
        return this.couponId;
    }

    @NotNull
    public final String component7() {
        return this.paySource;
    }

    @NotNull
    public final String component8() {
        return this.payCustomData;
    }

    @NotNull
    public final PayRequestItem copy(int i, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7) {
        return new PayRequestItem(i, str, str2, str3, str4, str5, str6, str7);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PayRequestItem)) {
            return false;
        }
        PayRequestItem payRequestItem = (PayRequestItem) obj;
        if (this.payConfigId == payRequestItem.payConfigId && Intrinsics.areEqual(this.itemId, payRequestItem.itemId) && Intrinsics.areEqual(this.shopItemId, payRequestItem.shopItemId) && Intrinsics.areEqual(this.orderPrice, payRequestItem.orderPrice) && Intrinsics.areEqual(this.hwItemId, payRequestItem.hwItemId) && Intrinsics.areEqual(this.couponId, payRequestItem.couponId) && Intrinsics.areEqual(this.paySource, payRequestItem.paySource) && Intrinsics.areEqual(this.payCustomData, payRequestItem.payCustomData)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCouponId() {
        return this.couponId;
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

    public final int getPayConfigId() {
        return this.payConfigId;
    }

    @NotNull
    public final String getPayCustomData() {
        return this.payCustomData;
    }

    @NotNull
    public final String getPaySource() {
        return this.paySource;
    }

    @NotNull
    public final String getShopItemId() {
        return this.shopItemId;
    }

    public int hashCode() {
        return this.payCustomData.hashCode() + a.a(this.paySource, a.a(this.couponId, a.a(this.hwItemId, a.a(this.orderPrice, a.a(this.shopItemId, a.a(this.itemId, this.payConfigId * 31, 31), 31), 31), 31), 31), 31);
    }

    public final boolean isSubscription() {
        String str = this.shopItemId;
        if (str != null && str.length() != 0 && !Intrinsics.areEqual(this.shopItemId, "0")) {
            return true;
        }
        return false;
    }

    public final void setItemId(@NotNull String str) {
        this.itemId = str;
    }

    @NotNull
    public String toString() {
        int i = this.payConfigId;
        String str = this.itemId;
        String str2 = this.shopItemId;
        String str3 = this.orderPrice;
        String str4 = this.hwItemId;
        String str5 = this.couponId;
        String str6 = this.paySource;
        String str7 = this.payCustomData;
        return "PayRequestItem(payConfigId=" + i + ", itemId=" + str + ", shopItemId=" + str2 + ", orderPrice=" + str3 + ", hwItemId=" + str4 + ", couponId=" + str5 + ", paySource=" + str6 + ", payCustomData=" + str7 + ")";
    }

    public /* synthetic */ PayRequestItem(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str8;
        PayRequestItem payRequestItem;
        int i3;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13 = (i2 & 32) != 0 ? "0" : str5;
        String str14 = (i2 & 64) != 0 ? "" : str6;
        if ((i2 & 128) != 0) {
            str8 = "";
            i3 = i;
            str9 = str;
            str10 = str2;
            str11 = str3;
            str12 = str4;
            payRequestItem = this;
        } else {
            str8 = str7;
            payRequestItem = this;
            i3 = i;
            str9 = str;
            str10 = str2;
            str11 = str3;
            str12 = str4;
        }
        new PayRequestItem(i3, str9, str10, str11, str12, str13, str14, str8);
    }
}
