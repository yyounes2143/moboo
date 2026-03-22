package com.changdu.component.pay.base.model;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.firebase.messaging.Constants;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0006HÆ\u0003J\t\u0010 \u001a\u00020\bHÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J[\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u0003HÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\bHÖ\u0001J\u0006\u0010+\u001a\u00020'J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0010\"\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006-"}, d2 = {"Lcom/changdu/component/pay/base/model/PayCreateOrderResult;", "Ljava/io/Serializable;", "jumpUrl", "", MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, VungleConstants.KEY_USER_ID, "", "execType", "", "packageName", "errorMessage", "payReportMessage", "Lcom/changdu/component/pay/base/model/PayReportMessage;", Constants.MessagePayloadKeys.RAW_DATA, "(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lcom/changdu/component/pay/base/model/PayReportMessage;Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "getExecType", "()I", "getJumpUrl", "getPackageName", "getParameter", "getPayReportMessage", "()Lcom/changdu/component/pay/base/model/PayReportMessage;", "getRawData", "setRawData", "(Ljava/lang/String;)V", "getUserId", "()J", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "isSuccess", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayCreateOrderResult implements Serializable {
    @SerializedName("ErrorMessage")
    @NotNull
    private final String errorMessage;
    @SerializedName("ExecType")
    private final int execType;
    @SerializedName("JumpUrl")
    @NotNull
    private final String jumpUrl;
    @SerializedName("PackageName")
    @NotNull
    private final String packageName;
    @SerializedName("Parameter")
    @NotNull
    private final String parameter;
    @Nullable
    private final PayReportMessage payReportMessage;
    @NotNull
    private String rawData;
    @SerializedName("UserID")
    private final long userId;

    public PayCreateOrderResult() {
        this(null, null, 0L, 0, null, null, null, null, 255, null);
    }

    public static /* synthetic */ PayCreateOrderResult copy$default(PayCreateOrderResult payCreateOrderResult, String str, String str2, long j, int i, String str3, String str4, PayReportMessage payReportMessage, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = payCreateOrderResult.jumpUrl;
        }
        if ((i2 & 2) != 0) {
            str2 = payCreateOrderResult.parameter;
        }
        if ((i2 & 4) != 0) {
            j = payCreateOrderResult.userId;
        }
        if ((i2 & 8) != 0) {
            i = payCreateOrderResult.execType;
        }
        if ((i2 & 16) != 0) {
            str3 = payCreateOrderResult.packageName;
        }
        if ((i2 & 32) != 0) {
            str4 = payCreateOrderResult.errorMessage;
        }
        if ((i2 & 64) != 0) {
            payReportMessage = payCreateOrderResult.payReportMessage;
        }
        if ((i2 & 128) != 0) {
            str5 = payCreateOrderResult.rawData;
        }
        String str6 = str5;
        String str7 = str4;
        int i3 = i;
        long j2 = j;
        return payCreateOrderResult.copy(str, str2, j2, i3, str3, str7, payReportMessage, str6);
    }

    @NotNull
    public final String component1() {
        return this.jumpUrl;
    }

    @NotNull
    public final String component2() {
        return this.parameter;
    }

    public final long component3() {
        return this.userId;
    }

    public final int component4() {
        return this.execType;
    }

    @NotNull
    public final String component5() {
        return this.packageName;
    }

    @NotNull
    public final String component6() {
        return this.errorMessage;
    }

    @Nullable
    public final PayReportMessage component7() {
        return this.payReportMessage;
    }

    @NotNull
    public final String component8() {
        return this.rawData;
    }

    @NotNull
    public final PayCreateOrderResult copy(@NotNull String str, @NotNull String str2, long j, int i, @NotNull String str3, @NotNull String str4, @Nullable PayReportMessage payReportMessage, @NotNull String str5) {
        return new PayCreateOrderResult(str, str2, j, i, str3, str4, payReportMessage, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PayCreateOrderResult)) {
            return false;
        }
        PayCreateOrderResult payCreateOrderResult = (PayCreateOrderResult) obj;
        if (Intrinsics.areEqual(this.jumpUrl, payCreateOrderResult.jumpUrl) && Intrinsics.areEqual(this.parameter, payCreateOrderResult.parameter) && this.userId == payCreateOrderResult.userId && this.execType == payCreateOrderResult.execType && Intrinsics.areEqual(this.packageName, payCreateOrderResult.packageName) && Intrinsics.areEqual(this.errorMessage, payCreateOrderResult.errorMessage) && Intrinsics.areEqual(this.payReportMessage, payCreateOrderResult.payReportMessage) && Intrinsics.areEqual(this.rawData, payCreateOrderResult.rawData)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final int getExecType() {
        return this.execType;
    }

    @NotNull
    public final String getJumpUrl() {
        return this.jumpUrl;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final String getParameter() {
        return this.parameter;
    }

    @Nullable
    public final PayReportMessage getPayReportMessage() {
        return this.payReportMessage;
    }

    @NotNull
    public final String getRawData() {
        return this.rawData;
    }

    public final long getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode;
        int a2 = a.a(this.parameter, this.jumpUrl.hashCode() * 31, 31);
        int i = this.execType;
        int a3 = a.a(this.errorMessage, a.a(this.packageName, (i + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.userId) + a2) * 31)) * 31, 31), 31);
        PayReportMessage payReportMessage = this.payReportMessage;
        if (payReportMessage == null) {
            hashCode = 0;
        } else {
            hashCode = payReportMessage.hashCode();
        }
        return this.rawData.hashCode() + ((a3 + hashCode) * 31);
    }

    public final boolean isSuccess() {
        if (this.payReportMessage == null) {
            return true;
        }
        return false;
    }

    public final void setRawData(@NotNull String str) {
        this.rawData = str;
    }

    @NotNull
    public String toString() {
        String str = this.jumpUrl;
        String str2 = this.parameter;
        long j = this.userId;
        int i = this.execType;
        String str3 = this.packageName;
        String str4 = this.errorMessage;
        PayReportMessage payReportMessage = this.payReportMessage;
        String str5 = this.rawData;
        return "PayCreateOrderResult(jumpUrl=" + str + ", parameter=" + str2 + ", userId=" + j + ", execType=" + i + ", packageName=" + str3 + ", errorMessage=" + str4 + ", payReportMessage=" + payReportMessage + ", rawData=" + str5 + ")";
    }

    public PayCreateOrderResult(@NotNull String str, @NotNull String str2, long j, int i, @NotNull String str3, @NotNull String str4, @Nullable PayReportMessage payReportMessage, @NotNull String str5) {
        this.jumpUrl = str;
        this.parameter = str2;
        this.userId = j;
        this.execType = i;
        this.packageName = str3;
        this.errorMessage = str4;
        this.payReportMessage = payReportMessage;
        this.rawData = str5;
    }

    public /* synthetic */ PayCreateOrderResult(String str, String str2, long j, int i, String str3, String str4, PayReportMessage payReportMessage, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0L : j, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? "" : str3, (i2 & 32) != 0 ? "" : str4, (i2 & 64) != 0 ? null : payReportMessage, (i2 & 128) != 0 ? "" : str5);
    }
}
