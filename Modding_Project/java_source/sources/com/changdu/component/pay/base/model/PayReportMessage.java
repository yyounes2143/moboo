package com.changdu.component.pay.base.model;

import java.io.Serializable;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012(\b\u0002\u0010\b\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J)\u0010\u001a\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bHÆ\u0003Je\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032(\b\u0002\u0010\b\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR1\u0010\b\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\""}, d2 = {"Lcom/changdu/component/pay/base/model/PayReportMessage;", "Ljava/io/Serializable;", "bizType", "", "bizMsg", "bizContent", "bizReferer", "bizInPageOperation", "customBizParamMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V", "getBizContent", "()Ljava/lang/String;", "getBizInPageOperation", "getBizMsg", "getBizReferer", "getBizType", "getCustomBizParamMap", "()Ljava/util/HashMap;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "pay-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PayReportMessage implements Serializable {
    @NotNull
    private final String bizContent;
    @NotNull
    private final String bizInPageOperation;
    @NotNull
    private final String bizMsg;
    @NotNull
    private final String bizReferer;
    @NotNull
    private final String bizType;
    @Nullable
    private final HashMap<String, Object> customBizParamMap;

    public PayReportMessage() {
        this(null, null, null, null, null, null, 63, null);
    }

    public static /* synthetic */ PayReportMessage copy$default(PayReportMessage payReportMessage, String str, String str2, String str3, String str4, String str5, HashMap hashMap, int i, Object obj) {
        if ((i & 1) != 0) {
            str = payReportMessage.bizType;
        }
        if ((i & 2) != 0) {
            str2 = payReportMessage.bizMsg;
        }
        if ((i & 4) != 0) {
            str3 = payReportMessage.bizContent;
        }
        if ((i & 8) != 0) {
            str4 = payReportMessage.bizReferer;
        }
        if ((i & 16) != 0) {
            str5 = payReportMessage.bizInPageOperation;
        }
        HashMap<String, Object> hashMap2 = hashMap;
        if ((i & 32) != 0) {
            hashMap2 = payReportMessage.customBizParamMap;
        }
        String str6 = str5;
        HashMap hashMap3 = hashMap2;
        return payReportMessage.copy(str, str2, str3, str4, str6, hashMap3);
    }

    @NotNull
    public final String component1() {
        return this.bizType;
    }

    @NotNull
    public final String component2() {
        return this.bizMsg;
    }

    @NotNull
    public final String component3() {
        return this.bizContent;
    }

    @NotNull
    public final String component4() {
        return this.bizReferer;
    }

    @NotNull
    public final String component5() {
        return this.bizInPageOperation;
    }

    @Nullable
    public final HashMap<String, Object> component6() {
        return this.customBizParamMap;
    }

    @NotNull
    public final PayReportMessage copy(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @Nullable HashMap<String, Object> hashMap) {
        return new PayReportMessage(str, str2, str3, str4, str5, hashMap);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PayReportMessage)) {
            return false;
        }
        PayReportMessage payReportMessage = (PayReportMessage) obj;
        if (Intrinsics.areEqual(this.bizType, payReportMessage.bizType) && Intrinsics.areEqual(this.bizMsg, payReportMessage.bizMsg) && Intrinsics.areEqual(this.bizContent, payReportMessage.bizContent) && Intrinsics.areEqual(this.bizReferer, payReportMessage.bizReferer) && Intrinsics.areEqual(this.bizInPageOperation, payReportMessage.bizInPageOperation) && Intrinsics.areEqual(this.customBizParamMap, payReportMessage.customBizParamMap)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getBizContent() {
        return this.bizContent;
    }

    @NotNull
    public final String getBizInPageOperation() {
        return this.bizInPageOperation;
    }

    @NotNull
    public final String getBizMsg() {
        return this.bizMsg;
    }

    @NotNull
    public final String getBizReferer() {
        return this.bizReferer;
    }

    @NotNull
    public final String getBizType() {
        return this.bizType;
    }

    @Nullable
    public final HashMap<String, Object> getCustomBizParamMap() {
        return this.customBizParamMap;
    }

    public int hashCode() {
        int hashCode;
        int a2 = a.a(this.bizInPageOperation, a.a(this.bizReferer, a.a(this.bizContent, a.a(this.bizMsg, this.bizType.hashCode() * 31, 31), 31), 31), 31);
        HashMap<String, Object> hashMap = this.customBizParamMap;
        if (hashMap == null) {
            hashCode = 0;
        } else {
            hashCode = hashMap.hashCode();
        }
        return a2 + hashCode;
    }

    @NotNull
    public String toString() {
        String str = this.bizType;
        String str2 = this.bizMsg;
        String str3 = this.bizContent;
        String str4 = this.bizReferer;
        String str5 = this.bizInPageOperation;
        HashMap<String, Object> hashMap = this.customBizParamMap;
        return "PayReportMessage(bizType=" + str + ", bizMsg=" + str2 + ", bizContent=" + str3 + ", bizReferer=" + str4 + ", bizInPageOperation=" + str5 + ", customBizParamMap=" + hashMap + ")";
    }

    public PayReportMessage(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @Nullable HashMap<String, Object> hashMap) {
        this.bizType = str;
        this.bizMsg = str2;
        this.bizContent = str3;
        this.bizReferer = str4;
        this.bizInPageOperation = str5;
        this.customBizParamMap = hashMap;
    }

    public /* synthetic */ PayReportMessage(String str, String str2, String str3, String str4, String str5, HashMap hashMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? null : hashMap);
    }
}
