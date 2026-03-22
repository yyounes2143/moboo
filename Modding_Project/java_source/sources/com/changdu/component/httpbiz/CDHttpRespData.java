package com.changdu.component.httpbiz;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u0000\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\u0011J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0004HÆ\u0003JR\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u00002\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u0004HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010!\u001a\u00020\u0004HÖ\u0001J\t\u0010\"\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\b\u001a\u0004\u0018\u00018\u00008\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0016\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\r¨\u0006#"}, d2 = {"Lcom/changdu/component/httpbiz/CDHttpRespData;", "T", "", "statusCode", "", "actionId", "description", "", "responseObject", CmcdConfiguration.KEY_STREAM_TYPE, "rmId", "(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)V", "getActionId", "()I", "getDescription", "()Ljava/lang/String;", "getResponseObject", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getRmId", "getSt", "getStatusCode", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Lcom/changdu/component/httpbiz/CDHttpRespData;", "equals", "", "other", "hashCode", "toString", "http-biz_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDHttpRespData<T> {
    @SerializedName("ActionId")
    private final int actionId;
    @SerializedName("Description")
    @NotNull
    private final String description;
    @SerializedName("ResponseObject")
    @Nullable
    private final T responseObject;
    @SerializedName("RmId")
    private final int rmId;
    @SerializedName("St")
    @NotNull
    private final String st;
    @SerializedName("StatusCode")
    private final int statusCode;

    public CDHttpRespData() {
        this(0, 0, null, null, null, 0, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CDHttpRespData copy$default(CDHttpRespData cDHttpRespData, int i, int i2, String str, Object obj, String str2, int i3, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            i = cDHttpRespData.statusCode;
        }
        if ((i4 & 2) != 0) {
            i2 = cDHttpRespData.actionId;
        }
        if ((i4 & 4) != 0) {
            str = cDHttpRespData.description;
        }
        T t = obj;
        if ((i4 & 8) != 0) {
            t = cDHttpRespData.responseObject;
        }
        if ((i4 & 16) != 0) {
            str2 = cDHttpRespData.st;
        }
        if ((i4 & 32) != 0) {
            i3 = cDHttpRespData.rmId;
        }
        String str3 = str2;
        int i5 = i3;
        return cDHttpRespData.copy(i, i2, str, t, str3, i5);
    }

    public final int component1() {
        return this.statusCode;
    }

    public final int component2() {
        return this.actionId;
    }

    @NotNull
    public final String component3() {
        return this.description;
    }

    @Nullable
    public final T component4() {
        return this.responseObject;
    }

    @NotNull
    public final String component5() {
        return this.st;
    }

    public final int component6() {
        return this.rmId;
    }

    @NotNull
    public final CDHttpRespData<T> copy(int i, int i2, @NotNull String str, @Nullable T t, @NotNull String str2, int i3) {
        return new CDHttpRespData<>(i, i2, str, t, str2, i3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CDHttpRespData)) {
            return false;
        }
        CDHttpRespData cDHttpRespData = (CDHttpRespData) obj;
        if (this.statusCode == cDHttpRespData.statusCode && this.actionId == cDHttpRespData.actionId && Intrinsics.areEqual(this.description, cDHttpRespData.description) && Intrinsics.areEqual(this.responseObject, cDHttpRespData.responseObject) && Intrinsics.areEqual(this.st, cDHttpRespData.st) && this.rmId == cDHttpRespData.rmId) {
            return true;
        }
        return false;
    }

    public final int getActionId() {
        return this.actionId;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final T getResponseObject() {
        return this.responseObject;
    }

    public final int getRmId() {
        return this.rmId;
    }

    @NotNull
    public final String getSt() {
        return this.st;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public int hashCode() {
        int hashCode;
        int i = this.actionId;
        int hashCode2 = (this.description.hashCode() + ((i + (this.statusCode * 31)) * 31)) * 31;
        T t = this.responseObject;
        if (t == null) {
            hashCode = 0;
        } else {
            hashCode = t.hashCode();
        }
        int hashCode3 = this.st.hashCode();
        return this.rmId + ((hashCode3 + ((hashCode2 + hashCode) * 31)) * 31);
    }

    @NotNull
    public String toString() {
        int i = this.statusCode;
        int i2 = this.actionId;
        String str = this.description;
        T t = this.responseObject;
        String str2 = this.st;
        int i3 = this.rmId;
        return "CDHttpRespData(statusCode=" + i + ", actionId=" + i2 + ", description=" + str + ", responseObject=" + t + ", st=" + str2 + ", rmId=" + i3 + ")";
    }

    public CDHttpRespData(int i, int i2, @NotNull String str, @Nullable T t, @NotNull String str2, int i3) {
        this.statusCode = i;
        this.actionId = i2;
        this.description = str;
        this.responseObject = t;
        this.st = str2;
        this.rmId = i3;
    }

    public /* synthetic */ CDHttpRespData(int i, int i2, String str, Object obj, String str2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        int i5;
        String str3;
        String str4;
        Object obj2;
        int i6;
        int i7;
        CDHttpRespData<T> cDHttpRespData;
        i = (i4 & 1) != 0 ? 10000 : i;
        i2 = (i4 & 2) != 0 ? 0 : i2;
        str = (i4 & 4) != 0 ? "" : str;
        obj = (i4 & 8) != 0 ? null : obj;
        str2 = (i4 & 16) != 0 ? "" : str2;
        if ((i4 & 32) != 0) {
            i5 = 0;
            obj2 = obj;
            str3 = str2;
            i7 = i2;
            str4 = str;
            cDHttpRespData = this;
            i6 = i;
        } else {
            i5 = i3;
            str3 = str2;
            str4 = str;
            obj2 = obj;
            i6 = i;
            i7 = i2;
            cDHttpRespData = this;
        }
        new CDHttpRespData<>(i6, i7, str4, obj2, str3, i5);
    }
}
