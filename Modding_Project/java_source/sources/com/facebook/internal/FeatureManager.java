package com.facebook.internal;

import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.profileinstaller.ProfileVerifier;
import com.facebook.FacebookSdk;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\u0011\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u0017\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\rJ\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\rR&\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/facebook/internal/FeatureManager;", "", "<init>", "()V", "Lcom/facebook/internal/FeatureManager$Feature;", "feature", "Lcom/facebook/internal/FeatureManager$Callback;", "callback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FeatureManager$Feature;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FeatureManager$Feature;)V", "", "className", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/internal/FeatureManager$Feature;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "", "Ljava/util/Map;", "featureMapping", "Callback", "Feature", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class FeatureManager {
    @NotNull
    public static final FeatureManager INSTANCE = new FeatureManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Feature, String[]> f6659Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FeatureManager$Callback;", "", "", "enabled", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Callback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b'\b\u0086\u0001\u0018\u0000 /2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001/B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.¨\u00060"}, d2 = {"Lcom/facebook/internal/FeatureManager$Feature;", "", "code", "", "(Ljava/lang/String;II)V", "parent", "getParent", "()Lcom/facebook/internal/FeatureManager$Feature;", "toKey", "", "toString", "Unknown", "Core", "AppEvents", "CodelessEvents", "CloudBridge", "RestrictiveDataFiltering", "AAM", "PrivacyProtection", "SuggestedEvents", "IntelligentIntegrity", "ModelRequest", "ProtectedMode", "MACARuleMatching", "BlocklistEvents", "FilterRedactedEvents", "FilterSensitiveParams", "EventDeactivation", "OnDeviceEventProcessing", "OnDevicePostInstallEventProcessing", "IapLogging", "IapLoggingLib2", "Instrument", "CrashReport", "CrashShield", "ThreadCheck", "ErrorReport", "AnrReport", "Monitoring", "ServiceUpdateCompliance", "Megatron", "Elora", "Login", "ChromeCustomTabsPrefetching", "IgnoreAppSwitchToLoggedOut", "BypassAppSwitch", "Share", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Feature {
        Unknown(-1),
        Core(0),
        AppEvents(65536),
        CodelessEvents(65792),
        CloudBridge(67584),
        RestrictiveDataFiltering(66048),
        AAM(66304),
        PrivacyProtection(66560),
        SuggestedEvents(66561),
        IntelligentIntegrity(66562),
        ModelRequest(66563),
        ProtectedMode(66564),
        MACARuleMatching(66565),
        BlocklistEvents(66566),
        FilterRedactedEvents(66567),
        FilterSensitiveParams(66568),
        EventDeactivation(66816),
        OnDeviceEventProcessing(67072),
        OnDevicePostInstallEventProcessing(67073),
        IapLogging(67328),
        IapLoggingLib2(67329),
        Instrument(131072),
        CrashReport(131328),
        CrashShield(131329),
        ThreadCheck(131330),
        ErrorReport(131584),
        AnrReport(131840),
        Monitoring(ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE),
        ServiceUpdateCompliance(196864),
        Megatron(262144),
        Elora(ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED),
        Login(16777216),
        ChromeCustomTabsPrefetching(16842752),
        IgnoreAppSwitchToLoggedOut(16908288),
        BypassAppSwitch(16973824),
        Share(TPMediaCodecProfileLevel.HEVCHighTierLevel62);
        
        @NotNull
        public static final Companion Companion = new Companion(null);
        private final int code;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/internal/FeatureManager$Feature$Companion;", "", "<init>", "()V", "", "code", "Lcom/facebook/internal/FeatureManager$Feature;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lcom/facebook/internal/FeatureManager$Feature;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Feature Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
                Feature[] valuesCustom = Feature.valuesCustom();
                int length = valuesCustom.length;
                int i2 = 0;
                while (i2 < length) {
                    Feature feature = valuesCustom[i2];
                    i2++;
                    if (feature.code == i) {
                        return feature;
                    }
                }
                return Feature.Unknown;
            }

            public Companion() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Feature.valuesCustom().length];
                iArr[Feature.Core.ordinal()] = 1;
                iArr[Feature.AppEvents.ordinal()] = 2;
                iArr[Feature.CodelessEvents.ordinal()] = 3;
                iArr[Feature.RestrictiveDataFiltering.ordinal()] = 4;
                iArr[Feature.Instrument.ordinal()] = 5;
                iArr[Feature.CrashReport.ordinal()] = 6;
                iArr[Feature.CrashShield.ordinal()] = 7;
                iArr[Feature.ThreadCheck.ordinal()] = 8;
                iArr[Feature.ErrorReport.ordinal()] = 9;
                iArr[Feature.AnrReport.ordinal()] = 10;
                iArr[Feature.AAM.ordinal()] = 11;
                iArr[Feature.CloudBridge.ordinal()] = 12;
                iArr[Feature.PrivacyProtection.ordinal()] = 13;
                iArr[Feature.SuggestedEvents.ordinal()] = 14;
                iArr[Feature.IntelligentIntegrity.ordinal()] = 15;
                iArr[Feature.ProtectedMode.ordinal()] = 16;
                iArr[Feature.MACARuleMatching.ordinal()] = 17;
                iArr[Feature.BlocklistEvents.ordinal()] = 18;
                iArr[Feature.FilterRedactedEvents.ordinal()] = 19;
                iArr[Feature.FilterSensitiveParams.ordinal()] = 20;
                iArr[Feature.ModelRequest.ordinal()] = 21;
                iArr[Feature.EventDeactivation.ordinal()] = 22;
                iArr[Feature.OnDeviceEventProcessing.ordinal()] = 23;
                iArr[Feature.OnDevicePostInstallEventProcessing.ordinal()] = 24;
                iArr[Feature.IapLogging.ordinal()] = 25;
                iArr[Feature.IapLoggingLib2.ordinal()] = 26;
                iArr[Feature.Monitoring.ordinal()] = 27;
                iArr[Feature.Megatron.ordinal()] = 28;
                iArr[Feature.Elora.ordinal()] = 29;
                iArr[Feature.ServiceUpdateCompliance.ordinal()] = 30;
                iArr[Feature.Login.ordinal()] = 31;
                iArr[Feature.ChromeCustomTabsPrefetching.ordinal()] = 32;
                iArr[Feature.IgnoreAppSwitchToLoggedOut.ordinal()] = 33;
                iArr[Feature.BypassAppSwitch.ordinal()] = 34;
                iArr[Feature.Share.ordinal()] = 35;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        Feature(int i) {
            this.code = i;
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Feature[] valuesCustom() {
            Feature[] valuesCustom = values();
            return (Feature[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @NotNull
        public final Feature getParent() {
            int i = this.code;
            if ((i & 255) > 0) {
                return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i & (-256));
            }
            if ((65280 & i) > 0) {
                return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i & SupportMenu.CATEGORY_MASK);
            }
            if ((16711680 & i) > 0) {
                return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i & ViewCompat.MEASURED_STATE_MASK);
            }
            return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
        }

        @NotNull
        public final String toKey() {
            return Intrinsics.stringPlus("FBSDKFeature", this);
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                    return "CoreKit";
                case 2:
                    return "AppEvents";
                case 3:
                    return "CodelessEvents";
                case 4:
                    return "RestrictiveDataFiltering";
                case 5:
                    return "Instrument";
                case 6:
                    return "CrashReport";
                case 7:
                    return "CrashShield";
                case 8:
                    return "ThreadCheck";
                case 9:
                    return "ErrorReport";
                case 10:
                    return "AnrReport";
                case 11:
                    return "AAM";
                case 12:
                    return "AppEventsCloudbridge";
                case 13:
                    return "PrivacyProtection";
                case 14:
                    return "SuggestedEvents";
                case 15:
                    return "IntelligentIntegrity";
                case 16:
                    return "ProtectedMode";
                case 17:
                    return "MACARuleMatching";
                case 18:
                    return "BlocklistEvents";
                case 19:
                    return "FilterRedactedEvents";
                case 20:
                    return "FilterSensitiveParams";
                case 21:
                    return "ModelRequest";
                case 22:
                    return "EventDeactivation";
                case 23:
                    return "OnDeviceEventProcessing";
                case 24:
                    return "OnDevicePostInstallEventProcessing";
                case 25:
                    return "IAPLogging";
                case 26:
                    return "IAPLoggingLib2";
                case 27:
                    return "Monitoring";
                case 28:
                    return "Megatron";
                case 29:
                    return "Elora";
                case 30:
                    return "ServiceUpdateCompliance";
                case 31:
                    return "LoginKit";
                case 32:
                    return "ChromeCustomTabsPrefetching";
                case 33:
                    return "IgnoreAppSwitchToLoggedOut";
                case 34:
                    return "BypassAppSwitch";
                case 35:
                    return "ShareKit";
                default:
                    return "unknown";
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Feature.valuesCustom().length];
            iArr[Feature.RestrictiveDataFiltering.ordinal()] = 1;
            iArr[Feature.Instrument.ordinal()] = 2;
            iArr[Feature.CrashReport.ordinal()] = 3;
            iArr[Feature.CrashShield.ordinal()] = 4;
            iArr[Feature.ThreadCheck.ordinal()] = 5;
            iArr[Feature.ErrorReport.ordinal()] = 6;
            iArr[Feature.AnrReport.ordinal()] = 7;
            iArr[Feature.AAM.ordinal()] = 8;
            iArr[Feature.CloudBridge.ordinal()] = 9;
            iArr[Feature.PrivacyProtection.ordinal()] = 10;
            iArr[Feature.SuggestedEvents.ordinal()] = 11;
            iArr[Feature.IntelligentIntegrity.ordinal()] = 12;
            iArr[Feature.ModelRequest.ordinal()] = 13;
            iArr[Feature.EventDeactivation.ordinal()] = 14;
            iArr[Feature.OnDeviceEventProcessing.ordinal()] = 15;
            iArr[Feature.OnDevicePostInstallEventProcessing.ordinal()] = 16;
            iArr[Feature.IapLogging.ordinal()] = 17;
            iArr[Feature.IapLoggingLib2.ordinal()] = 18;
            iArr[Feature.ProtectedMode.ordinal()] = 19;
            iArr[Feature.MACARuleMatching.ordinal()] = 20;
            iArr[Feature.BlocklistEvents.ordinal()] = 21;
            iArr[Feature.FilterRedactedEvents.ordinal()] = 22;
            iArr[Feature.FilterSensitiveParams.ordinal()] = 23;
            iArr[Feature.ChromeCustomTabsPrefetching.ordinal()] = 24;
            iArr[Feature.Monitoring.ordinal()] = 25;
            iArr[Feature.IgnoreAppSwitchToLoggedOut.ordinal()] = 26;
            iArr[Feature.BypassAppSwitch.ordinal()] = 27;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Feature feature) {
        if (Feature.Unknown == feature) {
            return false;
        }
        if (Feature.Core == feature) {
            return true;
        }
        String string = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).getString(feature.toKey(), null);
        if (string != null && Intrinsics.areEqual(string, FacebookSdk.Wwwwww())) {
            return false;
        }
        Feature parent = feature.getParent();
        if (parent == feature) {
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(feature);
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww(parent) || !INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(feature)) {
            return false;
        }
        return true;
    }

    @JvmStatic
    @NotNull
    public static final Feature Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        for (Map.Entry<Feature, String[]> entry : f6659Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
            Feature key = entry.getKey();
            String[] value = entry.getValue();
            int length = value.length;
            int i = 0;
            while (i < length) {
                String str2 = value[i];
                i++;
                if (StringsKt.startsWith$default(str, str2, false, 2, (Object) null)) {
                    return key;
                }
            }
        }
        return Feature.Unknown;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Feature feature) {
        FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).edit().putString(feature.toKey(), FacebookSdk.Wwwwww()).apply();
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Feature feature, @NotNull final Callback callback) {
        FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
        FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new FetchedAppGateKeepersManager.Callback() { // from class: com.facebook.internal.FeatureManager$checkFeature$1
            @Override // com.facebook.internal.FetchedAppGateKeepersManager.Callback
            public void onCompleted() {
                FeatureManager.Callback callback2 = FeatureManager.Callback.this;
                FeatureManager featureManager = FeatureManager.INSTANCE;
                callback2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(feature));
            }
        });
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Map<Feature, String[]> map = f6659Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (!map.isEmpty()) {
            return;
        }
        map.put(Feature.AAM, new String[]{"com.facebook.appevents.aam."});
        map.put(Feature.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
        map.put(Feature.CloudBridge, new String[]{"com.facebook.appevents.cloudbridge."});
        map.put(Feature.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
        map.put(Feature.AnrReport, new String[]{"com.facebook.internal.instrument.anrreport."});
        map.put(Feature.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
        map.put(Feature.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
        map.put(Feature.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
        map.put(Feature.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
        map.put(Feature.ProtectedMode, new String[]{"com.facebook.appevents.integrity.ProtectedModeManager"});
        map.put(Feature.MACARuleMatching, new String[]{"com.facebook.appevents.integrity.MACARuleMatchingManager"});
        map.put(Feature.BlocklistEvents, new String[]{"com.facebook.appevents.integrity.BlocklistEventsManager"});
        map.put(Feature.FilterRedactedEvents, new String[]{"com.facebook.appevents.integrity.RedactedEventsManager"});
        map.put(Feature.FilterSensitiveParams, new String[]{"com.facebook.appevents.integrity.SensitiveParamsManager"});
        map.put(Feature.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
        map.put(Feature.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
        map.put(Feature.IapLogging, new String[]{"com.facebook.appevents.iap."});
        map.put(Feature.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Feature feature) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(feature);
        FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
        return FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(feature.toKey(), FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Feature feature) {
        switch (WhenMappings.$EnumSwitchMapping$0[feature.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
                return false;
            default:
                return true;
        }
    }
}
