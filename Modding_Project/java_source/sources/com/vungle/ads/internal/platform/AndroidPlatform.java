package com.vungle.ads.internal.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import androidx.core.util.Consumer;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.tasks.OnSuccessListener;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdvertisingInfo;
import com.vungle.ads.internal.util.Logger;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 32\u00020\u0001:\u00013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010$\u001a\u00020\bH\u0016J\b\u0010%\u001a\u00020\bH\u0002J\n\u0010&\u001a\u0004\u0018\u00010\nH\u0016J\u000f\u0010'\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020\bH\u0002J\b\u0010,\u001a\u00020*H\u0016J\b\u0010-\u001a\u00020*H\u0016J\u0018\u0010.\u001a\u00020/2\u000e\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n01H\u0016J\b\u00102\u001a\u00020/H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u0014X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\n8VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u00064"}, d2 = {"Lcom/vungle/ads/internal/platform/AndroidPlatform;", "Lcom/vungle/ads/internal/platform/Platform;", "context", "Landroid/content/Context;", "uaExecutor", "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "(Landroid/content/Context;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V", "advertisingInfo", "Lcom/vungle/ads/internal/model/AdvertisingInfo;", "appSetId", "", "appSetIdScope", "", "Ljava/lang/Integer;", "audioManager", "Landroid/media/AudioManager;", "carrierName", "getCarrierName", "()Ljava/lang/String;", "isBatterySaverEnabled", "", "()Z", "isSdCardPresent", "isSideLoaded", "isSilentModeEnabled", "isSoundEnabled", "powerManager", "Landroid/os/PowerManager;", "userAgent", "getUserAgent", "setUserAgent", "(Ljava/lang/String;)V", "volumeLevel", "", "getVolumeLevel", "()F", "getAdvertisingInfo", "getAmazonAdvertisingInfo", "getAppSetId", "getAppSetIdScope", "()Ljava/lang/Integer;", "getBuildTime", "", "getGoogleAdvertisingInfo", "getLastBootTime", "getOSInstallationTime", "getUserAgentLazy", "", "consumer", "Landroidx/core/util/Consumer;", "updateAppSetID", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class AndroidPlatform implements Platform {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "AndroidPlatform";
    @Nullable
    private AdvertisingInfo advertisingInfo;
    @Nullable
    private String appSetId;
    @Nullable
    private Integer appSetIdScope;
    @NotNull
    private final AudioManager audioManager;
    @NotNull
    private final Context context;
    private final boolean isSideLoaded;
    @NotNull
    private final PowerManager powerManager;
    @NotNull
    private final VungleThreadPoolExecutor uaExecutor;
    @Nullable
    private String userAgent;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00040\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0002\b\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/vungle/ads/internal/platform/AndroidPlatform$Companion;", "", "()V", "TAG", "", "getCarrierName", "kotlin.jvm.PlatformType", "context", "Landroid/content/Context;", "getCarrierName$vungle_ads_release", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getCarrierName$vungle_ads_release(@NotNull Context context) {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        }

        private Companion() {
        }
    }

    public AndroidPlatform(@NotNull Context context, @NotNull VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        this.context = context;
        this.uaExecutor = vungleThreadPoolExecutor;
        updateAppSetID();
        this.powerManager = (PowerManager) context.getSystemService("power");
        this.audioManager = (AudioManager) context.getSystemService("audio");
    }

    private final AdvertisingInfo getAmazonAdvertisingInfo() {
        AdvertisingInfo advertisingInfo = new AdvertisingInfo();
        try {
            ContentResolver contentResolver = this.context.getContentResolver();
            boolean z = true;
            if (Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 1) {
                z = false;
            }
            advertisingInfo.setLimitAdTracking(z);
            advertisingInfo.setAdvertisingId(Settings.Secure.getString(contentResolver, "advertising_id"));
            return advertisingInfo;
        } catch (Settings.SettingNotFoundException e) {
            Logger.Companion.w(TAG, "Error getting Amazon advertising info: Setting not found.", e);
            return advertisingInfo;
        } catch (Exception e2) {
            Logger.Companion.w(TAG, "Error getting Amazon advertising info", e2);
            return advertisingInfo;
        }
    }

    private final AdvertisingInfo getGoogleAdvertisingInfo() {
        AdvertisingInfo advertisingInfo = new AdvertisingInfo();
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.context);
            advertisingInfo.setAdvertisingId(advertisingIdInfo.getId());
            advertisingInfo.setLimitAdTracking(advertisingIdInfo.isLimitAdTrackingEnabled());
            return advertisingInfo;
        } catch (GooglePlayServicesNotAvailableException e) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Play services Not available: " + e.getLocalizedMessage());
            return advertisingInfo;
        } catch (Exception e2) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "Error getting Google advertising info: " + e2.getLocalizedMessage());
            return advertisingInfo;
        } catch (NoClassDefFoundError e3) {
            Logger.Companion companion3 = Logger.Companion;
            companion3.e(TAG, "Play services Not available: " + e3.getLocalizedMessage());
            advertisingInfo.setAdvertisingId(Settings.Secure.getString(this.context.getContentResolver(), "advertising_id"));
            return advertisingInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getUserAgentLazy$lambda-0  reason: not valid java name */
    public static final void m332getUserAgentLazy$lambda0(AndroidPlatform androidPlatform, Consumer consumer) {
        WebViewUtil.INSTANCE.getUserAgent(androidPlatform.context, consumer);
    }

    private final void updateAppSetID() {
        String str = this.appSetId;
        if (str != null && str.length() != 0) {
            return;
        }
        try {
            AppSet.getClient(this.context).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener() { // from class: com.vungle.ads.internal.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    AndroidPlatform.m333updateAppSetID$lambda4(AndroidPlatform.this, (AppSetIdInfo) obj);
                }
            });
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Error getting AppSetID: " + e.getLocalizedMessage());
        } catch (NoClassDefFoundError e2) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "Required libs to get AppSetID Not available: " + e2.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateAppSetID$lambda-4  reason: not valid java name */
    public static final void m333updateAppSetID$lambda4(AndroidPlatform androidPlatform, AppSetIdInfo appSetIdInfo) {
        if (appSetIdInfo != null) {
            androidPlatform.appSetId = appSetIdInfo.getId();
            androidPlatform.appSetIdScope = Integer.valueOf(appSetIdInfo.getScope());
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @NotNull
    public AdvertisingInfo getAdvertisingInfo() {
        AdvertisingInfo googleAdvertisingInfo;
        String advertisingId;
        AdvertisingInfo advertisingInfo = this.advertisingInfo;
        if (advertisingInfo != null && (advertisingId = advertisingInfo.getAdvertisingId()) != null && advertisingId.length() != 0) {
            return advertisingInfo;
        }
        if (StringsKt.equals(Build.MANUFACTURER, "Amazon", true)) {
            googleAdvertisingInfo = getAmazonAdvertisingInfo();
        } else {
            googleAdvertisingInfo = getGoogleAdvertisingInfo();
        }
        this.advertisingInfo = googleAdvertisingInfo;
        return googleAdvertisingInfo;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @Nullable
    public String getAppSetId() {
        return this.appSetId;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @Nullable
    public Integer getAppSetIdScope() {
        return this.appSetIdScope;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public long getBuildTime() {
        return Build.TIME;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @NotNull
    public String getCarrierName() {
        return Companion.getCarrierName$vungle_ads_release(this.context);
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public long getLastBootTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public long getOSInstallationTime() {
        long m438constructorimpl;
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of;
        try {
            Result.Companion companion = Result.Companion;
            if (Build.VERSION.SDK_INT >= 33) {
                PackageManager packageManager = this.context.getPackageManager();
                of = PackageManager.PackageInfoFlags.of(0L);
                packageInfo = packageManager.getPackageInfo("android", of);
            } else {
                packageInfo = this.context.getPackageManager().getPackageInfo("android", 0);
            }
            m438constructorimpl = Result.m438constructorimpl(Long.valueOf(packageInfo.firstInstallTime));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
        if (m441exceptionOrNullimpl != null) {
            if (m441exceptionOrNullimpl instanceof PackageManager.NameNotFoundException) {
                Logger.Companion companion3 = Logger.Companion;
                companion3.e(TAG, "Error getting OS installation time: " + ((PackageManager.NameNotFoundException) m441exceptionOrNullimpl).getLocalizedMessage());
            }
            m438constructorimpl = -1L;
        }
        return ((Number) m438constructorimpl).longValue();
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @Nullable
    public String getUserAgent() {
        String str = this.userAgent;
        if (str == null) {
            return System.getProperty("http.agent");
        }
        return str;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public void getUserAgentLazy(@NotNull final Consumer<String> consumer) {
        this.uaExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AndroidPlatform.m332getUserAgentLazy$lambda0(AndroidPlatform.this, consumer);
            }
        });
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public float getVolumeLevel() {
        try {
            return this.audioManager.getStreamVolume(3) / this.audioManager.getStreamMaxVolume(3);
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isBatterySaverEnabled() {
        return this.powerManager.isPowerSaveMode();
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSdCardPresent() {
        try {
            return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
        } catch (Exception e) {
            Logger.Companion.e(TAG, "Acquiring external storage state failed", e);
            return false;
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSideLoaded() {
        return this.isSideLoaded;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSilentModeEnabled() {
        try {
            if (this.audioManager.getRingerMode() != 0) {
                if (this.audioManager.getRingerMode() != 1) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSoundEnabled() {
        try {
            if (this.audioManager.getStreamVolume(3) > 0) {
                return true;
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public void setUserAgent(@Nullable String str) {
        this.userAgent = str;
    }
}
