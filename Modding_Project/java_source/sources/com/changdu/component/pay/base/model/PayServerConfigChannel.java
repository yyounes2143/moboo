package com.changdu.component.pay.base.model;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0006HÆ\u0003J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0006HÆ\u0003JO\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0006HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013¨\u0006,"}, d2 = {"Lcom/changdu/component/pay/base/model/PayServerConfigChannel;", "Ljava/io/Serializable;", "name", "", "description", "payType", "", "payId", "viewType", "weixinItems", "amountLimit", "(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V", "getAmountLimit", "()I", "setAmountLimit", "(I)V", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "getName", "setName", "getPayId", "setPayId", "getPayType", "setPayType", "getViewType", "setViewType", "getWeixinItems", "setWeixinItems", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayServerConfigChannel implements Serializable {
    private int amountLimit;
    @NotNull
    private String description;
    @NotNull
    private String name;
    private int payId;
    private int payType;
    private int viewType;
    @NotNull
    private String weixinItems;

    public PayServerConfigChannel() {
        this(null, null, 0, 0, 0, null, 0, 127, null);
    }

    public static /* synthetic */ PayServerConfigChannel copy$default(PayServerConfigChannel payServerConfigChannel, String str, String str2, int i, int i2, int i3, String str3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            str = payServerConfigChannel.name;
        }
        if ((i5 & 2) != 0) {
            str2 = payServerConfigChannel.description;
        }
        if ((i5 & 4) != 0) {
            i = payServerConfigChannel.payType;
        }
        if ((i5 & 8) != 0) {
            i2 = payServerConfigChannel.payId;
        }
        if ((i5 & 16) != 0) {
            i3 = payServerConfigChannel.viewType;
        }
        if ((i5 & 32) != 0) {
            str3 = payServerConfigChannel.weixinItems;
        }
        if ((i5 & 64) != 0) {
            i4 = payServerConfigChannel.amountLimit;
        }
        String str4 = str3;
        int i6 = i4;
        int i7 = i3;
        int i8 = i;
        return payServerConfigChannel.copy(str, str2, i8, i2, i7, str4, i6);
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    @NotNull
    public final String component2() {
        return this.description;
    }

    public final int component3() {
        return this.payType;
    }

    public final int component4() {
        return this.payId;
    }

    public final int component5() {
        return this.viewType;
    }

    @NotNull
    public final String component6() {
        return this.weixinItems;
    }

    public final int component7() {
        return this.amountLimit;
    }

    @NotNull
    public final PayServerConfigChannel copy(@NotNull String str, @NotNull String str2, int i, int i2, int i3, @NotNull String str3, int i4) {
        return new PayServerConfigChannel(str, str2, i, i2, i3, str3, i4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PayServerConfigChannel)) {
            return false;
        }
        PayServerConfigChannel payServerConfigChannel = (PayServerConfigChannel) obj;
        if (Intrinsics.areEqual(this.name, payServerConfigChannel.name) && Intrinsics.areEqual(this.description, payServerConfigChannel.description) && this.payType == payServerConfigChannel.payType && this.payId == payServerConfigChannel.payId && this.viewType == payServerConfigChannel.viewType && Intrinsics.areEqual(this.weixinItems, payServerConfigChannel.weixinItems) && this.amountLimit == payServerConfigChannel.amountLimit) {
            return true;
        }
        return false;
    }

    public final int getAmountLimit() {
        return this.amountLimit;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getPayId() {
        return this.payId;
    }

    public final int getPayType() {
        return this.payType;
    }

    public final int getViewType() {
        return this.viewType;
    }

    @NotNull
    public final String getWeixinItems() {
        return this.weixinItems;
    }

    public int hashCode() {
        int a2 = a.a(this.description, this.name.hashCode() * 31, 31);
        int i = this.payId;
        int i2 = this.viewType;
        return this.amountLimit + a.a(this.weixinItems, (i2 + ((i + ((this.payType + a2) * 31)) * 31)) * 31, 31);
    }

    public final void setAmountLimit(int i) {
        this.amountLimit = i;
    }

    public final void setDescription(@NotNull String str) {
        this.description = str;
    }

    public final void setName(@NotNull String str) {
        this.name = str;
    }

    public final void setPayId(int i) {
        this.payId = i;
    }

    public final void setPayType(int i) {
        this.payType = i;
    }

    public final void setViewType(int i) {
        this.viewType = i;
    }

    public final void setWeixinItems(@NotNull String str) {
        this.weixinItems = str;
    }

    @NotNull
    public String toString() {
        String str = this.name;
        String str2 = this.description;
        int i = this.payType;
        int i2 = this.payId;
        int i3 = this.viewType;
        String str3 = this.weixinItems;
        int i4 = this.amountLimit;
        return "PayServerConfigChannel(name=" + str + ", description=" + str2 + ", payType=" + i + ", payId=" + i2 + ", viewType=" + i3 + ", weixinItems=" + str3 + ", amountLimit=" + i4 + ")";
    }

    public PayServerConfigChannel(@NotNull String str, @NotNull String str2, int i, int i2, int i3, @NotNull String str3, int i4) {
        this.name = str;
        this.description = str2;
        this.payType = i;
        this.payId = i2;
        this.viewType = i3;
        this.weixinItems = str3;
        this.amountLimit = i4;
    }

    public /* synthetic */ PayServerConfigChannel(String str, String str2, int i, int i2, int i3, String str3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? "" : str, (i5 & 2) != 0 ? "" : str2, (i5 & 4) != 0 ? -1 : i, (i5 & 8) != 0 ? -1 : i2, (i5 & 16) != 0 ? 1 : i3, (i5 & 32) != 0 ? "" : str3, (i5 & 64) != 0 ? 0 : i4);
    }
}
