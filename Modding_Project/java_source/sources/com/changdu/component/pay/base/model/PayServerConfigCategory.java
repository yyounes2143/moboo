package com.changdu.component.pay.base.model;

import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u0019\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bHÆ\u0003JK\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bHÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\u0005HÖ\u0001R*\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014¨\u0006)"}, d2 = {"Lcom/changdu/component/pay/base/model/PayServerConfigCategory;", "Ljava/io/Serializable;", "code", "", "name", "", "viewType", "subTitle", "channelList", "Ljava/util/ArrayList;", "Lcom/changdu/component/pay/base/model/PayServerConfigChannel;", "Lkotlin/collections/ArrayList;", "(ILjava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V", "getChannelList", "()Ljava/util/ArrayList;", "setChannelList", "(Ljava/util/ArrayList;)V", "getCode", "()I", "setCode", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getSubTitle", "setSubTitle", "getViewType", "setViewType", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayServerConfigCategory implements Serializable {
    @NotNull
    private ArrayList<PayServerConfigChannel> channelList;
    private int code;
    @NotNull
    private String name;
    @NotNull
    private String subTitle;
    private int viewType;

    public PayServerConfigCategory() {
        this(0, null, 0, null, null, 31, null);
    }

    public static /* synthetic */ PayServerConfigCategory copy$default(PayServerConfigCategory payServerConfigCategory, int i, String str, int i2, String str2, ArrayList arrayList, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = payServerConfigCategory.code;
        }
        if ((i3 & 2) != 0) {
            str = payServerConfigCategory.name;
        }
        if ((i3 & 4) != 0) {
            i2 = payServerConfigCategory.viewType;
        }
        if ((i3 & 8) != 0) {
            str2 = payServerConfigCategory.subTitle;
        }
        ArrayList<PayServerConfigChannel> arrayList2 = arrayList;
        if ((i3 & 16) != 0) {
            arrayList2 = payServerConfigCategory.channelList;
        }
        ArrayList arrayList3 = arrayList2;
        int i4 = i2;
        return payServerConfigCategory.copy(i, str, i4, str2, arrayList3);
    }

    public final int component1() {
        return this.code;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    public final int component3() {
        return this.viewType;
    }

    @NotNull
    public final String component4() {
        return this.subTitle;
    }

    @NotNull
    public final ArrayList<PayServerConfigChannel> component5() {
        return this.channelList;
    }

    @NotNull
    public final PayServerConfigCategory copy(int i, @NotNull String str, int i2, @NotNull String str2, @NotNull ArrayList<PayServerConfigChannel> arrayList) {
        return new PayServerConfigCategory(i, str, i2, str2, arrayList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PayServerConfigCategory)) {
            return false;
        }
        PayServerConfigCategory payServerConfigCategory = (PayServerConfigCategory) obj;
        if (this.code == payServerConfigCategory.code && Intrinsics.areEqual(this.name, payServerConfigCategory.name) && this.viewType == payServerConfigCategory.viewType && Intrinsics.areEqual(this.subTitle, payServerConfigCategory.subTitle) && Intrinsics.areEqual(this.channelList, payServerConfigCategory.channelList)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ArrayList<PayServerConfigChannel> getChannelList() {
        return this.channelList;
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getSubTitle() {
        return this.subTitle;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int a2 = a.a(this.name, this.code * 31, 31);
        return this.channelList.hashCode() + a.a(this.subTitle, (this.viewType + a2) * 31, 31);
    }

    public final void setChannelList(@NotNull ArrayList<PayServerConfigChannel> arrayList) {
        this.channelList = arrayList;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setName(@NotNull String str) {
        this.name = str;
    }

    public final void setSubTitle(@NotNull String str) {
        this.subTitle = str;
    }

    public final void setViewType(int i) {
        this.viewType = i;
    }

    @NotNull
    public String toString() {
        int i = this.code;
        String str = this.name;
        int i2 = this.viewType;
        String str2 = this.subTitle;
        ArrayList<PayServerConfigChannel> arrayList = this.channelList;
        return "PayServerConfigCategory(code=" + i + ", name=" + str + ", viewType=" + i2 + ", subTitle=" + str2 + ", channelList=" + arrayList + ")";
    }

    public PayServerConfigCategory(int i, @NotNull String str, int i2, @NotNull String str2, @NotNull ArrayList<PayServerConfigChannel> arrayList) {
        this.code = i;
        this.name = str;
        this.viewType = i2;
        this.subTitle = str2;
        this.channelList = arrayList;
    }

    public /* synthetic */ PayServerConfigCategory(int i, String str, int i2, String str2, ArrayList arrayList, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 1 : i, (i3 & 2) != 0 ? "" : str, (i3 & 4) != 0 ? 1 : i2, (i3 & 8) != 0 ? "" : str2, (i3 & 16) != 0 ? new ArrayList() : arrayList);
    }
}
