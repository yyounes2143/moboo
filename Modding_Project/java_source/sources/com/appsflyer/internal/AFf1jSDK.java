package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000eR\u001b\u0010\u0012\u001a\u00020\u000b8GX\u0087\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\rR\u001b\u0010\f\u001a\u00020\u000b8GX\u0087\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\u0010\u001a\u0004\b\u000f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013"}, d2 = {"Lcom/appsflyer/internal/AFf1jSDK;", "", "Lcom/appsflyer/internal/AFc1oSDK;", "p0", "Lcom/appsflyer/internal/AFf1hSDK;", "p1", "<init>", "(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFf1hSDK;)V", "", "getCurrencyIso4217Code", "()J", "", "AFAdRevenueData", "()Z", "Lcom/appsflyer/internal/AFc1oSDK;", "getMediationNetwork", "Lkotlin/Lazy;", "getMonetizationNetwork", "getRevenue", "Lcom/appsflyer/internal/AFf1hSDK;", "AFa1vSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AFf1jSDK {
    @NotNull
    public static final AFa1vSDK AFa1vSDK = new AFa1vSDK(null);
    private static final long getMonetizationNetwork = TimeUnit.HOURS.toSeconds(24);
    @NotNull
    private final AFc1oSDK AFAdRevenueData;
    @NotNull
    private final AFf1hSDK getRevenue;
    @NotNull
    private final Lazy getMediationNetwork = LazyKt.lazy(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFf1jSDK.4
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getCurrencyIso4217Code */
        public final Boolean invoke() {
            return Boolean.valueOf(Boolean.parseBoolean(AFf1jSDK.this.AFAdRevenueData.getCurrencyIso4217Code("com.appsflyer.rc.sandbox")));
        }
    });
    @NotNull
    private final Lazy getCurrencyIso4217Code = LazyKt.lazy(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFf1jSDK.5
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getRevenue */
        public final Boolean invoke() {
            return Boolean.valueOf(Boolean.parseBoolean(AFf1jSDK.this.AFAdRevenueData.getCurrencyIso4217Code("com.appsflyer.rc.staging")));
        }
    });

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/appsflyer/internal/AFf1jSDK$AFa1vSDK;", "", "<init>", "()V", "", "getMonetizationNetwork", "J", "getCurrencyIso4217Code"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AFa1vSDK {
        private AFa1vSDK() {
        }

        public /* synthetic */ AFa1vSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AFf1jSDK(@NotNull AFc1oSDK aFc1oSDK, @NotNull AFf1hSDK aFf1hSDK) {
        this.AFAdRevenueData = aFc1oSDK;
        this.getRevenue = aFf1hSDK;
    }

    public final boolean AFAdRevenueData() {
        boolean z;
        AFi1xSDK aFi1xSDK;
        AFi1vSDK aFi1vSDK = this.getRevenue.getCurrencyIso4217Code;
        if (aFi1vSDK == null) {
            AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.REMOTE_CONTROL, "active config is missing - fetching from CDN", false, 4, null);
            return true;
        }
        AFi1zSDK aFi1zSDK = aFi1vSDK.getMonetizationNetwork;
        if (aFi1zSDK != null && (aFi1xSDK = aFi1zSDK.getMediationNetwork) != null) {
            z = aFi1xSDK.AFAdRevenueData();
        } else {
            z = false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        AFf1hSDK aFf1hSDK = this.getRevenue;
        long j = currentTimeMillis - aFf1hSDK.getRevenue;
        long millis = TimeUnit.SECONDS.toMillis(aFf1hSDK.getMonetizationNetwork);
        if (z || j > millis) {
            return true;
        }
        return false;
    }

    public final long getCurrencyIso4217Code() {
        Object m438constructorimpl;
        String currencyIso4217Code = this.AFAdRevenueData.getCurrencyIso4217Code("com.appsflyer.rc.cache.max-age-fallback");
        if (currencyIso4217Code != null) {
            try {
                Result.Companion companion = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(Long.valueOf(Long.parseLong(currencyIso4217Code)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
            }
            Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
            if (m441exceptionOrNullimpl != null) {
                String message = m441exceptionOrNullimpl.getMessage();
                AFLogger.afErrorLog("Can't read maxAgeFallback from Manifest: " + message, m441exceptionOrNullimpl);
                m438constructorimpl = Long.valueOf(getMonetizationNetwork);
            }
            return ((Number) m438constructorimpl).longValue();
        }
        return getMonetizationNetwork;
    }

    @JvmName(name = "getMediationNetwork")
    public final boolean getMediationNetwork() {
        return ((Boolean) this.getCurrencyIso4217Code.getValue()).booleanValue();
    }

    @JvmName(name = "getMonetizationNetwork")
    public final boolean getMonetizationNetwork() {
        return ((Boolean) this.getMediationNetwork.getValue()).booleanValue();
    }
}
