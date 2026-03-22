package com.unity3d.ads.core.data.datasource;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.unity3d.services.core.device.AdvertisingId;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.device.OpenAdvertisingId;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.DynamicDeviceInfoKt;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 Y2\u00020\u0001:\u0001YB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0013\u001a\u00020\rH\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\rH\u0002J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020\u001eJ\b\u0010 \u001a\u00020!H\u0002J\b\u0010\"\u001a\u00020\fH\u0016J\n\u0010#\u001a\u0004\u0018\u00010$H\u0002J\b\u0010%\u001a\u00020\u001eH\u0016J\b\u0010&\u001a\u00020'H\u0002J\b\u0010(\u001a\u00020'H\u0002J\u0006\u0010)\u001a\u00020'J\u0012\u0010*\u001a\u00020'2\b\u0010+\u001a\u0004\u0018\u00010,H\u0003J\u0006\u0010-\u001a\u00020\rJ\b\u0010.\u001a\u00020\fH\u0002J\u000e\u0010/\u001a\b\u0012\u0004\u0012\u00020\f00H\u0016J\u0010\u00101\u001a\u00020'2\u0006\u00102\u001a\u000203H\u0002J\u0012\u00104\u001a\u00020'2\b\u00105\u001a\u0004\u0018\u00010\fH\u0002J\u0006\u00106\u001a\u000207J\u0006\u00108\u001a\u00020\fJ\b\u00109\u001a\u00020\rH\u0002J\b\u0010:\u001a\u00020\fH\u0002J\b\u0010;\u001a\u00020\fH\u0002J\b\u0010<\u001a\u00020\u001eH\u0003J\b\u0010=\u001a\u00020\fH\u0016J\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000bJ\b\u0010?\u001a\u00020\u001eH\u0016J\u0006\u0010@\u001a\u00020\u001eJ\b\u0010A\u001a\u00020\u001eH\u0002J\b\u0010B\u001a\u00020\u001eH\u0002J\u0006\u0010C\u001a\u00020\rJ\u000e\u0010D\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u001eJ\u0010\u0010F\u001a\u00020\u001c2\u0006\u0010E\u001a\u00020\u001eH\u0002J\n\u0010G\u001a\u0004\u0018\u00010HH\u0002J\b\u0010I\u001a\u00020\fH\u0002J\b\u0010J\u001a\u00020'H\u0002J\u0006\u0010K\u001a\u00020'J\b\u0010L\u001a\u00020'H\u0002J\u0012\u0010M\u001a\u00020'2\b\u0010+\u001a\u0004\u0018\u00010,H\u0002J\b\u0010N\u001a\u00020\rH\u0016J\b\u0010O\u001a\u00020\rH\u0002J\b\u0010P\u001a\u00020\rH\u0003J\b\u0010Q\u001a\u00020\rH\u0002J\b\u0010R\u001a\u00020\rH\u0002J\b\u0010S\u001a\u00020\rH\u0002J\b\u0010T\u001a\u00020\rH\u0002J\b\u0010U\u001a\u00020\rH\u0002J\b\u0010V\u001a\u00020\rH\u0002J\b\u0010W\u001a\u00020\rH\u0002J\b\u0010X\u001a\u00020\rH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006Z"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;", "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;", "context", "Landroid/content/Context;", "lifecycleDataSource", "Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;", "(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;)V", "getContext", "()Landroid/content/Context;", "reportedWarning", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "", "", "volumeSettingsChange", "Lkotlinx/coroutines/flow/Flow;", "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;", "getVolumeSettingsChange", "()Lkotlinx/coroutines/flow/Flow;", "adbStatus", RemoteConfigComponent.FETCH_FILE_NAME, "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "fetchAndroidDynamicDeviceInfo", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "getAirplaneMode", "getAudioManager", "Landroid/media/AudioManager;", "getBatteryLevel", "", "getBatteryStatus", "", "getChargingType", "getConnectionType", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "getConnectionTypeStr", "getConnectivityManager", "Landroid/net/ConnectivityManager;", "getCurrentUiTheme", "getElapsedRealtime", "", "getEventTimeStamp", "getFreeMemory", "getFreeSpace", "file", "Ljava/io/File;", "getIsSdCardPresent", "getLanguage", "getLocaleList", "", "getMemoryInfo", "infoType", "Lcom/unity3d/services/core/device/Device$MemoryInfoType;", "getMemoryValueFromString", "memVal", "getNetworkCapabilityTransports", "Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;", "getNetworkCountryISO", "getNetworkMetered", "getNetworkOperator", "getNetworkOperatorName", "getNetworkType", "getOrientation", "getProcessInfo", "getRingerMode", "getScreenBrightness", "getScreenHeight", "getScreenWidth", "getStayOnWhilePluggedIn", "getStreamMaxVolume", "streamType", "getStreamVolume", "getTelephonyManager", "Landroid/telephony/TelephonyManager;", "getTimeZone", "getTimeZoneOffset", "getTotalMemory", "getUptime", "getUsableSpace", "hasInternet", "hasInternetConnection", "hasInternetConnectionM", "isActiveNetworkConnected", "isAdbEnabled", "isAppActive", "isLimitAdTrackingEnabled", "isLimitOpenAdTrackingEnabled", "isUSBConnected", "isUsingWifi", "isWiredHeadsetOn", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidDynamicDeviceInfoDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDynamicDeviceInfoDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource\n+ 2 DynamicDeviceInfoKt.kt\ngatewayprotocol/v1/DynamicDeviceInfoKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DynamicDeviceInfoKt.kt\ngatewayprotocol/v1/DynamicDeviceInfoKt\n+ 5 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,749:1\n10#2:750\n1#3:751\n1#3:753\n1#3:759\n766#4:752\n230#5,5:754\n11335#6:760\n11670#6,3:761\n*S KotlinDebug\n*F\n+ 1 AndroidDynamicDeviceInfoDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource\n*L\n55#1:750\n55#1:751\n75#1:753\n75#1:752\n161#1:754,5\n673#1:760\n673#1:761,3\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidDynamicDeviceInfoDataSource implements DynamicDeviceInfoDataSource {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String DIRECTORY_MEM_INFO = "/proc/meminfo";
    @NotNull
    public static final String DIRECTORY_MODE_READ = "r";
    @NotNull
    public static final String DIRECTORY_PROCESS_INFO = "/proc/self/stat";
    @NotNull
    public static final String INTENT_USB_STATE = "android.hardware.usb.action.USB_STATE";
    @NotNull
    public static final String KEY_STAT_CONTENT = "stat";
    @NotNull
    public static final String USB_EXTRA_CONNECTED = "connected";
    @NotNull
    private final Context context;
    @NotNull
    private final LifecycleDataSource lifecycleDataSource;
    @NotNull
    private final MutableStateFlow<Map<String, Boolean>> reportedWarning = StateFlowKt.MutableStateFlow(MapsKt.emptyMap());
    @NotNull
    private final Flow<VolumeSettingsChange> volumeSettingsChange = FlowKt.callbackFlow(new AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1(this, null));

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$Companion;", "", "()V", "DIRECTORY_MEM_INFO", "", "DIRECTORY_MODE_READ", "DIRECTORY_PROCESS_INFO", "INTENT_USB_STATE", "KEY_STAT_CONTENT", "USB_EXTRA_CONNECTED", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Device.MemoryInfoType.values().length];
            try {
                iArr[Device.MemoryInfoType.TOTAL_MEMORY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Device.MemoryInfoType.FREE_MEMORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DynamicDeviceInfoOuterClass.ConnectionType.values().length];
            try {
                iArr2[DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_CELLULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_UNSPECIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AndroidDynamicDeviceInfoDataSource(@NotNull Context context, @NotNull LifecycleDataSource lifecycleDataSource) {
        this.context = context;
        this.lifecycleDataSource = lifecycleDataSource;
    }

    private final boolean adbStatus() {
        Boolean bool;
        try {
            boolean z = true;
            if (1 != Settings.Global.getInt(this.context.getContentResolver(), "adb_enabled", 0)) {
                z = false;
            }
            bool = Boolean.valueOf(z);
        } catch (Exception e) {
            DeviceLog.exception("Problems fetching adb enabled status", e);
            bool = null;
        }
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android fetchAndroidDynamicDeviceInfo() {
        DynamicDeviceInfoKt dynamicDeviceInfoKt = DynamicDeviceInfoKt.INSTANCE;
        DynamicDeviceInfoKt.AndroidKt.Dsl _create = DynamicDeviceInfoKt.AndroidKt.Dsl.Companion._create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.newBuilder());
        _create.setNetworkConnected(isActiveNetworkConnected());
        _create.setNetworkType(getNetworkType());
        _create.setNetworkMetered(getNetworkMetered());
        _create.setTelephonyManagerNetworkType(getNetworkType());
        _create.setAdbEnabled(isAdbEnabled());
        _create.setUsbConnected(isUSBConnected());
        _create.setVolume(getStreamVolume(3));
        _create.setMaxVolume(getStreamMaxVolume(3));
        _create.setDeviceElapsedRealtime(getElapsedRealtime());
        _create.setDeviceUpTime(getUptime());
        _create.setAirplaneMode(getAirplaneMode());
        _create.setChargingType(getChargingType());
        _create.setStayOnWhilePluggedIn(getStayOnWhilePluggedIn());
        _create.setSdCardPresent(getIsSdCardPresent());
        _create.setNetworkCapabilityTransports(getNetworkCapabilityTransports());
        return _create._build();
    }

    private final boolean getAirplaneMode() {
        try {
            if (Settings.Global.getInt(this.context.getContentResolver(), "airplane_mode_on", 0) != 0) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            DeviceLog.error("Problems fetching airplane mode status", th.getMessage());
            return false;
        }
    }

    private final AudioManager getAudioManager() {
        Object systemService = this.context.getSystemService("audio");
        if (systemService instanceof AudioManager) {
            return (AudioManager) systemService;
        }
        return null;
    }

    private final double getBatteryLevel() {
        Intent registerReceiver = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            return registerReceiver.getIntExtra("level", 0) / registerReceiver.getIntExtra("scale", 0);
        }
        return -1.0d;
    }

    private final int getBatteryStatus() {
        Intent registerReceiver = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            return registerReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, 0);
        }
        return -1;
    }

    private final DynamicDeviceInfoOuterClass.ConnectionType getConnectionType() {
        if (isUsingWifi()) {
            return DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_WIFI;
        }
        if (isActiveNetworkConnected()) {
            return DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_CELLULAR;
        }
        return DynamicDeviceInfoOuterClass.ConnectionType.CONNECTION_TYPE_UNSPECIFIED;
    }

    private final ConnectivityManager getConnectivityManager() {
        Object systemService = this.context.getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            return (ConnectivityManager) systemService;
        }
        return null;
    }

    private final long getElapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    private final long getEventTimeStamp() {
        return System.currentTimeMillis() / 1000;
    }

    @Deprecated(message = "Legacy method, migrated from to .getUsableSpace()")
    private final long getFreeSpace(File file) {
        if (file != null && file.exists()) {
            return MathKt.roundToInt((float) (file.getFreeSpace() / 1024));
        }
        return -1L;
    }

    private final String getLanguage() {
        return Locale.getDefault().toString();
    }

    private final long getMemoryInfo(Device.MemoryInfoType memoryInfoType) {
        int i;
        int i2 = WhenMappings.$EnumSwitchMapping$0[memoryInfoType.ordinal()];
        if (i2 != 1) {
            i = 2;
            if (i2 != 2) {
                i = -1;
            }
        } else {
            i = 1;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(DIRECTORY_MEM_INFO, "r");
        String str = null;
        for (int i3 = 0; i3 < i; i3++) {
            try {
                str = randomAccessFile.readLine();
            } finally {
            }
        }
        Unit unit = Unit.INSTANCE;
        CloseableKt.closeFinally(randomAccessFile, null);
        return getMemoryValueFromString(str);
    }

    private final long getMemoryValueFromString(String str) {
        if (str == null) {
            return -1L;
        }
        Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
        String str2 = null;
        while (matcher.find()) {
            str2 = matcher.group(1);
        }
        if (str2 == null) {
            return -1L;
        }
        return Long.parseLong(str2);
    }

    private final boolean getNetworkMetered() {
        ConnectivityManager connectivityManager = getConnectivityManager();
        if (connectivityManager == null || !connectivityManager.isActiveNetworkMetered()) {
            return false;
        }
        return true;
    }

    private final String getNetworkOperator() {
        String str;
        TelephonyManager telephonyManager = getTelephonyManager();
        if (telephonyManager != null) {
            str = telephonyManager.getNetworkOperator();
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    private final String getNetworkOperatorName() {
        String str;
        TelephonyManager telephonyManager = getTelephonyManager();
        if (telephonyManager != null) {
            str = telephonyManager.getNetworkOperatorName();
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @Deprecated(message = "This method was deprecated in API level 30. Use getDataNetworkType()")
    @SuppressLint({"MissingPermission"})
    private final int getNetworkType() {
        Map<String, Boolean> value;
        TelephonyManager telephonyManager = getTelephonyManager();
        if (telephonyManager != null) {
            try {
                return telephonyManager.getNetworkType();
            } catch (SecurityException unused) {
                if (!Intrinsics.areEqual(this.reportedWarning.getValue().get("getNetworkType"), Boolean.TRUE)) {
                    MutableStateFlow<Map<String, Boolean>> mutableStateFlow = this.reportedWarning;
                    do {
                        value = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.compareAndSet(value, MapsKt.plus(value, TuplesKt.to("getNetworkType", Boolean.TRUE))));
                    DeviceLog.warning("Unity Ads was not able to get current network type due to missing permission");
                }
            }
        }
        return -1;
    }

    private final int getScreenHeight() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            return displayMetrics.heightPixels;
        }
        return -1;
    }

    private final int getScreenWidth() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            return displayMetrics.widthPixels;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double getStreamVolume(int i) {
        int i2;
        AudioManager audioManager = getAudioManager();
        if (audioManager != null) {
            i2 = audioManager.getStreamVolume(i);
        } else {
            i2 = -2;
        }
        return i2;
    }

    private final TelephonyManager getTelephonyManager() {
        Object systemService = this.context.getSystemService("phone");
        if (systemService instanceof TelephonyManager) {
            return (TelephonyManager) systemService;
        }
        return null;
    }

    private final String getTimeZone() {
        try {
            return TimeZone.getDefault().getDisplayName(false, 0, Locale.US);
        } catch (AssertionError e) {
            DeviceLog.error("Could not read timeZone information: %s", e.getMessage());
            return "";
        }
    }

    private final long getTimeZoneOffset() {
        return TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 1000;
    }

    private final long getUptime() {
        return SystemClock.uptimeMillis();
    }

    private final long getUsableSpace(File file) {
        if (file != null && file.exists()) {
            return MathKt.roundToInt((float) (file.getUsableSpace() / 1024));
        }
        return -1L;
    }

    private final boolean hasInternetConnection() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = getConnectivityManager();
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            return false;
        }
        return true;
    }

    @RequiresApi(api = 23)
    private final boolean hasInternetConnectionM() {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = getConnectivityManager();
        if (connectivityManager == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork())) == null || !networkCapabilities.hasCapability(12) || !networkCapabilities.hasCapability(16)) {
            return false;
        }
        return true;
    }

    private final boolean isActiveNetworkConnected() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = getConnectivityManager();
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } else {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    private final boolean isAdbEnabled() {
        return adbStatus();
    }

    private final boolean isAppActive() {
        return this.lifecycleDataSource.appIsForeground();
    }

    private final boolean isLimitAdTrackingEnabled() {
        return AdvertisingId.getLimitedAdTracking();
    }

    private final boolean isLimitOpenAdTrackingEnabled() {
        return OpenAdvertisingId.getLimitedOpenAdTracking();
    }

    private final boolean isUSBConnected() {
        Intent registerReceiver = this.context.registerReceiver(null, new IntentFilter(INTENT_USB_STATE));
        if (registerReceiver == null) {
            return false;
        }
        return registerReceiver.getBooleanExtra(USB_EXTRA_CONNECTED, false);
    }

    private final boolean isUsingWifi() {
        ConnectivityManager connectivityManager = getConnectivityManager();
        if (connectivityManager == null) {
            return false;
        }
        TelephonyManager telephonyManager = getTelephonyManager();
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !connectivityManager.getBackgroundDataSetting() || !activeNetworkInfo.isConnected() || telephonyManager == null || activeNetworkInfo.getType() != 1 || !activeNetworkInfo.isConnected()) {
            return false;
        }
        return true;
    }

    private final boolean isWiredHeadsetOn() {
        AudioManager audioManager = getAudioManager();
        if (audioManager == null || !audioManager.isWiredHeadsetOn()) {
            return false;
        }
        return true;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    @NotNull
    public DynamicDeviceInfoOuterClass.DynamicDeviceInfo fetch() {
        DynamicDeviceInfoKt.Dsl _create = DynamicDeviceInfoKt.Dsl.Companion._create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.newBuilder());
        _create.setLanguage(getLanguage());
        _create.setNetworkOperator(getNetworkOperator());
        _create.setNetworkOperatorName(getNetworkOperatorName());
        _create.setFreeDiskSpace(getUsableSpace(this.context.getExternalFilesDir(null)));
        _create.setFreeRamMemory(getFreeMemory());
        _create.setWiredHeadset(isWiredHeadsetOn());
        _create.setTimeZone(getTimeZone());
        _create.setTimeZoneOffset(getTimeZoneOffset());
        _create.setLimitedTracking(isLimitAdTrackingEnabled());
        _create.setLimitedOpenAdTracking(isLimitOpenAdTrackingEnabled());
        _create.setBatteryLevel(getBatteryLevel());
        _create.setBatteryStatus(getBatteryStatus());
        _create.setConnectionType(getConnectionType());
        _create.setAndroid(fetchAndroidDynamicDeviceInfo());
        _create.setAppActive(isAppActive());
        _create.setScreenWidth(getScreenWidth());
        _create.setScreenHeight(getScreenHeight());
        return _create._build();
    }

    public final int getChargingType() {
        Intent registerReceiver = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return -1;
        }
        return registerReceiver.getIntExtra("plugged", -1);
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    @NotNull
    public String getConnectionTypeStr() {
        int i = WhenMappings.$EnumSwitchMapping$1[getConnectionType().ordinal()];
        if (i != 1) {
            if (i != 2) {
                return "none";
            }
            return "cellular";
        }
        return "wifi";
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public int getCurrentUiTheme() {
        return this.context.getResources().getConfiguration().uiMode;
    }

    public final long getFreeMemory() {
        return getMemoryInfo(Device.MemoryInfoType.FREE_MEMORY);
    }

    public final boolean getIsSdCardPresent() {
        return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    @NotNull
    public List<String> getLocaleList() {
        LocaleList locales;
        int size;
        Locale locale;
        int i = 0;
        if (Build.VERSION.SDK_INT >= 24) {
            locales = this.context.getResources().getConfiguration().getLocales();
            size = locales.size();
            ArrayList arrayList = new ArrayList(size);
            while (i < size) {
                locale = locales.get(i);
                arrayList.add(locale.toString());
                i++;
            }
            return arrayList;
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        ArrayList arrayList2 = new ArrayList(availableLocales.length);
        int length = availableLocales.length;
        while (i < length) {
            arrayList2.add(availableLocales[i].toString());
            i++;
        }
        return arrayList2;
    }

    @NotNull
    public final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports getNetworkCapabilityTransports() {
        ConnectivityManager connectivityManager;
        Network activeNetwork;
        NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.Builder newBuilder = NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.newBuilder();
        if (Build.VERSION.SDK_INT < 31) {
            return newBuilder.build();
        }
        Object systemService = this.context.getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            connectivityManager = (ConnectivityManager) systemService;
        } else {
            connectivityManager = null;
        }
        if (connectivityManager != null && (activeNetwork = connectivityManager.getActiveNetwork()) != null) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities == null) {
                return newBuilder.build();
            }
            newBuilder.setWifi(networkCapabilities.hasTransport(1));
            newBuilder.setCellular(networkCapabilities.hasTransport(0));
            newBuilder.setVpn(networkCapabilities.hasTransport(4));
            newBuilder.setEthernet(networkCapabilities.hasTransport(3));
            newBuilder.setWifiAware(networkCapabilities.hasTransport(5));
            newBuilder.setLowpan(networkCapabilities.hasTransport(6));
            newBuilder.setBluetooth(networkCapabilities.hasTransport(2));
            return newBuilder.build();
        }
        return newBuilder.build();
    }

    @NotNull
    public final String getNetworkCountryISO() {
        String str;
        TelephonyManager telephonyManager = getTelephonyManager();
        if (telephonyManager != null) {
            str = telephonyManager.getNetworkCountryIso();
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    @NotNull
    public String getOrientation() {
        if (getScreenHeight() > getScreenWidth()) {
            return "portrait";
        }
        return "landscape";
    }

    @NotNull
    public final Map<String, String> getProcessInfo() {
        HashMap hashMap = new HashMap();
        RandomAccessFile randomAccessFile = new RandomAccessFile(DIRECTORY_PROCESS_INFO, "r");
        try {
            hashMap.put(KEY_STAT_CONTENT, randomAccessFile.readLine());
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(randomAccessFile, null);
            return hashMap;
        } finally {
        }
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public int getRingerMode() {
        AudioManager audioManager = getAudioManager();
        if (audioManager != null) {
            return audioManager.getRingerMode();
        }
        return -2;
    }

    public final int getScreenBrightness() {
        return Settings.System.getInt(this.context.getContentResolver(), "screen_brightness", -1);
    }

    public final boolean getStayOnWhilePluggedIn() {
        try {
            if (Settings.Global.getInt(this.context.getContentResolver(), "stay_on_while_plugged_in", 0) != 0) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            DeviceLog.error("Problems fetching stay on while plugged in status", th.getMessage());
            return false;
        }
    }

    public final double getStreamMaxVolume(int i) {
        int i2;
        AudioManager audioManager = getAudioManager();
        if (audioManager != null) {
            i2 = audioManager.getStreamMaxVolume(i);
        } else {
            i2 = -2;
        }
        return i2;
    }

    public final long getTotalMemory() {
        return getMemoryInfo(Device.MemoryInfoType.TOTAL_MEMORY);
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    @NotNull
    public Flow<VolumeSettingsChange> getVolumeSettingsChange() {
        return this.volumeSettingsChange;
    }

    @Override // com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource
    public boolean hasInternet() {
        return hasInternetConnectionM();
    }
}
