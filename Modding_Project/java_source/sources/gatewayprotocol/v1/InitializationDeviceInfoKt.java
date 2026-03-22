package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/InitializationDeviceInfoKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class InitializationDeviceInfoKt {
    @NotNull
    public static final InitializationDeviceInfoKt INSTANCE = new InitializationDeviceInfoKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u0000 W2\u00020\u0001:\u0001WB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010B\u001a\u00020CH\u0001J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ\u0006\u0010G\u001a\u00020EJ\u0006\u0010H\u001a\u00020EJ\u0006\u0010I\u001a\u00020EJ\u0006\u0010J\u001a\u00020EJ\u0006\u0010K\u001a\u00020EJ\u0006\u0010L\u001a\u00020EJ\u0006\u0010M\u001a\u00020EJ\u0006\u0010N\u001a\u00020EJ\u0006\u0010O\u001a\u00020EJ\u0006\u0010P\u001a\u00020EJ\u0006\u0010Q\u001a\u00020EJ\u0006\u0010R\u001a\u00020EJ\u0006\u0010S\u001a\u00020EJ\u0006\u0010T\u001a\u00020EJ\u0006\u0010U\u001a\u00020VR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R$\u0010$\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R$\u0010'\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R$\u0010*\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017R$\u0010-\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\u0015\"\u0004\b/\u0010\u0017R$\u00100\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017R$\u00103\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\u0015\"\u0004\b5\u0010\u0017R$\u00106\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\u001e\"\u0004\b8\u0010 R$\u00109\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\u001e\"\u0004\b;\u0010 R$\u0010<\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010\u001e\"\u0004\b>\u0010 R$\u0010?\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010\u000f\"\u0004\bA\u0010\u0011¨\u0006X"}, d2 = {"Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;)V", "value", "", "batteryLevel", "getBatteryLevel", "()D", "setBatteryLevel", "(D)V", "", "batteryStatus", "getBatteryStatus", "()I", "setBatteryStatus", "(I)V", "", "bundleId", "getBundleId", "()Ljava/lang/String;", "setBundleId", "(Ljava/lang/String;)V", "connectionType", "getConnectionType", "setConnectionType", "", "currentUiTheme", "getCurrentUiTheme", "()J", "setCurrentUiTheme", "(J)V", "deviceMake", "getDeviceMake", "setDeviceMake", "deviceModel", "getDeviceModel", "setDeviceModel", "hashedDeviceName", "getHashedDeviceName", "setHashedDeviceName", "language", "getLanguage", "setLanguage", "localList", "getLocalList", "setLocalList", "networkOperator", "getNetworkOperator", "setNetworkOperator", "osVersion", "getOsVersion", "setOsVersion", "systemBootTime", "getSystemBootTime", "setSystemBootTime", "totalDiskSpace", "getTotalDiskSpace", "setTotalDiskSpace", "totalRamMemory", "getTotalRamMemory", "setTotalRamMemory", "trackingAuthStatus", "getTrackingAuthStatus", "setTrackingAuthStatus", "_build", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "clearBatteryLevel", "", "clearBatteryStatus", "clearBundleId", "clearConnectionType", "clearCurrentUiTheme", "clearDeviceMake", "clearDeviceModel", "clearHashedDeviceName", "clearLanguage", "clearLocalList", "clearNetworkOperator", "clearOsVersion", "clearSystemBootTime", "clearTotalDiskSpace", "clearTotalRamMemory", "clearTrackingAuthStatus", "hasTrackingAuthStatus", "", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final InitializationRequestOuterClass.InitializationDeviceInfo.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;", "builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.InitializationDeviceInfo.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(InitializationRequestOuterClass.InitializationDeviceInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ InitializationRequestOuterClass.InitializationDeviceInfo _build() {
            return this._builder.build();
        }

        public final void clearBatteryLevel() {
            this._builder.clearBatteryLevel();
        }

        public final void clearBatteryStatus() {
            this._builder.clearBatteryStatus();
        }

        public final void clearBundleId() {
            this._builder.clearBundleId();
        }

        public final void clearConnectionType() {
            this._builder.clearConnectionType();
        }

        public final void clearCurrentUiTheme() {
            this._builder.clearCurrentUiTheme();
        }

        public final void clearDeviceMake() {
            this._builder.clearDeviceMake();
        }

        public final void clearDeviceModel() {
            this._builder.clearDeviceModel();
        }

        public final void clearHashedDeviceName() {
            this._builder.clearHashedDeviceName();
        }

        public final void clearLanguage() {
            this._builder.clearLanguage();
        }

        public final void clearLocalList() {
            this._builder.clearLocalList();
        }

        public final void clearNetworkOperator() {
            this._builder.clearNetworkOperator();
        }

        public final void clearOsVersion() {
            this._builder.clearOsVersion();
        }

        public final void clearSystemBootTime() {
            this._builder.clearSystemBootTime();
        }

        public final void clearTotalDiskSpace() {
            this._builder.clearTotalDiskSpace();
        }

        public final void clearTotalRamMemory() {
            this._builder.clearTotalRamMemory();
        }

        public final void clearTrackingAuthStatus() {
            this._builder.clearTrackingAuthStatus();
        }

        @JvmName(name = "getBatteryLevel")
        public final double getBatteryLevel() {
            return this._builder.getBatteryLevel();
        }

        @JvmName(name = "getBatteryStatus")
        public final int getBatteryStatus() {
            return this._builder.getBatteryStatus();
        }

        @JvmName(name = "getBundleId")
        @NotNull
        public final String getBundleId() {
            return this._builder.getBundleId();
        }

        @JvmName(name = "getConnectionType")
        @NotNull
        public final String getConnectionType() {
            return this._builder.getConnectionType();
        }

        @JvmName(name = "getCurrentUiTheme")
        public final long getCurrentUiTheme() {
            return this._builder.getCurrentUiTheme();
        }

        @JvmName(name = "getDeviceMake")
        @NotNull
        public final String getDeviceMake() {
            return this._builder.getDeviceMake();
        }

        @JvmName(name = "getDeviceModel")
        @NotNull
        public final String getDeviceModel() {
            return this._builder.getDeviceModel();
        }

        @JvmName(name = "getHashedDeviceName")
        @NotNull
        public final String getHashedDeviceName() {
            return this._builder.getHashedDeviceName();
        }

        @JvmName(name = "getLanguage")
        @NotNull
        public final String getLanguage() {
            return this._builder.getLanguage();
        }

        @JvmName(name = "getLocalList")
        @NotNull
        public final String getLocalList() {
            return this._builder.getLocalList();
        }

        @JvmName(name = "getNetworkOperator")
        @NotNull
        public final String getNetworkOperator() {
            return this._builder.getNetworkOperator();
        }

        @JvmName(name = "getOsVersion")
        @NotNull
        public final String getOsVersion() {
            return this._builder.getOsVersion();
        }

        @JvmName(name = "getSystemBootTime")
        public final long getSystemBootTime() {
            return this._builder.getSystemBootTime();
        }

        @JvmName(name = "getTotalDiskSpace")
        public final long getTotalDiskSpace() {
            return this._builder.getTotalDiskSpace();
        }

        @JvmName(name = "getTotalRamMemory")
        public final long getTotalRamMemory() {
            return this._builder.getTotalRamMemory();
        }

        @JvmName(name = "getTrackingAuthStatus")
        public final int getTrackingAuthStatus() {
            return this._builder.getTrackingAuthStatus();
        }

        public final boolean hasTrackingAuthStatus() {
            return this._builder.hasTrackingAuthStatus();
        }

        @JvmName(name = "setBatteryLevel")
        public final void setBatteryLevel(double d) {
            this._builder.setBatteryLevel(d);
        }

        @JvmName(name = "setBatteryStatus")
        public final void setBatteryStatus(int i) {
            this._builder.setBatteryStatus(i);
        }

        @JvmName(name = "setBundleId")
        public final void setBundleId(@NotNull String str) {
            this._builder.setBundleId(str);
        }

        @JvmName(name = "setConnectionType")
        public final void setConnectionType(@NotNull String str) {
            this._builder.setConnectionType(str);
        }

        @JvmName(name = "setCurrentUiTheme")
        public final void setCurrentUiTheme(long j) {
            this._builder.setCurrentUiTheme(j);
        }

        @JvmName(name = "setDeviceMake")
        public final void setDeviceMake(@NotNull String str) {
            this._builder.setDeviceMake(str);
        }

        @JvmName(name = "setDeviceModel")
        public final void setDeviceModel(@NotNull String str) {
            this._builder.setDeviceModel(str);
        }

        @JvmName(name = "setHashedDeviceName")
        public final void setHashedDeviceName(@NotNull String str) {
            this._builder.setHashedDeviceName(str);
        }

        @JvmName(name = "setLanguage")
        public final void setLanguage(@NotNull String str) {
            this._builder.setLanguage(str);
        }

        @JvmName(name = "setLocalList")
        public final void setLocalList(@NotNull String str) {
            this._builder.setLocalList(str);
        }

        @JvmName(name = "setNetworkOperator")
        public final void setNetworkOperator(@NotNull String str) {
            this._builder.setNetworkOperator(str);
        }

        @JvmName(name = "setOsVersion")
        public final void setOsVersion(@NotNull String str) {
            this._builder.setOsVersion(str);
        }

        @JvmName(name = "setSystemBootTime")
        public final void setSystemBootTime(long j) {
            this._builder.setSystemBootTime(j);
        }

        @JvmName(name = "setTotalDiskSpace")
        public final void setTotalDiskSpace(long j) {
            this._builder.setTotalDiskSpace(j);
        }

        @JvmName(name = "setTotalRamMemory")
        public final void setTotalRamMemory(long j) {
            this._builder.setTotalRamMemory(j);
        }

        @JvmName(name = "setTrackingAuthStatus")
        public final void setTrackingAuthStatus(int i) {
            this._builder.setTrackingAuthStatus(i);
        }

        private Dsl(InitializationRequestOuterClass.InitializationDeviceInfo.Builder builder) {
            this._builder = builder;
        }
    }

    private InitializationDeviceInfoKt() {
    }
}
