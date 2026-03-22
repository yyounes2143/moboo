package com.changdu.component.pay.base.model;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.changdu.component.pay.base.CDPay;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\u0019\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bHÆ\u0003JA\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\u0007HÖ\u0001J\t\u0010%\u001a\u00020\u0005HÖ\u0001R!\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006&"}, d2 = {"Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;", "Ljava/io/Serializable;", "id", "", "name", "", "rate", "", "categoryList", "Ljava/util/ArrayList;", "Lcom/changdu/component/pay/base/model/PayServerConfigCategory;", "Lkotlin/collections/ArrayList;", "(JLjava/lang/String;ILjava/util/ArrayList;)V", "getCategoryList", "()Ljava/util/ArrayList;", "getId", "()J", "setId", "(J)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getRate", "()I", "setRate", "(I)V", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayServerConfigMerchandise implements Serializable {
    @NotNull
    private final ArrayList<PayServerConfigCategory> categoryList;
    private long id;
    @NotNull
    private String name;
    private int rate;

    public PayServerConfigMerchandise() {
        this(0L, null, 0, null, 15, null);
    }

    public static /* synthetic */ PayServerConfigMerchandise copy$default(PayServerConfigMerchandise payServerConfigMerchandise, long j, String str, int i, ArrayList arrayList, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = payServerConfigMerchandise.id;
        }
        long j2 = j;
        if ((i2 & 2) != 0) {
            str = payServerConfigMerchandise.name;
        }
        String str2 = str;
        if ((i2 & 4) != 0) {
            i = payServerConfigMerchandise.rate;
        }
        int i3 = i;
        ArrayList<PayServerConfigCategory> arrayList2 = arrayList;
        if ((i2 & 8) != 0) {
            arrayList2 = payServerConfigMerchandise.categoryList;
        }
        return payServerConfigMerchandise.copy(j2, str2, i3, arrayList2);
    }

    public final long component1() {
        return this.id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    public final int component3() {
        return this.rate;
    }

    @NotNull
    public final ArrayList<PayServerConfigCategory> component4() {
        return this.categoryList;
    }

    @NotNull
    public final PayServerConfigMerchandise copy(long j, @NotNull String str, int i, @NotNull ArrayList<PayServerConfigCategory> arrayList) {
        return new PayServerConfigMerchandise(j, str, i, arrayList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PayServerConfigMerchandise)) {
            return false;
        }
        PayServerConfigMerchandise payServerConfigMerchandise = (PayServerConfigMerchandise) obj;
        if (this.id == payServerConfigMerchandise.id && Intrinsics.areEqual(this.name, payServerConfigMerchandise.name) && this.rate == payServerConfigMerchandise.rate && Intrinsics.areEqual(this.categoryList, payServerConfigMerchandise.categoryList)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ArrayList<PayServerConfigCategory> getCategoryList() {
        return this.categoryList;
    }

    public final long getId() {
        return this.id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getRate() {
        return this.rate;
    }

    public int hashCode() {
        int a2 = a.a(this.name, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.id) * 31, 31);
        return this.categoryList.hashCode() + ((this.rate + a2) * 31);
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setName(@NotNull String str) {
        this.name = str;
    }

    public final void setRate(int i) {
        this.rate = i;
    }

    @NotNull
    public String toString() {
        long j = this.id;
        String str = this.name;
        int i = this.rate;
        ArrayList<PayServerConfigCategory> arrayList = this.categoryList;
        return "PayServerConfigMerchandise(id=" + j + ", name=" + str + ", rate=" + i + ", categoryList=" + arrayList + ")";
    }

    public PayServerConfigMerchandise(long j, @NotNull String str, int i, @NotNull ArrayList<PayServerConfigCategory> arrayList) {
        this.id = j;
        this.name = str;
        this.rate = i;
        this.categoryList = arrayList;
    }

    public /* synthetic */ PayServerConfigMerchandise(long j, String str, int i, ArrayList arrayList, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? CDPay.INSTANCE.getMerchantId() : j, (i2 & 2) != 0 ? CDPay.INSTANCE.getMMerchandiseName$pay_base_release() : str, (i2 & 4) != 0 ? 100 : i, (i2 & 8) != 0 ? new ArrayList() : arrayList);
    }
}
