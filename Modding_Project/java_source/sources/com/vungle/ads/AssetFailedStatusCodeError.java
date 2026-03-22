package com.vungle.ads;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vungle/ads/AssetFailedStatusCodeError;", "Lcom/vungle/ads/VungleError;", "url", "", "code", "", "message", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class AssetFailedStatusCodeError extends VungleError {
    public /* synthetic */ AssetFailedStatusCodeError(String str, Integer num, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : str2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AssetFailedStatusCodeError(@org.jetbrains.annotations.NotNull java.lang.String r4, @org.jetbrains.annotations.Nullable java.lang.Integer r5, @org.jetbrains.annotations.Nullable java.lang.String r6) {
        /*
            r3 = this;
            com.vungle.ads.internal.protos.Sdk$SDKError$Reason r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Asset fail to download: "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = ", Error code:"
            r1.append(r4)
            r1.append(r5)
            java.lang.String r4 = ", Error message: "
            r1.append(r4)
            r1.append(r6)
            java.lang.String r4 = r1.toString()
            r5 = 0
            r3.<init>(r0, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.AssetFailedStatusCodeError.<init>(java.lang.String, java.lang.Integer, java.lang.String):void");
    }
}
