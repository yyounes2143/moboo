package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailability;
import com.samsung.android.game.cloudgame.dev.sdk.CloudDevCallback;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002+,B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\nH\u0003¢\u0006\u0004\b\r\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\fJ\u001f\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u000b\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0017¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0012\u001a\u00020\u0017H\u0017¢\u0006\u0004\b\u0012\u0010\u0018J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0019J\u000f\u0010\u000e\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u000e\u0010\tJ\u001d\u0010\u0012\u001a\u00020\u001b*\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u0012\u0010\u001cR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0012\u001a\u00020\u001f8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\r\u001a\u00020\"8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u0015\u001a\u00020\u00078CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\tR\u001b\u0010\u000e\u001a\u00020\u00078CX\u0083\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b\u001d\u0010\tR\u0014\u0010\u001d\u001a\u00020(8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b%\u0010)R\u0015\u0010#\u001a\u00020\u00148BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b*\u0010'"}, d2 = {"Lcom/appsflyer/internal/AFe1eSDK;", "Lcom/appsflyer/internal/AFe1mSDK;", "Lcom/appsflyer/internal/AFh1rSDK;", "Lcom/appsflyer/internal/AFd1zSDK;", "p0", "<init>", "(Lcom/appsflyer/internal/AFd1zSDK;)V", "", "copydefault", "()Z", "", "getCurrencyIso4217Code", "(I)Z", "getMediationNetwork", "getMonetizationNetwork", "Landroid/content/Context;", "Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;", "p1", "getRevenue", "(Landroid/content/Context;Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;)Z", "", "AFAdRevenueData", "()J", "Lcom/appsflyer/internal/AFe1uSDK;", "()Lcom/appsflyer/internal/AFe1uSDK;", "(Landroid/content/Context;)I", "", "", "(Lcom/appsflyer/internal/AFh1rSDK;Ljava/lang/String;)V", "component3", "Lcom/appsflyer/internal/AFh1rSDK;", "Lcom/appsflyer/internal/AFc1hSDK;", "component4", "Lcom/appsflyer/internal/AFc1hSDK;", "Lcom/appsflyer/internal/AFc1oSDK;", "component1", "Lcom/appsflyer/internal/AFc1oSDK;", "component2", "copy", "Lkotlin/Lazy;", "Lcom/appsflyer/internal/AFc1eSDK;", "Lcom/appsflyer/internal/AFc1eSDK;", "areAllFieldsValid", "AFa1tSDK", "AFa1uSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFetchAdvertisingIdTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchAdvertisingIdTask.kt\ncom/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n39#2:397\n1#3:398\n*S KotlinDebug\n*F\n+ 1 FetchAdvertisingIdTask.kt\ncom/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask\n*L\n202#1:397\n*E\n"})
/* loaded from: classes3.dex */
public final class AFe1eSDK extends AFe1mSDK<AFh1rSDK> {
    @NotNull
    public static final AFa1tSDK AFa1tSDK = new AFa1tSDK(null);
    @NotNull
    private final Lazy areAllFieldsValid;
    @NotNull
    private final AFc1oSDK component1;
    @NotNull
    private final AFc1eSDK component2;
    @NotNull
    private final AFh1rSDK component3;
    @NotNull
    private final AFc1hSDK component4;
    @NotNull
    private final Lazy copy;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lcom/appsflyer/internal/AFe1eSDK$AFa1tSDK;", "", "<init>", "()V"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AFa1tSDK {
        private AFa1tSDK() {
        }

        public /* synthetic */ AFa1tSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0010\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\f\b\u0002\u0010\t\u001a\u00060\u0007j\u0002`\b¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0004HÇ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0012\u001a\u00060\u0007j\u0002`\bHÇ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J@\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\f\b\u0002\u0010\t\u001a\u00060\u0007j\u0002`\bHÇ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u001c\u0010\rR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\r\"\u0004\b\u001f\u0010 R\"\u0010\u0006\u001a\u00020\u00048\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010!\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010$R\u001e\u0010\t\u001a\u00060\u0007j\u0002`\b8\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010%\u001a\u0004\b&\u0010\u0013R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010'\u001a\u0004\b\u0005\u0010\u000f\"\u0004\b(\u0010)"}, d2 = {"Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;", "", "", "advertisingId", "", "isLimitAdTrackingEnabled", "advertisingIdWithGps", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "gaidError", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Boolean;", "component3", "()Z", "component4", "()Ljava/lang/StringBuilder;", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;)Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "Ljava/lang/String;", "getAdvertisingId", "setAdvertisingId", "(Ljava/lang/String;)V", "Z", "getAdvertisingIdWithGps", "setAdvertisingIdWithGps", "(Z)V", "Ljava/lang/StringBuilder;", "getGaidError", "Ljava/lang/Boolean;", "setLimitAdTrackingEnabled", "(Ljava/lang/Boolean;)V"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AFa1uSDK {
        @Nullable
        private String advertisingId;
        private boolean advertisingIdWithGps;
        @NotNull
        private final StringBuilder gaidError;
        @Nullable
        private Boolean isLimitAdTrackingEnabled;

        public AFa1uSDK() {
            this(null, null, false, null, 15, null);
        }

        public static /* synthetic */ AFa1uSDK copy$default(AFa1uSDK aFa1uSDK, String str, Boolean bool, boolean z, StringBuilder sb, int i, Object obj) {
            if ((i & 1) != 0) {
                str = aFa1uSDK.advertisingId;
            }
            if ((i & 2) != 0) {
                bool = aFa1uSDK.isLimitAdTrackingEnabled;
            }
            if ((i & 4) != 0) {
                z = aFa1uSDK.advertisingIdWithGps;
            }
            if ((i & 8) != 0) {
                sb = aFa1uSDK.gaidError;
            }
            return aFa1uSDK.copy(str, bool, z, sb);
        }

        @Nullable
        public final String component1() {
            return this.advertisingId;
        }

        @Nullable
        public final Boolean component2() {
            return this.isLimitAdTrackingEnabled;
        }

        public final boolean component3() {
            return this.advertisingIdWithGps;
        }

        @NotNull
        public final StringBuilder component4() {
            return this.gaidError;
        }

        @NotNull
        public final AFa1uSDK copy(@Nullable String str, @Nullable Boolean bool, boolean z, @NotNull StringBuilder sb) {
            return new AFa1uSDK(str, bool, z, sb);
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AFa1uSDK)) {
                return false;
            }
            AFa1uSDK aFa1uSDK = (AFa1uSDK) obj;
            if (Intrinsics.areEqual(this.advertisingId, aFa1uSDK.advertisingId) && Intrinsics.areEqual(this.isLimitAdTrackingEnabled, aFa1uSDK.isLimitAdTrackingEnabled) && this.advertisingIdWithGps == aFa1uSDK.advertisingIdWithGps && Intrinsics.areEqual(this.gaidError, aFa1uSDK.gaidError)) {
                return true;
            }
            return false;
        }

        @JvmName(name = "getAdvertisingId")
        @Nullable
        public final String getAdvertisingId() {
            return this.advertisingId;
        }

        @JvmName(name = "getAdvertisingIdWithGps")
        public final boolean getAdvertisingIdWithGps() {
            return this.advertisingIdWithGps;
        }

        @JvmName(name = "getGaidError")
        @NotNull
        public final StringBuilder getGaidError() {
            return this.gaidError;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            String str = this.advertisingId;
            int i = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode * 31;
            Boolean bool = this.isLimitAdTrackingEnabled;
            if (bool != null) {
                i = bool.hashCode();
            }
            int i3 = (i2 + i) * 31;
            boolean z = this.advertisingIdWithGps;
            int i4 = z;
            if (z != 0) {
                i4 = 1;
            }
            return ((i3 + i4) * 31) + this.gaidError.hashCode();
        }

        @JvmName(name = "isLimitAdTrackingEnabled")
        @Nullable
        public final Boolean isLimitAdTrackingEnabled() {
            return this.isLimitAdTrackingEnabled;
        }

        @JvmName(name = "setAdvertisingId")
        public final void setAdvertisingId(@Nullable String str) {
            this.advertisingId = str;
        }

        @JvmName(name = "setAdvertisingIdWithGps")
        public final void setAdvertisingIdWithGps(boolean z) {
            this.advertisingIdWithGps = z;
        }

        @JvmName(name = "setLimitAdTrackingEnabled")
        public final void setLimitAdTrackingEnabled(@Nullable Boolean bool) {
            this.isLimitAdTrackingEnabled = bool;
        }

        @NotNull
        public final String toString() {
            String str = this.advertisingId;
            Boolean bool = this.isLimitAdTrackingEnabled;
            boolean z = this.advertisingIdWithGps;
            StringBuilder sb = this.gaidError;
            return "FetchGaidData(advertisingId=" + str + ", isLimitAdTrackingEnabled=" + bool + ", advertisingIdWithGps=" + z + ", gaidError=" + ((Object) sb) + ")";
        }

        public AFa1uSDK(@Nullable String str, @Nullable Boolean bool, boolean z, @NotNull StringBuilder sb) {
            this.advertisingId = str;
            this.isLimitAdTrackingEnabled = bool;
            this.advertisingIdWithGps = z;
            this.gaidError = sb;
        }

        public /* synthetic */ AFa1uSDK(String str, Boolean bool, boolean z, StringBuilder sb, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? false : z, (i & 8) != 0 ? new StringBuilder() : sb);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\bH\u0016¨\u0006\t"}, d2 = {"com/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask$fetchGaidUsingSamsungSdk$1", "Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevCallback;", "onError", "", "reason", "", "onSuccess", "kinds", "", "SDK_prodRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AFa1ySDK implements CloudDevCallback {
        final /* synthetic */ AFa1uSDK $fetchGaidData;
        final /* synthetic */ CountDownLatch $latch;

        public AFa1ySDK(AFa1uSDK aFa1uSDK, CountDownLatch countDownLatch) {
            this.$fetchGaidData = aFa1uSDK;
            this.$latch = countDownLatch;
        }

        public final void onError(@NotNull String str) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.ADVERTISING_ID;
            AFh1ySDK.w$default(aFLogger, aFg1cSDK, "Could not fetch GAID using CloudDevSdk: " + str, false, 4, null);
            StringBuilder gaidError = this.$fetchGaidData.getGaidError();
            gaidError.append(str);
            gaidError.append(" |");
            this.$latch.countDown();
        }

        public final void onSuccess(@NotNull Map<String, String> map) {
            AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "CloudDevCallback received onSuccess", false, 4, null);
            this.$fetchGaidData.setAdvertisingId(map.get("gaid"));
            this.$latch.countDown();
        }
    }

    public AFe1eSDK(@NotNull AFd1zSDK aFd1zSDK) {
        super(AFe1pSDK.FETCH_ADVERTISING_ID, new AFe1pSDK[0], "FetchAdvertisingIdTask");
        this.component4 = aFd1zSDK.AFInAppEventParameterName();
        this.component1 = aFd1zSDK.AFAdRevenueData();
        this.component2 = aFd1zSDK.force();
        this.component3 = new AFh1rSDK(null, null, null, null, null, null, null, null, 255, null);
        this.areAllFieldsValid = LazyKt.lazy(new Function0<Long>() { // from class: com.appsflyer.internal.AFe1eSDK.4
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                Long longOrNull;
                String currencyIso4217Code = AFe1eSDK.this.component1.getCurrencyIso4217Code("com.appsflyer.fetch_ids.timeout");
                return Long.valueOf((currencyIso4217Code == null || (longOrNull = StringsKt.toLongOrNull(currencyIso4217Code)) == null) ? 1000L : longOrNull.longValue());
            }
        });
        this.copy = LazyKt.lazy(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFe1eSDK.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(Boolean.parseBoolean(AFe1eSDK.this.component1.getCurrencyIso4217Code("com.appsflyer.enable_instant_plays")));
            }
        });
    }

    @JvmName(name = "component2")
    private static boolean component2() {
        String str;
        try {
            Class.forName("com.samsung.android.game.cloudgame.dev.sdk.CloudDevSdk");
            return true;
        } catch (Throwable th) {
            if (th instanceof ClassNotFoundException) {
                str = "CloudDevSdk not found";
            } else {
                str = "Unexpected exception while checking if running in cloud environment: " + th.getMessage();
            }
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, str, th, true, false, false, false, 112, null);
            return false;
        }
    }

    @JvmName(name = "component3")
    private final boolean component3() {
        return ((Boolean) this.copy.getValue()).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045 A[LOOP:0: B:3:0x0005->B:15:0x0045, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0048 A[EDGE_INSN: B:18:0x0048->B:16:0x0048 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean copydefault() {
        /*
            r17 = this;
            r0 = r17
            r1 = 2
            r2 = 0
            r3 = r2
        L5:
            if (r1 <= 0) goto L48
            boolean r3 = r0.component3()
            r4 = 1
            if (r3 == 0) goto L22
            boolean r3 = r0.getMonetizationNetwork(r1)
            if (r3 == 0) goto L22
            com.appsflyer.AFLogger r5 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r6 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r9 = 4
            r10 = 0
            java.lang.String r7 = "GAID fetched using Samsung Cloud dev SDK"
            r8 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r5, r6, r7, r8, r9, r10)
        L20:
            r3 = r4
            goto L43
        L22:
            boolean r3 = r0.getCurrencyIso4217Code(r1)
            if (r3 == 0) goto L35
            com.appsflyer.AFLogger r5 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r6 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r9 = 4
            r10 = 0
            java.lang.String r7 = "GAID fetched using GMS"
            r8 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r5, r6, r7, r8, r9, r10)
            goto L20
        L35:
            com.appsflyer.AFLogger r11 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r12 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r15 = 4
            r16 = 0
            java.lang.String r13 = "Failed to fetch GAID"
            r14 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r11, r12, r13, r14, r15, r16)
            r3 = r2
        L43:
            if (r3 != 0) goto L48
            int r1 = r1 + (-1)
            goto L5
        L48:
            com.appsflyer.internal.AFc1eSDK r1 = r0.component2
            com.appsflyer.internal.AFh1rSDK r2 = r0.component3
            r1.component3 = r2
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1eSDK.copydefault():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0064, code lost:
        if (r9.getGaidError().length() > 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0066, code lost:
        getRevenue(r20.component3, r9.getGaidError().toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cc, code lost:
        if (r9.getGaidError().length() <= 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00cf, code lost:
        r0 = r9.getAdvertisingId();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d3, code lost:
        if (r0 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d9, code lost:
        if (r0.length() != 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00dc, code lost:
        r0 = r20.component3;
        r0.getCurrencyIso4217Code = r9.getAdvertisingId();
        r3 = java.lang.Boolean.FALSE;
        r0.getRevenue = r3;
        r4 = java.lang.Boolean.TRUE;
        r0.AFAdRevenueData = r4;
        r0.getMediationNetwork = r3;
        r0.getMonetizationNetwork = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f3, code lost:
        if (r21 == 2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f5, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f6, code lost:
        r0.component2 = java.lang.Boolean.valueOf(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fc, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fd, code lost:
        return false;
     */
    @androidx.annotation.RequiresApi(23)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getMediationNetwork(int r21) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1eSDK.getMediationNetwork(int):boolean");
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    @VisibleForTesting(otherwise = 4)
    public final long AFAdRevenueData() {
        return ((Number) this.areAllFieldsValid.getValue()).longValue();
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public final AFe1uSDK getRevenue() {
        AFe1uSDK aFe1uSDK;
        if (this.component2.AFAdRevenueData()) {
            AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "QUEUE: Advertising ID collection is disabled. Skipping fetching... ", false, 4, null);
            return AFe1uSDK.FAILURE;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Boolean bool = Boolean.FALSE;
        if (CollectionsKt.listOf((Object[]) new Boolean[]{Boolean.valueOf(copydefault()), bool, bool}).contains(Boolean.TRUE)) {
            aFe1uSDK = AFe1uSDK.SUCCESS;
        } else {
            aFe1uSDK = AFe1uSDK.FAILURE;
        }
        AFc1eSDK aFc1eSDK = this.component2;
        AFd1aSDK aFd1aSDK = new AFd1aSDK(System.currentTimeMillis() - currentTimeMillis);
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.ADVERTISING_ID;
        long j = aFd1aSDK.getMediationNetwork;
        AFh1ySDK.v$default(aFLogger, aFg1cSDK, "QUEUE: FetchAdvertisingIdTask: took " + j + "ms", false, 4, null);
        aFc1eSDK.getMediationNetwork(aFd1aSDK);
        return aFe1uSDK;
    }

    private final boolean getCurrencyIso4217Code(int i) {
        Boolean isLimitAdTrackingEnabled;
        AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "Trying to fetch GAID...", false, 4, null);
        AFa1uSDK aFa1uSDK = new AFa1uSDK(null, null, false, null, 15, null);
        int revenue = getRevenue(this.component4.getMonetizationNetwork);
        if (!getCurrencyIso4217Code(this.component4.getMonetizationNetwork, aFa1uSDK)) {
            boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.ENABLE_GPS_FALLBACK, true) && getRevenue(this.component4.getMonetizationNetwork, aFa1uSDK);
            String obj = aFa1uSDK.getGaidError().toString();
            if (obj != null && !StringsKt.isBlank(obj)) {
                obj = revenue + ": " + StringsKt.trim((CharSequence) obj).toString();
            }
            getRevenue(this.component3, obj);
            if (!z) {
                return false;
            }
        }
        AFh1rSDK aFh1rSDK = this.component3;
        aFh1rSDK.getCurrencyIso4217Code = aFa1uSDK.getAdvertisingId();
        aFh1rSDK.getRevenue = aFa1uSDK.isLimitAdTrackingEnabled();
        aFh1rSDK.AFAdRevenueData = aFa1uSDK.isLimitAdTrackingEnabled() != null ? Boolean.valueOf(!isLimitAdTrackingEnabled.booleanValue()) : null;
        aFh1rSDK.getMediationNetwork = Boolean.valueOf(aFa1uSDK.getAdvertisingIdWithGps());
        aFh1rSDK.getMonetizationNetwork = Boolean.FALSE;
        aFh1rSDK.component2 = Boolean.valueOf(i != 2);
        return true;
    }

    private final boolean getMonetizationNetwork(int i) {
        return getMediationNetwork(i);
    }

    private static int getRevenue(Context context) {
        try {
            return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
        } catch (Throwable th) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "isGooglePlayServicesAvailable error", th, false, false, false, false, 96, null);
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:2:0x0000, B:4:0x001a, B:10:0x002e, B:14:0x0034, B:15:0x0044, B:9:0x0025), top: B:21:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getRevenue(android.content.Context r11, com.appsflyer.internal.AFe1eSDK.AFa1uSDK r12) throws java.lang.IllegalStateException {
        /*
            r10 = this;
            com.appsflyer.internal.AFb1vSDK$AFa1ySDK r11 = com.appsflyer.internal.AFb1vSDK.AFAdRevenueData(r11)     // Catch: java.lang.Throwable -> L21
            java.lang.String r0 = r11.getCurrencyIso4217Code     // Catch: java.lang.Throwable -> L21
            r12.setAdvertisingId(r0)     // Catch: java.lang.Throwable -> L21
            boolean r11 = r11.AFAdRevenueData()     // Catch: java.lang.Throwable -> L21
            java.lang.Boolean r11 = java.lang.Boolean.valueOf(r11)     // Catch: java.lang.Throwable -> L21
            r12.setLimitAdTrackingEnabled(r11)     // Catch: java.lang.Throwable -> L21
            java.lang.String r11 = r12.getAdvertisingId()     // Catch: java.lang.Throwable -> L21
            if (r11 == 0) goto L25
            int r11 = r11.length()     // Catch: java.lang.Throwable -> L21
            if (r11 != 0) goto L2e
            goto L25
        L21:
            r0 = move-exception
            r11 = r0
            r3 = r11
            goto L45
        L25:
            java.lang.StringBuilder r11 = r12.getGaidError()     // Catch: java.lang.Throwable -> L21
            java.lang.String r0 = "emptyOrNull (bypass) |"
            r11.append(r0)     // Catch: java.lang.Throwable -> L21
        L2e:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L21
            if (r11 == 0) goto L34
            r11 = 1
            return r11
        L34:
            java.lang.StringBuilder r11 = r12.getGaidError()     // Catch: java.lang.Throwable -> L21
            java.lang.String r0 = "gpsAdInfo-null (bypass) |"
            r11.append(r0)     // Catch: java.lang.Throwable -> L21
            java.lang.String r11 = "GpsAdInfo is null (bypass)"
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L21
            r0.<init>(r11)     // Catch: java.lang.Throwable -> L21
            throw r0     // Catch: java.lang.Throwable -> L21
        L45:
            com.appsflyer.AFLogger r0 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r1 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            java.lang.String r11 = r3.getMessage()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Failed to fetch GAID: "
            r2.append(r4)
            r2.append(r11)
            java.lang.String r2 = r2.toString()
            r8 = 64
            r9 = 0
            r4 = 1
            r5 = 0
            r6 = 0
            r7 = 0
            com.appsflyer.internal.AFh1ySDK.e$default(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9)
            java.lang.StringBuilder r11 = r12.getGaidError()
            java.lang.Class r12 = r3.getClass()
            java.lang.String r12 = r12.getSimpleName()
            r11.append(r12)
            java.lang.String r12 = " |"
            r11.append(r12)
            java.lang.String r11 = r3.getLocalizedMessage()
            if (r11 != 0) goto L86
            java.lang.String r11 = r3.toString()
        L86:
            r6 = r11
            r8 = 4
            r9 = 0
            r7 = 0
            r4 = r0
            r5 = r1
            com.appsflyer.internal.AFh1ySDK.i$default(r4, r5, r6, r7, r8, r9)
            r11 = 0
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1eSDK.getRevenue(android.content.Context, com.appsflyer.internal.AFe1eSDK$AFa1uSDK):boolean");
    }

    private static void getRevenue(AFh1rSDK aFh1rSDK, String str) {
        if (str == null) {
            return;
        }
        String str2 = aFh1rSDK.component3;
        if (str2 != null) {
            String str3 = str2 + " | " + str;
            if (str3 != null) {
                str = str3;
            }
        }
        aFh1rSDK.component3 = str;
    }

    private final boolean getCurrencyIso4217Code(Context context, AFa1uSDK aFa1uSDK) throws IllegalStateException {
        Unit unit;
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                aFa1uSDK.setAdvertisingId(advertisingIdInfo.getId());
                aFa1uSDK.setLimitAdTrackingEnabled(Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled()));
                aFa1uSDK.setAdvertisingIdWithGps(true);
                String advertisingId = aFa1uSDK.getAdvertisingId();
                if (advertisingId != null) {
                    if (advertisingId.length() == 0) {
                    }
                    unit = Unit.INSTANCE;
                }
                aFa1uSDK.getGaidError().append("emptyOrNull |");
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit != null) {
                return true;
            }
            aFa1uSDK.getGaidError().append("gpsAdInfo-null |");
            throw new IllegalStateException("GpsAdIndo is null");
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.ADVERTISING_ID;
            String message = th.getMessage();
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Google Play Services is missing " + message, th, false, false, false, false, 88, null);
            StringBuilder gaidError = aFa1uSDK.getGaidError();
            gaidError.append(th.getClass().getSimpleName());
            gaidError.append(" |");
            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "WARNING: Google Play Services is missing.", false, 4, null);
            return false;
        }
    }
}
