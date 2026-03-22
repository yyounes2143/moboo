package com.changdu.component.pay.base.model;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003JO\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012¨\u0006%"}, d2 = {"Lcom/changdu/component/pay/base/model/CDComponentPayConfigs;", "Ljava/io/Serializable;", "coreCode", "", "payBaseUrl", "", "payAppId", "", "payVersion", "merchandiseId", "merchandiseName", "purchaseHistoryCallbackUrl", "(ILjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V", "getCoreCode", "()I", "getMerchandiseId", "()J", "getMerchandiseName", "()Ljava/lang/String;", "getPayAppId", "getPayBaseUrl", "getPayVersion", "getPurchaseHistoryCallbackUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDComponentPayConfigs implements Serializable {
    private final int coreCode;
    private final long merchandiseId;
    @NotNull
    private final String merchandiseName;
    private final long payAppId;
    @NotNull
    private final String payBaseUrl;
    private final long payVersion;
    @NotNull
    private final String purchaseHistoryCallbackUrl;

    public CDComponentPayConfigs(int i, @NotNull String str, long j, long j2, long j3, @NotNull String str2, @NotNull String str3) {
        this.coreCode = i;
        this.payBaseUrl = str;
        this.payAppId = j;
        this.payVersion = j2;
        this.merchandiseId = j3;
        this.merchandiseName = str2;
        this.purchaseHistoryCallbackUrl = str3;
    }

    public static /* synthetic */ CDComponentPayConfigs copy$default(CDComponentPayConfigs cDComponentPayConfigs, int i, String str, long j, long j2, long j3, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = cDComponentPayConfigs.coreCode;
        }
        if ((i2 & 2) != 0) {
            str = cDComponentPayConfigs.payBaseUrl;
        }
        if ((i2 & 4) != 0) {
            j = cDComponentPayConfigs.payAppId;
        }
        if ((i2 & 8) != 0) {
            j2 = cDComponentPayConfigs.payVersion;
        }
        if ((i2 & 16) != 0) {
            j3 = cDComponentPayConfigs.merchandiseId;
        }
        if ((i2 & 32) != 0) {
            str2 = cDComponentPayConfigs.merchandiseName;
        }
        if ((i2 & 64) != 0) {
            str3 = cDComponentPayConfigs.purchaseHistoryCallbackUrl;
        }
        long j4 = j3;
        long j5 = j2;
        long j6 = j;
        return cDComponentPayConfigs.copy(i, str, j6, j5, j4, str2, str3);
    }

    public final int component1() {
        return this.coreCode;
    }

    @NotNull
    public final String component2() {
        return this.payBaseUrl;
    }

    public final long component3() {
        return this.payAppId;
    }

    public final long component4() {
        return this.payVersion;
    }

    public final long component5() {
        return this.merchandiseId;
    }

    @NotNull
    public final String component6() {
        return this.merchandiseName;
    }

    @NotNull
    public final String component7() {
        return this.purchaseHistoryCallbackUrl;
    }

    @NotNull
    public final CDComponentPayConfigs copy(int i, @NotNull String str, long j, long j2, long j3, @NotNull String str2, @NotNull String str3) {
        return new CDComponentPayConfigs(i, str, j, j2, j3, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CDComponentPayConfigs)) {
            return false;
        }
        CDComponentPayConfigs cDComponentPayConfigs = (CDComponentPayConfigs) obj;
        if (this.coreCode == cDComponentPayConfigs.coreCode && Intrinsics.areEqual(this.payBaseUrl, cDComponentPayConfigs.payBaseUrl) && this.payAppId == cDComponentPayConfigs.payAppId && this.payVersion == cDComponentPayConfigs.payVersion && this.merchandiseId == cDComponentPayConfigs.merchandiseId && Intrinsics.areEqual(this.merchandiseName, cDComponentPayConfigs.merchandiseName) && Intrinsics.areEqual(this.purchaseHistoryCallbackUrl, cDComponentPayConfigs.purchaseHistoryCallbackUrl)) {
            return true;
        }
        return false;
    }

    public final int getCoreCode() {
        return this.coreCode;
    }

    public final long getMerchandiseId() {
        return this.merchandiseId;
    }

    @NotNull
    public final String getMerchandiseName() {
        return this.merchandiseName;
    }

    public final long getPayAppId() {
        return this.payAppId;
    }

    @NotNull
    public final String getPayBaseUrl() {
        return this.payBaseUrl;
    }

    public final long getPayVersion() {
        return this.payVersion;
    }

    @NotNull
    public final String getPurchaseHistoryCallbackUrl() {
        return this.purchaseHistoryCallbackUrl;
    }

    public int hashCode() {
        int a2 = a.a(this.payBaseUrl, this.coreCode * 31, 31);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.payVersion);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.merchandiseId);
        return this.purchaseHistoryCallbackUrl.hashCode() + a.a(this.merchandiseName, (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.payAppId) + a2) * 31)) * 31)) * 31, 31);
    }

    @NotNull
    public String toString() {
        int i = this.coreCode;
        String str = this.payBaseUrl;
        long j = this.payAppId;
        long j2 = this.payVersion;
        long j3 = this.merchandiseId;
        String str2 = this.merchandiseName;
        String str3 = this.purchaseHistoryCallbackUrl;
        return "CDComponentPayConfigs(coreCode=" + i + ", payBaseUrl=" + str + ", payAppId=" + j + ", payVersion=" + j2 + ", merchandiseId=" + j3 + ", merchandiseName=" + str2 + ", purchaseHistoryCallbackUrl=" + str3 + ")";
    }
}
