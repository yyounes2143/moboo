package com.appsflyer.internal;

import com.appsflyer.AppsFlyerLib;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u0005*\u00020\u0005H\u0017¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u000e\u001a\u00020\r8\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u000b\u001a\u00020\u00058WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0012"}, d2 = {"Lcom/appsflyer/internal/AFd1tSDK;", "Lcom/appsflyer/internal/AFc1dSDK;", "", "p0", "", "", "p1", "", "p2", "<init>", "([BLjava/util/Map;I)V", "AFAdRevenueData", "(Ljava/lang/String;)Ljava/lang/String;", "Lcom/appsflyer/internal/AFd1jSDK;", "getCurrencyIso4217Code", "Lcom/appsflyer/internal/AFd1jSDK;", "getMediationNetwork", "()Lcom/appsflyer/internal/AFd1jSDK;", "()Ljava/lang/String;", "AFa1vSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AFd1tSDK extends AFc1dSDK {
    @NotNull
    public static final AFa1vSDK AFa1vSDK = new AFa1vSDK(null);
    @NotNull
    public static String getMediationNetwork = "https://%smonitorsdk.%s/remote-debug/exception-manager";
    @NotNull
    private final AFd1jSDK getCurrencyIso4217Code;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/appsflyer/internal/AFd1tSDK$AFa1vSDK;", "", "<init>", "()V", "", "getMediationNetwork", "Ljava/lang/String;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AFa1vSDK {
        private AFa1vSDK() {
        }

        public /* synthetic */ AFa1vSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AFd1tSDK(@NotNull byte[] bArr, @Nullable Map<String, String> map, int i) {
        super(bArr, map, i);
        this.getCurrencyIso4217Code = AFd1jSDK.JSON;
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @NotNull
    public final String AFAdRevenueData(@NotNull String str) {
        return AFd1rSDK.getCurrencyIso4217Code(str);
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @JvmName(name = "getCurrencyIso4217Code")
    @NotNull
    public final String getCurrencyIso4217Code() {
        return String.format(getMediationNetwork, AppsFlyerLib.getInstance().getHostPrefix(), AFa1ySDK.getRevenue().getHostName());
    }

    @Override // com.appsflyer.internal.AFc1dSDK
    @JvmName(name = "getMediationNetwork")
    @NotNull
    public final AFd1jSDK getMediationNetwork() {
        return this.getCurrencyIso4217Code;
    }
}
