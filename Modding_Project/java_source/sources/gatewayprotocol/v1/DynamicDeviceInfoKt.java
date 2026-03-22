package gatewayprotocol.v1;

import com.google.ads.mediation.vungle.VungleConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\nJ*\u0010\u000b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt;", "", "()V", "android", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeandroid", "ios", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;", "-initializeios", "AndroidKt", "Dsl", "IosKt", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDynamicDeviceInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicDeviceInfoKt.kt\ngatewayprotocol/v1/DynamicDeviceInfoKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1533:1\n1#2:1534\n*E\n"})
/* loaded from: classes6.dex */
public final class DynamicDeviceInfoKt {
    @NotNull
    public static final DynamicDeviceInfoKt INSTANCE = new DynamicDeviceInfoKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class AndroidKt {
        @NotNull
        public static final AndroidKt INSTANCE = new AndroidKt();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001f\b\u0007\u0018\u0000 c2\u00020\u0001:\u0001cB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010B\u001a\u00020CH\u0001J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ\u0006\u0010G\u001a\u00020EJ\u0006\u0010H\u001a\u00020EJ\u0006\u0010I\u001a\u00020EJ\u0006\u0010J\u001a\u00020EJ\u0006\u0010K\u001a\u00020EJ\u0006\u0010L\u001a\u00020EJ\u0006\u0010M\u001a\u00020EJ\u0006\u0010N\u001a\u00020EJ\u0006\u0010O\u001a\u00020EJ\u0006\u0010P\u001a\u00020EJ\u0006\u0010Q\u001a\u00020EJ\u0006\u0010R\u001a\u00020EJ\u0006\u0010S\u001a\u00020EJ\u0006\u0010T\u001a\u00020\u0006J\u0006\u0010U\u001a\u00020\u0006J\u0006\u0010V\u001a\u00020\u0006J\u0006\u0010W\u001a\u00020\u0006J\u0006\u0010X\u001a\u00020\u0006J\u0006\u0010Y\u001a\u00020\u0006J\u0006\u0010Z\u001a\u00020\u0006J\u0006\u0010[\u001a\u00020\u0006J\u0006\u0010\\\u001a\u00020\u0006J\u0006\u0010]\u001a\u00020\u0006J\u0006\u0010^\u001a\u00020\u0006J\u0006\u0010_\u001a\u00020\u0006J\u0006\u0010`\u001a\u00020\u0006J\u0006\u0010a\u001a\u00020\u0006J\u0006\u0010b\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR$\u0010-\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\t\"\u0004\b/\u0010\u000bR$\u00100\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\u0012\"\u0004\b2\u0010\u0014R$\u00103\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\t\"\u0004\b5\u0010\u000bR$\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\t\"\u0004\b8\u0010\u000bR$\u00109\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\u0012\"\u0004\b;\u0010\u0014R$\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010\t\"\u0004\b>\u0010\u000bR$\u0010?\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010!\"\u0004\bA\u0010#¨\u0006d"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;)V", "value", "", "adbEnabled", "getAdbEnabled", "()Z", "setAdbEnabled", "(Z)V", "airplaneMode", "getAirplaneMode", "setAirplaneMode", "", "chargingType", "getChargingType", "()I", "setChargingType", "(I)V", "", "deviceElapsedRealtime", "getDeviceElapsedRealtime", "()J", "setDeviceElapsedRealtime", "(J)V", "deviceUpTime", "getDeviceUpTime", "setDeviceUpTime", "", "maxVolume", "getMaxVolume", "()D", "setMaxVolume", "(D)V", "Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;", "networkCapabilityTransports", "getNetworkCapabilityTransports", "()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;", "setNetworkCapabilityTransports", "(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;)V", "networkConnected", "getNetworkConnected", "setNetworkConnected", "networkMetered", "getNetworkMetered", "setNetworkMetered", "networkType", "getNetworkType", "setNetworkType", "sdCardPresent", "getSdCardPresent", "setSdCardPresent", "stayOnWhilePluggedIn", "getStayOnWhilePluggedIn", "setStayOnWhilePluggedIn", "telephonyManagerNetworkType", "getTelephonyManagerNetworkType", "setTelephonyManagerNetworkType", "usbConnected", "getUsbConnected", "setUsbConnected", "volume", "getVolume", "setVolume", "_build", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "clearAdbEnabled", "", "clearAirplaneMode", "clearChargingType", "clearDeviceElapsedRealtime", "clearDeviceUpTime", "clearMaxVolume", "clearNetworkCapabilityTransports", "clearNetworkConnected", "clearNetworkMetered", "clearNetworkType", "clearSdCardPresent", "clearStayOnWhilePluggedIn", "clearTelephonyManagerNetworkType", "clearUsbConnected", "clearVolume", "hasAdbEnabled", "hasAirplaneMode", "hasChargingType", "hasDeviceElapsedRealtime", "hasDeviceUpTime", "hasMaxVolume", "hasNetworkCapabilityTransports", "hasNetworkConnected", "hasNetworkMetered", "hasNetworkType", "hasSdCardPresent", "hasStayOnWhilePluggedIn", "hasTelephonyManagerNetworkType", "hasUsbConnected", "hasVolume", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @ProtoDslMarker
        /* loaded from: classes6.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder _builder;

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;", "builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @PublishedApi
                public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builder) {
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            @PublishedApi
            public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android _build() {
                return this._builder.build();
            }

            public final void clearAdbEnabled() {
                this._builder.clearAdbEnabled();
            }

            public final void clearAirplaneMode() {
                this._builder.clearAirplaneMode();
            }

            public final void clearChargingType() {
                this._builder.clearChargingType();
            }

            public final void clearDeviceElapsedRealtime() {
                this._builder.clearDeviceElapsedRealtime();
            }

            public final void clearDeviceUpTime() {
                this._builder.clearDeviceUpTime();
            }

            public final void clearMaxVolume() {
                this._builder.clearMaxVolume();
            }

            public final void clearNetworkCapabilityTransports() {
                this._builder.clearNetworkCapabilityTransports();
            }

            public final void clearNetworkConnected() {
                this._builder.clearNetworkConnected();
            }

            public final void clearNetworkMetered() {
                this._builder.clearNetworkMetered();
            }

            public final void clearNetworkType() {
                this._builder.clearNetworkType();
            }

            public final void clearSdCardPresent() {
                this._builder.clearSdCardPresent();
            }

            public final void clearStayOnWhilePluggedIn() {
                this._builder.clearStayOnWhilePluggedIn();
            }

            public final void clearTelephonyManagerNetworkType() {
                this._builder.clearTelephonyManagerNetworkType();
            }

            public final void clearUsbConnected() {
                this._builder.clearUsbConnected();
            }

            public final void clearVolume() {
                this._builder.clearVolume();
            }

            @JvmName(name = "getAdbEnabled")
            public final boolean getAdbEnabled() {
                return this._builder.getAdbEnabled();
            }

            @JvmName(name = "getAirplaneMode")
            public final boolean getAirplaneMode() {
                return this._builder.getAirplaneMode();
            }

            @JvmName(name = "getChargingType")
            public final int getChargingType() {
                return this._builder.getChargingType();
            }

            @JvmName(name = "getDeviceElapsedRealtime")
            public final long getDeviceElapsedRealtime() {
                return this._builder.getDeviceElapsedRealtime();
            }

            @JvmName(name = "getDeviceUpTime")
            public final long getDeviceUpTime() {
                return this._builder.getDeviceUpTime();
            }

            @JvmName(name = "getMaxVolume")
            public final double getMaxVolume() {
                return this._builder.getMaxVolume();
            }

            @JvmName(name = "getNetworkCapabilityTransports")
            @NotNull
            public final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports getNetworkCapabilityTransports() {
                return this._builder.getNetworkCapabilityTransports();
            }

            @JvmName(name = "getNetworkConnected")
            public final boolean getNetworkConnected() {
                return this._builder.getNetworkConnected();
            }

            @JvmName(name = "getNetworkMetered")
            public final boolean getNetworkMetered() {
                return this._builder.getNetworkMetered();
            }

            @JvmName(name = "getNetworkType")
            public final int getNetworkType() {
                return this._builder.getNetworkType();
            }

            @JvmName(name = "getSdCardPresent")
            public final boolean getSdCardPresent() {
                return this._builder.getSdCardPresent();
            }

            @JvmName(name = "getStayOnWhilePluggedIn")
            public final boolean getStayOnWhilePluggedIn() {
                return this._builder.getStayOnWhilePluggedIn();
            }

            @JvmName(name = "getTelephonyManagerNetworkType")
            public final int getTelephonyManagerNetworkType() {
                return this._builder.getTelephonyManagerNetworkType();
            }

            @JvmName(name = "getUsbConnected")
            public final boolean getUsbConnected() {
                return this._builder.getUsbConnected();
            }

            @JvmName(name = "getVolume")
            public final double getVolume() {
                return this._builder.getVolume();
            }

            public final boolean hasAdbEnabled() {
                return this._builder.hasAdbEnabled();
            }

            public final boolean hasAirplaneMode() {
                return this._builder.hasAirplaneMode();
            }

            public final boolean hasChargingType() {
                return this._builder.hasChargingType();
            }

            public final boolean hasDeviceElapsedRealtime() {
                return this._builder.hasDeviceElapsedRealtime();
            }

            public final boolean hasDeviceUpTime() {
                return this._builder.hasDeviceUpTime();
            }

            public final boolean hasMaxVolume() {
                return this._builder.hasMaxVolume();
            }

            public final boolean hasNetworkCapabilityTransports() {
                return this._builder.hasNetworkCapabilityTransports();
            }

            public final boolean hasNetworkConnected() {
                return this._builder.hasNetworkConnected();
            }

            public final boolean hasNetworkMetered() {
                return this._builder.hasNetworkMetered();
            }

            public final boolean hasNetworkType() {
                return this._builder.hasNetworkType();
            }

            public final boolean hasSdCardPresent() {
                return this._builder.hasSdCardPresent();
            }

            public final boolean hasStayOnWhilePluggedIn() {
                return this._builder.hasStayOnWhilePluggedIn();
            }

            public final boolean hasTelephonyManagerNetworkType() {
                return this._builder.hasTelephonyManagerNetworkType();
            }

            public final boolean hasUsbConnected() {
                return this._builder.hasUsbConnected();
            }

            public final boolean hasVolume() {
                return this._builder.hasVolume();
            }

            @JvmName(name = "setAdbEnabled")
            public final void setAdbEnabled(boolean z) {
                this._builder.setAdbEnabled(z);
            }

            @JvmName(name = "setAirplaneMode")
            public final void setAirplaneMode(boolean z) {
                this._builder.setAirplaneMode(z);
            }

            @JvmName(name = "setChargingType")
            public final void setChargingType(int i) {
                this._builder.setChargingType(i);
            }

            @JvmName(name = "setDeviceElapsedRealtime")
            public final void setDeviceElapsedRealtime(long j) {
                this._builder.setDeviceElapsedRealtime(j);
            }

            @JvmName(name = "setDeviceUpTime")
            public final void setDeviceUpTime(long j) {
                this._builder.setDeviceUpTime(j);
            }

            @JvmName(name = "setMaxVolume")
            public final void setMaxVolume(double d) {
                this._builder.setMaxVolume(d);
            }

            @JvmName(name = "setNetworkCapabilityTransports")
            public final void setNetworkCapabilityTransports(@NotNull NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransports) {
                this._builder.setNetworkCapabilityTransports(networkCapabilityTransports);
            }

            @JvmName(name = "setNetworkConnected")
            public final void setNetworkConnected(boolean z) {
                this._builder.setNetworkConnected(z);
            }

            @JvmName(name = "setNetworkMetered")
            public final void setNetworkMetered(boolean z) {
                this._builder.setNetworkMetered(z);
            }

            @JvmName(name = "setNetworkType")
            public final void setNetworkType(int i) {
                this._builder.setNetworkType(i);
            }

            @JvmName(name = "setSdCardPresent")
            public final void setSdCardPresent(boolean z) {
                this._builder.setSdCardPresent(z);
            }

            @JvmName(name = "setStayOnWhilePluggedIn")
            public final void setStayOnWhilePluggedIn(boolean z) {
                this._builder.setStayOnWhilePluggedIn(z);
            }

            @JvmName(name = "setTelephonyManagerNetworkType")
            public final void setTelephonyManagerNetworkType(int i) {
                this._builder.setTelephonyManagerNetworkType(i);
            }

            @JvmName(name = "setUsbConnected")
            public final void setUsbConnected(boolean z) {
                this._builder.setUsbConnected(z);
            }

            @JvmName(name = "setVolume")
            public final void setVolume(double d) {
                this._builder.setVolume(d);
            }

            private Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builder) {
                this._builder = builder;
            }
        }

        private AndroidKt() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b*\b\u0007\u0018\u0000 \u008d\u00012\u00020\u0001:\u0002\u008d\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010a\u001a\u00020bH\u0001J\u0006\u0010c\u001a\u00020dJ\u0006\u0010e\u001a\u00020dJ\u0006\u0010f\u001a\u00020dJ\u0006\u0010g\u001a\u00020dJ\u0006\u0010h\u001a\u00020dJ\u0006\u0010i\u001a\u00020dJ\u0006\u0010j\u001a\u00020dJ\u0006\u0010k\u001a\u00020dJ\u0006\u0010l\u001a\u00020dJ\u0006\u0010m\u001a\u00020dJ\u0006\u0010n\u001a\u00020dJ\u0006\u0010o\u001a\u00020dJ\u0006\u0010p\u001a\u00020dJ\u0006\u0010q\u001a\u00020dJ\u0006\u0010r\u001a\u00020dJ\u0006\u0010s\u001a\u00020dJ\u0006\u0010t\u001a\u00020dJ\u0006\u0010u\u001a\u00020dJ\u0006\u0010v\u001a\u00020dJ\u0006\u0010w\u001a\u00020dJ\u0006\u0010x\u001a\u00020dJ\u0006\u0010y\u001a\u00020\fJ\u0006\u0010z\u001a\u00020\fJ\u0006\u0010{\u001a\u00020\fJ\u0006\u0010|\u001a\u00020\fJ\u0006\u0010}\u001a\u00020\fJ\u0006\u0010~\u001a\u00020\fJ\u0006\u0010\u007f\u001a\u00020\fJ\u0007\u0010\u0080\u0001\u001a\u00020\fJ\u0007\u0010\u0081\u0001\u001a\u00020\fJ\u0007\u0010\u0082\u0001\u001a\u00020\fJ\u0007\u0010\u0083\u0001\u001a\u00020\fJ\u0007\u0010\u0084\u0001\u001a\u00020\fJ\u0007\u0010\u0085\u0001\u001a\u00020\fJ\u0007\u0010\u0086\u0001\u001a\u00020\fJ\u0007\u0010\u0087\u0001\u001a\u00020\fJ\u0007\u0010\u0088\u0001\u001a\u00020\fJ\u0007\u0010\u0089\u0001\u001a\u00020\fJ\u0007\u0010\u008a\u0001\u001a\u00020\fJ\u0007\u0010\u008b\u0001\u001a\u00020\fJ\u0007\u0010\u008c\u0001\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u001b\"\u0004\b&\u0010\u001dR$\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020'8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R$\u0010-\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020'8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010*\"\u0004\b/\u0010,R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010<\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010\u000f\"\u0004\b>\u0010\u0011R$\u0010?\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010\u000f\"\u0004\bA\u0010\u0011R$\u0010B\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u0010\u000f\"\u0004\bD\u0010\u0011R$\u0010E\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bF\u00109\"\u0004\bG\u0010;R$\u0010H\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bI\u00109\"\u0004\bJ\u0010;R\u0011\u0010K\u001a\u00020L8G¢\u0006\u0006\u001a\u0004\bM\u0010NR$\u0010O\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bP\u0010\u001b\"\u0004\bQ\u0010\u001dR$\u0010R\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bS\u0010\u001b\"\u0004\bT\u0010\u001dR$\u0010U\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bV\u00109\"\u0004\bW\u0010;R$\u0010X\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020'8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bY\u0010*\"\u0004\bZ\u0010,R$\u0010[\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\\\u00109\"\u0004\b]\u0010;R$\u0010^\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b_\u0010\u000f\"\u0004\b`\u0010\u0011¨\u0006\u008e\u0001"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)V", "value", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "android", "getAndroid", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "setAndroid", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;)V", "", "appActive", "getAppActive", "()Z", "setAppActive", "(Z)V", "", "batteryLevel", "getBatteryLevel", "()D", "setBatteryLevel", "(D)V", "", "batteryStatus", "getBatteryStatus", "()I", "setBatteryStatus", "(I)V", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "connectionType", "getConnectionType", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "setConnectionType", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$ConnectionType;)V", "connectionTypeValue", "getConnectionTypeValue", "setConnectionTypeValue", "", "freeDiskSpace", "getFreeDiskSpace", "()J", "setFreeDiskSpace", "(J)V", "freeRamMemory", "getFreeRamMemory", "setFreeRamMemory", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "ios", "getIos", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "setIos", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;)V", "", "language", "getLanguage", "()Ljava/lang/String;", "setLanguage", "(Ljava/lang/String;)V", "limitedOpenAdTracking", "getLimitedOpenAdTracking", "setLimitedOpenAdTracking", "limitedTracking", "getLimitedTracking", "setLimitedTracking", "lowPowerMode", "getLowPowerMode", "setLowPowerMode", "networkOperator", "getNetworkOperator", "setNetworkOperator", "networkOperatorName", "getNetworkOperatorName", "setNetworkOperatorName", "platformSpecificCase", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$PlatformSpecificCase;", "getPlatformSpecificCase", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$PlatformSpecificCase;", "screenHeight", "getScreenHeight", "setScreenHeight", "screenWidth", "getScreenWidth", "setScreenWidth", RemoteConfigConstants.RequestFieldKey.TIME_ZONE, "getTimeZone", "setTimeZone", "timeZoneOffset", "getTimeZoneOffset", "setTimeZoneOffset", VungleConstants.KEY_USER_ID, "getUserId", "setUserId", "wiredHeadset", "getWiredHeadset", "setWiredHeadset", "_build", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "clearAndroid", "", "clearAppActive", "clearBatteryLevel", "clearBatteryStatus", "clearConnectionType", "clearFreeDiskSpace", "clearFreeRamMemory", "clearIos", "clearLanguage", "clearLimitedOpenAdTracking", "clearLimitedTracking", "clearLowPowerMode", "clearNetworkOperator", "clearNetworkOperatorName", "clearPlatformSpecific", "clearScreenHeight", "clearScreenWidth", "clearTimeZone", "clearTimeZoneOffset", "clearUserId", "clearWiredHeadset", "hasAndroid", "hasAppActive", "hasBatteryLevel", "hasBatteryStatus", "hasConnectionType", "hasFreeDiskSpace", "hasFreeRamMemory", "hasIos", "hasLanguage", "hasLimitedOpenAdTracking", "hasLimitedTracking", "hasLowPowerMode", "hasNetworkOperator", "hasNetworkOperatorName", "hasScreenHeight", "hasScreenWidth", "hasTimeZone", "hasTimeZoneOffset", "hasUserId", "hasWiredHeadset", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$Dsl;", "builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo _build() {
            return this._builder.build();
        }

        public final void clearAndroid() {
            this._builder.clearAndroid();
        }

        public final void clearAppActive() {
            this._builder.clearAppActive();
        }

        public final void clearBatteryLevel() {
            this._builder.clearBatteryLevel();
        }

        public final void clearBatteryStatus() {
            this._builder.clearBatteryStatus();
        }

        public final void clearConnectionType() {
            this._builder.clearConnectionType();
        }

        public final void clearFreeDiskSpace() {
            this._builder.clearFreeDiskSpace();
        }

        public final void clearFreeRamMemory() {
            this._builder.clearFreeRamMemory();
        }

        public final void clearIos() {
            this._builder.clearIos();
        }

        public final void clearLanguage() {
            this._builder.clearLanguage();
        }

        public final void clearLimitedOpenAdTracking() {
            this._builder.clearLimitedOpenAdTracking();
        }

        public final void clearLimitedTracking() {
            this._builder.clearLimitedTracking();
        }

        public final void clearLowPowerMode() {
            this._builder.clearLowPowerMode();
        }

        public final void clearNetworkOperator() {
            this._builder.clearNetworkOperator();
        }

        public final void clearNetworkOperatorName() {
            this._builder.clearNetworkOperatorName();
        }

        public final void clearPlatformSpecific() {
            this._builder.clearPlatformSpecific();
        }

        public final void clearScreenHeight() {
            this._builder.clearScreenHeight();
        }

        public final void clearScreenWidth() {
            this._builder.clearScreenWidth();
        }

        public final void clearTimeZone() {
            this._builder.clearTimeZone();
        }

        public final void clearTimeZoneOffset() {
            this._builder.clearTimeZoneOffset();
        }

        public final void clearUserId() {
            this._builder.clearUserId();
        }

        public final void clearWiredHeadset() {
            this._builder.clearWiredHeadset();
        }

        @JvmName(name = "getAndroid")
        @NotNull
        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android getAndroid() {
            return this._builder.getAndroid();
        }

        @JvmName(name = "getAppActive")
        public final boolean getAppActive() {
            return this._builder.getAppActive();
        }

        @JvmName(name = "getBatteryLevel")
        public final double getBatteryLevel() {
            return this._builder.getBatteryLevel();
        }

        @JvmName(name = "getBatteryStatus")
        public final int getBatteryStatus() {
            return this._builder.getBatteryStatus();
        }

        @JvmName(name = "getConnectionType")
        @NotNull
        public final DynamicDeviceInfoOuterClass.ConnectionType getConnectionType() {
            return this._builder.getConnectionType();
        }

        @JvmName(name = "getConnectionTypeValue")
        public final int getConnectionTypeValue() {
            return this._builder.getConnectionTypeValue();
        }

        @JvmName(name = "getFreeDiskSpace")
        public final long getFreeDiskSpace() {
            return this._builder.getFreeDiskSpace();
        }

        @JvmName(name = "getFreeRamMemory")
        public final long getFreeRamMemory() {
            return this._builder.getFreeRamMemory();
        }

        @JvmName(name = "getIos")
        @NotNull
        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios getIos() {
            return this._builder.getIos();
        }

        @JvmName(name = "getLanguage")
        @NotNull
        public final String getLanguage() {
            return this._builder.getLanguage();
        }

        @JvmName(name = "getLimitedOpenAdTracking")
        public final boolean getLimitedOpenAdTracking() {
            return this._builder.getLimitedOpenAdTracking();
        }

        @JvmName(name = "getLimitedTracking")
        public final boolean getLimitedTracking() {
            return this._builder.getLimitedTracking();
        }

        @JvmName(name = "getLowPowerMode")
        public final boolean getLowPowerMode() {
            return this._builder.getLowPowerMode();
        }

        @JvmName(name = "getNetworkOperator")
        @NotNull
        public final String getNetworkOperator() {
            return this._builder.getNetworkOperator();
        }

        @JvmName(name = "getNetworkOperatorName")
        @NotNull
        public final String getNetworkOperatorName() {
            return this._builder.getNetworkOperatorName();
        }

        @JvmName(name = "getPlatformSpecificCase")
        @NotNull
        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.PlatformSpecificCase getPlatformSpecificCase() {
            return this._builder.getPlatformSpecificCase();
        }

        @JvmName(name = "getScreenHeight")
        public final int getScreenHeight() {
            return this._builder.getScreenHeight();
        }

        @JvmName(name = "getScreenWidth")
        public final int getScreenWidth() {
            return this._builder.getScreenWidth();
        }

        @JvmName(name = "getTimeZone")
        @NotNull
        public final String getTimeZone() {
            return this._builder.getTimeZone();
        }

        @JvmName(name = "getTimeZoneOffset")
        public final long getTimeZoneOffset() {
            return this._builder.getTimeZoneOffset();
        }

        @JvmName(name = "getUserId")
        @NotNull
        public final String getUserId() {
            return this._builder.getUserId();
        }

        @JvmName(name = "getWiredHeadset")
        public final boolean getWiredHeadset() {
            return this._builder.getWiredHeadset();
        }

        public final boolean hasAndroid() {
            return this._builder.hasAndroid();
        }

        public final boolean hasAppActive() {
            return this._builder.hasAppActive();
        }

        public final boolean hasBatteryLevel() {
            return this._builder.hasBatteryLevel();
        }

        public final boolean hasBatteryStatus() {
            return this._builder.hasBatteryStatus();
        }

        public final boolean hasConnectionType() {
            return this._builder.hasConnectionType();
        }

        public final boolean hasFreeDiskSpace() {
            return this._builder.hasFreeDiskSpace();
        }

        public final boolean hasFreeRamMemory() {
            return this._builder.hasFreeRamMemory();
        }

        public final boolean hasIos() {
            return this._builder.hasIos();
        }

        public final boolean hasLanguage() {
            return this._builder.hasLanguage();
        }

        public final boolean hasLimitedOpenAdTracking() {
            return this._builder.hasLimitedOpenAdTracking();
        }

        public final boolean hasLimitedTracking() {
            return this._builder.hasLimitedTracking();
        }

        public final boolean hasLowPowerMode() {
            return this._builder.hasLowPowerMode();
        }

        public final boolean hasNetworkOperator() {
            return this._builder.hasNetworkOperator();
        }

        public final boolean hasNetworkOperatorName() {
            return this._builder.hasNetworkOperatorName();
        }

        public final boolean hasScreenHeight() {
            return this._builder.hasScreenHeight();
        }

        public final boolean hasScreenWidth() {
            return this._builder.hasScreenWidth();
        }

        public final boolean hasTimeZone() {
            return this._builder.hasTimeZone();
        }

        public final boolean hasTimeZoneOffset() {
            return this._builder.hasTimeZoneOffset();
        }

        public final boolean hasUserId() {
            return this._builder.hasUserId();
        }

        public final boolean hasWiredHeadset() {
            return this._builder.hasWiredHeadset();
        }

        @JvmName(name = "setAndroid")
        public final void setAndroid(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android android2) {
            this._builder.setAndroid(android2);
        }

        @JvmName(name = "setAppActive")
        public final void setAppActive(boolean z) {
            this._builder.setAppActive(z);
        }

        @JvmName(name = "setBatteryLevel")
        public final void setBatteryLevel(double d) {
            this._builder.setBatteryLevel(d);
        }

        @JvmName(name = "setBatteryStatus")
        public final void setBatteryStatus(int i) {
            this._builder.setBatteryStatus(i);
        }

        @JvmName(name = "setConnectionType")
        public final void setConnectionType(@NotNull DynamicDeviceInfoOuterClass.ConnectionType connectionType) {
            this._builder.setConnectionType(connectionType);
        }

        @JvmName(name = "setConnectionTypeValue")
        public final void setConnectionTypeValue(int i) {
            this._builder.setConnectionTypeValue(i);
        }

        @JvmName(name = "setFreeDiskSpace")
        public final void setFreeDiskSpace(long j) {
            this._builder.setFreeDiskSpace(j);
        }

        @JvmName(name = "setFreeRamMemory")
        public final void setFreeRamMemory(long j) {
            this._builder.setFreeRamMemory(j);
        }

        @JvmName(name = "setIos")
        public final void setIos(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios ios) {
            this._builder.setIos(ios);
        }

        @JvmName(name = "setLanguage")
        public final void setLanguage(@NotNull String str) {
            this._builder.setLanguage(str);
        }

        @JvmName(name = "setLimitedOpenAdTracking")
        public final void setLimitedOpenAdTracking(boolean z) {
            this._builder.setLimitedOpenAdTracking(z);
        }

        @JvmName(name = "setLimitedTracking")
        public final void setLimitedTracking(boolean z) {
            this._builder.setLimitedTracking(z);
        }

        @JvmName(name = "setLowPowerMode")
        public final void setLowPowerMode(boolean z) {
            this._builder.setLowPowerMode(z);
        }

        @JvmName(name = "setNetworkOperator")
        public final void setNetworkOperator(@NotNull String str) {
            this._builder.setNetworkOperator(str);
        }

        @JvmName(name = "setNetworkOperatorName")
        public final void setNetworkOperatorName(@NotNull String str) {
            this._builder.setNetworkOperatorName(str);
        }

        @JvmName(name = "setScreenHeight")
        public final void setScreenHeight(int i) {
            this._builder.setScreenHeight(i);
        }

        @JvmName(name = "setScreenWidth")
        public final void setScreenWidth(int i) {
            this._builder.setScreenWidth(i);
        }

        @JvmName(name = "setTimeZone")
        public final void setTimeZone(@NotNull String str) {
            this._builder.setTimeZone(str);
        }

        @JvmName(name = "setTimeZoneOffset")
        public final void setTimeZoneOffset(long j) {
            this._builder.setTimeZoneOffset(j);
        }

        @JvmName(name = "setUserId")
        public final void setUserId(@NotNull String str) {
            this._builder.setUserId(str);
        }

        @JvmName(name = "setWiredHeadset")
        public final void setWiredHeadset(boolean z) {
            this._builder.setWiredHeadset(z);
        }

        private Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builder) {
            this._builder = builder;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class IosKt {
        @NotNull
        public static final IosKt INSTANCE = new IosKt();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u001c\n\u0002\b\u0012\b\u0007\u0018\u0000 Z2\u00020\u0001:\u0003Z[\\B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u00102\u001a\u000203H\u0001J\u0006\u00104\u001a\u000205J\u0006\u00106\u001a\u000205J\u0006\u00107\u001a\u000205J\u0006\u00108\u001a\u000205J\u0006\u00109\u001a\u000205J\u0006\u0010:\u001a\u000205J\u0006\u0010;\u001a\u000205J\u0006\u0010<\u001a\u000205J\u0006\u0010=\u001a\u00020>J\u0006\u0010?\u001a\u00020>J\u0006\u0010@\u001a\u00020>J\u0006\u0010A\u001a\u00020>J\u0006\u0010B\u001a\u00020>J\u0006\u0010C\u001a\u00020>J\u0006\u0010D\u001a\u00020>J\u0006\u0010E\u001a\u00020>J%\u0010F\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\bGJ%\u0010F\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0\u001f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\bHJ+\u0010I\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020 0\u001f2\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00060KH\u0007¢\u0006\u0002\bLJ+\u0010I\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0\u001f2\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00060KH\u0007¢\u0006\u0002\bMJ\u001d\u0010N\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020 0\u001fH\u0007¢\u0006\u0002\bOJ\u001d\u0010N\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0\u001fH\u0007¢\u0006\u0002\bPJ&\u0010Q\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\bRJ,\u0010Q\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020 0\u001f2\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00060KH\u0087\n¢\u0006\u0002\bSJ&\u0010Q\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0\u001f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\bTJ,\u0010Q\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0\u001f2\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00060KH\u0087\n¢\u0006\u0002\bUJ.\u0010V\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010W\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\bXJ.\u0010V\u001a\u000205*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0\u001f2\u0006\u0010W\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\bYR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001d\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020 0\u001f8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R$\u0010#\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b$\u0010\u000f\"\u0004\b%\u0010\u0011R\u001d\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020'0\u001f8F¢\u0006\u0006\u001a\u0004\b(\u0010\"R$\u0010)\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010\u000f\"\u0004\b+\u0010\u0011R$\u0010-\u001a\u00020,2\u0006\u0010\u0005\u001a\u00020,8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u0006]"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;)V", "value", "", "currentRadioAccessTechnology", "getCurrentRadioAccessTechnology", "()Ljava/lang/String;", "setCurrentRadioAccessTechnology", "(Ljava/lang/String;)V", "", "currentUiTheme", "getCurrentUiTheme", "()I", "setCurrentUiTheme", "(I)V", "deviceName", "getDeviceName", "setDeviceName", "", "deviceUpTimeWithSleep", "getDeviceUpTimeWithSleep", "()J", "setDeviceUpTimeWithSleep", "(J)V", "deviceUpTimeWithoutSleep", "getDeviceUpTimeWithoutSleep", "setDeviceUpTimeWithoutSleep", "localeList", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;", "getLocaleList", "()Lcom/google/protobuf/kotlin/DslList;", "networkReachabilityFlags", "getNetworkReachabilityFlags", "setNetworkReachabilityFlags", "nwPathInterfaces", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;", "getNwPathInterfaces", "trackingAuthStatus", "getTrackingAuthStatus", "setTrackingAuthStatus", "", "volume", "getVolume", "()D", "setVolume", "(D)V", "_build", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "clearCurrentRadioAccessTechnology", "", "clearCurrentUiTheme", "clearDeviceName", "clearDeviceUpTimeWithSleep", "clearDeviceUpTimeWithoutSleep", "clearNetworkReachabilityFlags", "clearTrackingAuthStatus", "clearVolume", "hasCurrentRadioAccessTechnology", "", "hasCurrentUiTheme", "hasDeviceName", "hasDeviceUpTimeWithSleep", "hasDeviceUpTimeWithoutSleep", "hasNetworkReachabilityFlags", "hasTrackingAuthStatus", "hasVolume", "add", "addLocaleList", "addNwPathInterfaces", "addAll", "values", "", "addAllLocaleList", "addAllNwPathInterfaces", "clear", "clearLocaleList", "clearNwPathInterfaces", "plusAssign", "plusAssignLocaleList", "plusAssignAllLocaleList", "plusAssignNwPathInterfaces", "plusAssignAllNwPathInterfaces", "set", FirebaseAnalytics.Param.INDEX, "setLocaleList", "setNwPathInterfaces", "Companion", "LocaleListProxy", "NwPathInterfacesProxy", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @ProtoDslMarker
        /* loaded from: classes6.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder _builder;

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl;", "builder", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @PublishedApi
                public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builder) {
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class LocaleListProxy extends DslProxy {
                private LocaleListProxy() {
                }
            }

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class NwPathInterfacesProxy extends DslProxy {
                private NwPathInterfacesProxy() {
                }
            }

            public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            @PublishedApi
            public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios _build() {
                return this._builder.build();
            }

            @JvmName(name = "addAllLocaleList")
            /* renamed from: addAllLocaleList */
            public final /* synthetic */ void plusAssignAllLocaleList(DslList dslList, Iterable iterable) {
                this._builder.addAllLocaleList(iterable);
            }

            @JvmName(name = "addAllNwPathInterfaces")
            /* renamed from: addAllNwPathInterfaces */
            public final /* synthetic */ void plusAssignAllNwPathInterfaces(DslList dslList, Iterable iterable) {
                this._builder.addAllNwPathInterfaces(iterable);
            }

            @JvmName(name = "addLocaleList")
            /* renamed from: addLocaleList */
            public final /* synthetic */ void plusAssignLocaleList(DslList dslList, String str) {
                this._builder.addLocaleList(str);
            }

            @JvmName(name = "addNwPathInterfaces")
            /* renamed from: addNwPathInterfaces */
            public final /* synthetic */ void plusAssignNwPathInterfaces(DslList dslList, String str) {
                this._builder.addNwPathInterfaces(str);
            }

            public final void clearCurrentRadioAccessTechnology() {
                this._builder.clearCurrentRadioAccessTechnology();
            }

            public final void clearCurrentUiTheme() {
                this._builder.clearCurrentUiTheme();
            }

            public final void clearDeviceName() {
                this._builder.clearDeviceName();
            }

            public final void clearDeviceUpTimeWithSleep() {
                this._builder.clearDeviceUpTimeWithSleep();
            }

            public final void clearDeviceUpTimeWithoutSleep() {
                this._builder.clearDeviceUpTimeWithoutSleep();
            }

            @JvmName(name = "clearLocaleList")
            public final /* synthetic */ void clearLocaleList(DslList dslList) {
                this._builder.clearLocaleList();
            }

            public final void clearNetworkReachabilityFlags() {
                this._builder.clearNetworkReachabilityFlags();
            }

            @JvmName(name = "clearNwPathInterfaces")
            public final /* synthetic */ void clearNwPathInterfaces(DslList dslList) {
                this._builder.clearNwPathInterfaces();
            }

            public final void clearTrackingAuthStatus() {
                this._builder.clearTrackingAuthStatus();
            }

            public final void clearVolume() {
                this._builder.clearVolume();
            }

            @JvmName(name = "getCurrentRadioAccessTechnology")
            @NotNull
            public final String getCurrentRadioAccessTechnology() {
                return this._builder.getCurrentRadioAccessTechnology();
            }

            @JvmName(name = "getCurrentUiTheme")
            public final int getCurrentUiTheme() {
                return this._builder.getCurrentUiTheme();
            }

            @JvmName(name = "getDeviceName")
            @NotNull
            public final String getDeviceName() {
                return this._builder.getDeviceName();
            }

            @JvmName(name = "getDeviceUpTimeWithSleep")
            public final long getDeviceUpTimeWithSleep() {
                return this._builder.getDeviceUpTimeWithSleep();
            }

            @JvmName(name = "getDeviceUpTimeWithoutSleep")
            public final long getDeviceUpTimeWithoutSleep() {
                return this._builder.getDeviceUpTimeWithoutSleep();
            }

            @NotNull
            public final DslList<String, LocaleListProxy> getLocaleList() {
                return new DslList<>(this._builder.getLocaleListList());
            }

            @JvmName(name = "getNetworkReachabilityFlags")
            public final int getNetworkReachabilityFlags() {
                return this._builder.getNetworkReachabilityFlags();
            }

            @NotNull
            public final DslList<String, NwPathInterfacesProxy> getNwPathInterfaces() {
                return new DslList<>(this._builder.getNwPathInterfacesList());
            }

            @JvmName(name = "getTrackingAuthStatus")
            public final int getTrackingAuthStatus() {
                return this._builder.getTrackingAuthStatus();
            }

            @JvmName(name = "getVolume")
            public final double getVolume() {
                return this._builder.getVolume();
            }

            public final boolean hasCurrentRadioAccessTechnology() {
                return this._builder.hasCurrentRadioAccessTechnology();
            }

            public final boolean hasCurrentUiTheme() {
                return this._builder.hasCurrentUiTheme();
            }

            public final boolean hasDeviceName() {
                return this._builder.hasDeviceName();
            }

            public final boolean hasDeviceUpTimeWithSleep() {
                return this._builder.hasDeviceUpTimeWithSleep();
            }

            public final boolean hasDeviceUpTimeWithoutSleep() {
                return this._builder.hasDeviceUpTimeWithoutSleep();
            }

            public final boolean hasNetworkReachabilityFlags() {
                return this._builder.hasNetworkReachabilityFlags();
            }

            public final boolean hasTrackingAuthStatus() {
                return this._builder.hasTrackingAuthStatus();
            }

            public final boolean hasVolume() {
                return this._builder.hasVolume();
            }

            @JvmName(name = "setCurrentRadioAccessTechnology")
            public final void setCurrentRadioAccessTechnology(@NotNull String str) {
                this._builder.setCurrentRadioAccessTechnology(str);
            }

            @JvmName(name = "setCurrentUiTheme")
            public final void setCurrentUiTheme(int i) {
                this._builder.setCurrentUiTheme(i);
            }

            @JvmName(name = "setDeviceName")
            public final void setDeviceName(@NotNull String str) {
                this._builder.setDeviceName(str);
            }

            @JvmName(name = "setDeviceUpTimeWithSleep")
            public final void setDeviceUpTimeWithSleep(long j) {
                this._builder.setDeviceUpTimeWithSleep(j);
            }

            @JvmName(name = "setDeviceUpTimeWithoutSleep")
            public final void setDeviceUpTimeWithoutSleep(long j) {
                this._builder.setDeviceUpTimeWithoutSleep(j);
            }

            @JvmName(name = "setLocaleList")
            public final /* synthetic */ void setLocaleList(DslList dslList, int i, String str) {
                this._builder.setLocaleList(i, str);
            }

            @JvmName(name = "setNetworkReachabilityFlags")
            public final void setNetworkReachabilityFlags(int i) {
                this._builder.setNetworkReachabilityFlags(i);
            }

            @JvmName(name = "setNwPathInterfaces")
            public final /* synthetic */ void setNwPathInterfaces(DslList dslList, int i, String str) {
                this._builder.setNwPathInterfaces(i, str);
            }

            @JvmName(name = "setTrackingAuthStatus")
            public final void setTrackingAuthStatus(int i) {
                this._builder.setTrackingAuthStatus(i);
            }

            @JvmName(name = "setVolume")
            public final void setVolume(double d) {
                this._builder.setVolume(d);
            }

            private Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builder) {
                this._builder = builder;
            }
        }

        private IosKt() {
        }
    }

    private DynamicDeviceInfoKt() {
    }

    @JvmName(name = "-initializeandroid")
    @NotNull
    /* renamed from: -initializeandroid  reason: not valid java name */
    public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android m384initializeandroid(@NotNull Function1<? super AndroidKt.Dsl, Unit> function1) {
        AndroidKt.Dsl _create = AndroidKt.Dsl.Companion._create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @JvmName(name = "-initializeios")
    @NotNull
    /* renamed from: -initializeios  reason: not valid java name */
    public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios m385initializeios(@NotNull Function1<? super IosKt.Dsl, Unit> function1) {
        IosKt.Dsl _create = IosKt.Dsl.Companion._create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
