package com.changdu.mobovideo.utils;

import androidx.annotation.Keep;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/changdu/mobovideo/utils/CDAppProtectModel;", "", "key", "", "type", "", "report", "", "reportKey", "<init>", "(Ljava/lang/String;IZLjava/lang/String;)V", "getKey", "()Ljava/lang/String;", "getType", "()I", "getReport", "()Z", "getReportKey", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDAppProtectModel {
    @NotNull
    private final String key;
    private final boolean report;
    @NotNull
    private final String reportKey;
    private final int type;

    public CDAppProtectModel() {
        this(null, 0, false, null, 15, null);
    }

    public static /* synthetic */ CDAppProtectModel copy$default(CDAppProtectModel cDAppProtectModel, String str, int i, boolean z, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = cDAppProtectModel.key;
        }
        if ((i2 & 2) != 0) {
            i = cDAppProtectModel.type;
        }
        if ((i2 & 4) != 0) {
            z = cDAppProtectModel.report;
        }
        if ((i2 & 8) != 0) {
            str2 = cDAppProtectModel.reportKey;
        }
        return cDAppProtectModel.copy(str, i, z, str2);
    }

    @NotNull
    public final String component1() {
        return this.key;
    }

    public final int component2() {
        return this.type;
    }

    public final boolean component3() {
        return this.report;
    }

    @NotNull
    public final String component4() {
        return this.reportKey;
    }

    @NotNull
    public final CDAppProtectModel copy(@NotNull String str, int i, boolean z, @NotNull String str2) {
        return new CDAppProtectModel(str, i, z, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CDAppProtectModel)) {
            return false;
        }
        CDAppProtectModel cDAppProtectModel = (CDAppProtectModel) obj;
        if (Intrinsics.areEqual(this.key, cDAppProtectModel.key) && this.type == cDAppProtectModel.type && this.report == cDAppProtectModel.report && Intrinsics.areEqual(this.reportKey, cDAppProtectModel.reportKey)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final boolean getReport() {
        return this.report;
    }

    @NotNull
    public final String getReportKey() {
        return this.reportKey;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((this.key.hashCode() * 31) + this.type) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.report)) * 31) + this.reportKey.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.key;
        int i = this.type;
        boolean z = this.report;
        String str2 = this.reportKey;
        return "CDAppProtectModel(key=" + str + ", type=" + i + ", report=" + z + ", reportKey=" + str2 + ")";
    }

    public CDAppProtectModel(@NotNull String str, int i, boolean z, @NotNull String str2) {
        this.key = str;
        this.type = i;
        this.report = z;
        this.reportKey = str2;
    }

    public /* synthetic */ CDAppProtectModel(String str, int i, boolean z, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? "" : str2);
    }
}
