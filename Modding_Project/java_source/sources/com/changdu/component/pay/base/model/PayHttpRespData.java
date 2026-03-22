package com.changdu.component.pay.base.model;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b$\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0005¢\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\u0007HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003Jw\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u0005HÆ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0003HÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u000e\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0016\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0012R\u0016\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016¨\u00060"}, d2 = {"Lcom/changdu/component/pay/base/model/PayHttpRespData;", "", "signType", "", "sign", "", "merchantId", "", RemoteConfigConstants.RequestFieldKey.APP_ID, "ver", "format", "hasCompress", "statusCode", "actionId", "description", "responseObject", "(ILjava/lang/String;JJLjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V", "getActionId", "()I", "getAppId", "()J", "getDescription", "()Ljava/lang/String;", "getFormat", "getHasCompress", "getMerchantId", "getResponseObject", "getSign", "getSignType", "getStatusCode", "getVer", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayHttpRespData {
    @SerializedName("ActionId")
    private final int actionId;
    @SerializedName("AppID")
    private final long appId;
    @SerializedName("Description")
    @NotNull
    private final String description;
    @SerializedName("Format")
    private final int format;
    @SerializedName("HasCompress")
    private final int hasCompress;
    @SerializedName("MerchantID")
    private final long merchantId;
    @SerializedName("ResponseObject")
    @NotNull
    private final String responseObject;
    @SerializedName("Sign")
    @NotNull
    private final String sign;
    @SerializedName("SignType")
    private final int signType;
    @SerializedName("StatusCode")
    private final int statusCode;
    @SerializedName("Ver")
    @NotNull
    private final String ver;

    public PayHttpRespData() {
        this(0, null, 0L, 0L, null, 0, 0, 0, 0, null, null, 2047, null);
    }

    public static /* synthetic */ PayHttpRespData copy$default(PayHttpRespData payHttpRespData, int i, String str, long j, long j2, String str2, int i2, int i3, int i4, int i5, String str3, String str4, int i6, Object obj) {
        String str5;
        long j3;
        long j4;
        String str6;
        int i7;
        int i8;
        int i9;
        int i10;
        String str7;
        String str8;
        if ((i6 & 1) != 0) {
            i = payHttpRespData.signType;
        }
        if ((i6 & 2) != 0) {
            str5 = payHttpRespData.sign;
        } else {
            str5 = str;
        }
        if ((i6 & 4) != 0) {
            j3 = payHttpRespData.merchantId;
        } else {
            j3 = j;
        }
        if ((i6 & 8) != 0) {
            j4 = payHttpRespData.appId;
        } else {
            j4 = j2;
        }
        if ((i6 & 16) != 0) {
            str6 = payHttpRespData.ver;
        } else {
            str6 = str2;
        }
        if ((i6 & 32) != 0) {
            i7 = payHttpRespData.format;
        } else {
            i7 = i2;
        }
        if ((i6 & 64) != 0) {
            i8 = payHttpRespData.hasCompress;
        } else {
            i8 = i3;
        }
        if ((i6 & 128) != 0) {
            i9 = payHttpRespData.statusCode;
        } else {
            i9 = i4;
        }
        if ((i6 & 256) != 0) {
            i10 = payHttpRespData.actionId;
        } else {
            i10 = i5;
        }
        if ((i6 & 512) != 0) {
            str7 = payHttpRespData.description;
        } else {
            str7 = str3;
        }
        if ((i6 & 1024) != 0) {
            str8 = payHttpRespData.responseObject;
        } else {
            str8 = str4;
        }
        return payHttpRespData.copy(i, str5, j3, j4, str6, i7, i8, i9, i10, str7, str8);
    }

    public final int component1() {
        return this.signType;
    }

    @NotNull
    public final String component10() {
        return this.description;
    }

    @NotNull
    public final String component11() {
        return this.responseObject;
    }

    @NotNull
    public final String component2() {
        return this.sign;
    }

    public final long component3() {
        return this.merchantId;
    }

    public final long component4() {
        return this.appId;
    }

    @NotNull
    public final String component5() {
        return this.ver;
    }

    public final int component6() {
        return this.format;
    }

    public final int component7() {
        return this.hasCompress;
    }

    public final int component8() {
        return this.statusCode;
    }

    public final int component9() {
        return this.actionId;
    }

    @NotNull
    public final PayHttpRespData copy(int i, @NotNull String str, long j, long j2, @NotNull String str2, int i2, int i3, int i4, int i5, @NotNull String str3, @NotNull String str4) {
        return new PayHttpRespData(i, str, j, j2, str2, i2, i3, i4, i5, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PayHttpRespData)) {
            return false;
        }
        PayHttpRespData payHttpRespData = (PayHttpRespData) obj;
        if (this.signType == payHttpRespData.signType && Intrinsics.areEqual(this.sign, payHttpRespData.sign) && this.merchantId == payHttpRespData.merchantId && this.appId == payHttpRespData.appId && Intrinsics.areEqual(this.ver, payHttpRespData.ver) && this.format == payHttpRespData.format && this.hasCompress == payHttpRespData.hasCompress && this.statusCode == payHttpRespData.statusCode && this.actionId == payHttpRespData.actionId && Intrinsics.areEqual(this.description, payHttpRespData.description) && Intrinsics.areEqual(this.responseObject, payHttpRespData.responseObject)) {
            return true;
        }
        return false;
    }

    public final int getActionId() {
        return this.actionId;
    }

    public final long getAppId() {
        return this.appId;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    public final int getFormat() {
        return this.format;
    }

    public final int getHasCompress() {
        return this.hasCompress;
    }

    public final long getMerchantId() {
        return this.merchantId;
    }

    @NotNull
    public final String getResponseObject() {
        return this.responseObject;
    }

    @NotNull
    public final String getSign() {
        return this.sign;
    }

    public final int getSignType() {
        return this.signType;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    @NotNull
    public final String getVer() {
        return this.ver;
    }

    public int hashCode() {
        int a2 = a.a(this.sign, this.signType * 31, 31);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.appId);
        int a3 = a.a(this.ver, (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.merchantId) + a2) * 31)) * 31, 31);
        int i = this.hasCompress;
        int i2 = this.statusCode;
        int i3 = this.actionId;
        return this.responseObject.hashCode() + a.a(this.description, (i3 + ((i2 + ((i + ((this.format + a3) * 31)) * 31)) * 31)) * 31, 31);
    }

    @NotNull
    public String toString() {
        int i = this.signType;
        String str = this.sign;
        long j = this.merchantId;
        long j2 = this.appId;
        String str2 = this.ver;
        int i2 = this.format;
        int i3 = this.hasCompress;
        int i4 = this.statusCode;
        int i5 = this.actionId;
        String str3 = this.description;
        String str4 = this.responseObject;
        return "PayHttpRespData(signType=" + i + ", sign=" + str + ", merchantId=" + j + ", appId=" + j2 + ", ver=" + str2 + ", format=" + i2 + ", hasCompress=" + i3 + ", statusCode=" + i4 + ", actionId=" + i5 + ", description=" + str3 + ", responseObject=" + str4 + ")";
    }

    public PayHttpRespData(int i, @NotNull String str, long j, long j2, @NotNull String str2, int i2, int i3, int i4, int i5, @NotNull String str3, @NotNull String str4) {
        this.signType = i;
        this.sign = str;
        this.merchantId = j;
        this.appId = j2;
        this.ver = str2;
        this.format = i2;
        this.hasCompress = i3;
        this.statusCode = i4;
        this.actionId = i5;
        this.description = str3;
        this.responseObject = str4;
    }

    public /* synthetic */ PayHttpRespData(int i, String str, long j, long j2, String str2, int i2, int i3, int i4, int i5, String str3, String str4, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? 1 : i, (i6 & 2) != 0 ? "" : str, (i6 & 4) != 0 ? 0L : j, (i6 & 8) == 0 ? j2 : 0L, (i6 & 16) != 0 ? "" : str2, (i6 & 32) != 0 ? 0 : i2, (i6 & 64) != 0 ? 0 : i3, (i6 & 128) == 0 ? i4 : 1, (i6 & 256) == 0 ? i5 : 0, (i6 & 512) != 0 ? "" : str3, (i6 & 1024) != 0 ? "" : str4);
    }
}
