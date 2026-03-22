package gatewayprotocol.v1;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\nJ*\u0010\u000b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt;", "", "()V", "android", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeandroid", "ios", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;", "-initializeios", "AndroidKt", "Dsl", "IosKt", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStaticDeviceInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticDeviceInfoKt.kt\ngatewayprotocol/v1/StaticDeviceInfoKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1343:1\n1#2:1344\n*E\n"})
/* loaded from: classes6.dex */
public final class StaticDeviceInfoKt {
    @NotNull
    public static final StaticDeviceInfoKt INSTANCE = new StaticDeviceInfoKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class AndroidKt {
        @NotNull
        public static final AndroidKt INSTANCE = new AndroidKt();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b6\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0007\u0018\u0000 j2\u00020\u0001:\u0001jB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010B\u001a\u00020CH\u0001J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ\u0006\u0010G\u001a\u00020EJ\u0006\u0010H\u001a\u00020EJ\u0006\u0010I\u001a\u00020EJ\u0006\u0010J\u001a\u00020EJ\u0006\u0010K\u001a\u00020EJ\u0006\u0010L\u001a\u00020EJ\u0006\u0010M\u001a\u00020EJ\u0006\u0010N\u001a\u00020EJ\u0006\u0010O\u001a\u00020EJ\u0006\u0010P\u001a\u00020EJ\u0006\u0010Q\u001a\u00020EJ\u0006\u0010R\u001a\u00020EJ\u0006\u0010S\u001a\u00020EJ\u0006\u0010T\u001a\u00020EJ\u0006\u0010U\u001a\u00020EJ\u0006\u0010V\u001a\u00020EJ\u0006\u0010W\u001a\u00020XJ\u0006\u0010Y\u001a\u00020XJ\u0006\u0010Z\u001a\u00020XJ\u0006\u0010[\u001a\u00020XJ\u0006\u0010\\\u001a\u00020XJ\u0006\u0010]\u001a\u00020XJ\u0006\u0010^\u001a\u00020XJ\u0006\u0010_\u001a\u00020XJ\u0006\u0010`\u001a\u00020XJ\u0006\u0010a\u001a\u00020XJ\u0006\u0010b\u001a\u00020XJ\u0006\u0010c\u001a\u00020XJ\u0006\u0010d\u001a\u00020XJ\u0006\u0010e\u001a\u00020XJ\u0006\u0010f\u001a\u00020XJ\u0006\u0010g\u001a\u00020XJ\u0006\u0010h\u001a\u00020XJ\u0006\u0010i\u001a\u00020XR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000bR$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR$\u0010'\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\t\"\u0004\b)\u0010\u000bR$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR$\u0010-\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\t\"\u0004\b/\u0010\u000bR$\u00100\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\t\"\u0004\b2\u0010\u000bR$\u00103\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\t\"\u0004\b5\u0010\u000bR$\u00106\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\u000f\"\u0004\b8\u0010\u0011R$\u00109\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\u000f\"\u0004\b;\u0010\u0011R$\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010\t\"\u0004\b>\u0010\u000bR$\u0010?\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010\u000f\"\u0004\bA\u0010\u0011¨\u0006k"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;)V", "value", "", "androidFingerprint", "getAndroidFingerprint", "()Ljava/lang/String;", "setAndroidFingerprint", "(Ljava/lang/String;)V", "", "apiLevel", "getApiLevel", "()I", "setApiLevel", "(I)V", "apkDeveloperSigningCertificateHash", "getApkDeveloperSigningCertificateHash", "setApkDeveloperSigningCertificateHash", "appInstaller", "getAppInstaller", "setAppInstaller", "buildBoard", "getBuildBoard", "setBuildBoard", "buildBootloader", "getBuildBootloader", "setBuildBootloader", "buildBrand", "getBuildBrand", "setBuildBrand", "buildDevice", "getBuildDevice", "setBuildDevice", "buildDisplay", "getBuildDisplay", "setBuildDisplay", "buildFingerprint", "getBuildFingerprint", "setBuildFingerprint", "buildHardware", "getBuildHardware", "setBuildHardware", "buildHost", "getBuildHost", "setBuildHost", "buildId", "getBuildId", "setBuildId", "buildProduct", "getBuildProduct", "setBuildProduct", "extensionVersion", "getExtensionVersion", "setExtensionVersion", "phoneType", "getPhoneType", "setPhoneType", "simOperator", "getSimOperator", "setSimOperator", "versionCode", "getVersionCode", "setVersionCode", "_build", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "clearAndroidFingerprint", "", "clearApiLevel", "clearApkDeveloperSigningCertificateHash", "clearAppInstaller", "clearBuildBoard", "clearBuildBootloader", "clearBuildBrand", "clearBuildDevice", "clearBuildDisplay", "clearBuildFingerprint", "clearBuildHardware", "clearBuildHost", "clearBuildId", "clearBuildProduct", "clearExtensionVersion", "clearPhoneType", "clearSimOperator", "clearVersionCode", "hasAndroidFingerprint", "", "hasApiLevel", "hasApkDeveloperSigningCertificateHash", "hasAppInstaller", "hasBuildBoard", "hasBuildBootloader", "hasBuildBrand", "hasBuildDevice", "hasBuildDisplay", "hasBuildFingerprint", "hasBuildHardware", "hasBuildHost", "hasBuildId", "hasBuildProduct", "hasExtensionVersion", "hasPhoneType", "hasSimOperator", "hasVersionCode", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @ProtoDslMarker
        /* loaded from: classes6.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder _builder;

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @PublishedApi
                public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder) {
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            @PublishedApi
            public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Android _build() {
                return this._builder.build();
            }

            public final void clearAndroidFingerprint() {
                this._builder.clearAndroidFingerprint();
            }

            public final void clearApiLevel() {
                this._builder.clearApiLevel();
            }

            public final void clearApkDeveloperSigningCertificateHash() {
                this._builder.clearApkDeveloperSigningCertificateHash();
            }

            public final void clearAppInstaller() {
                this._builder.clearAppInstaller();
            }

            public final void clearBuildBoard() {
                this._builder.clearBuildBoard();
            }

            public final void clearBuildBootloader() {
                this._builder.clearBuildBootloader();
            }

            public final void clearBuildBrand() {
                this._builder.clearBuildBrand();
            }

            public final void clearBuildDevice() {
                this._builder.clearBuildDevice();
            }

            public final void clearBuildDisplay() {
                this._builder.clearBuildDisplay();
            }

            public final void clearBuildFingerprint() {
                this._builder.clearBuildFingerprint();
            }

            public final void clearBuildHardware() {
                this._builder.clearBuildHardware();
            }

            public final void clearBuildHost() {
                this._builder.clearBuildHost();
            }

            public final void clearBuildId() {
                this._builder.clearBuildId();
            }

            public final void clearBuildProduct() {
                this._builder.clearBuildProduct();
            }

            public final void clearExtensionVersion() {
                this._builder.clearExtensionVersion();
            }

            public final void clearPhoneType() {
                this._builder.clearPhoneType();
            }

            public final void clearSimOperator() {
                this._builder.clearSimOperator();
            }

            public final void clearVersionCode() {
                this._builder.clearVersionCode();
            }

            @JvmName(name = "getAndroidFingerprint")
            @NotNull
            public final String getAndroidFingerprint() {
                return this._builder.getAndroidFingerprint();
            }

            @JvmName(name = "getApiLevel")
            public final int getApiLevel() {
                return this._builder.getApiLevel();
            }

            @JvmName(name = "getApkDeveloperSigningCertificateHash")
            @NotNull
            public final String getApkDeveloperSigningCertificateHash() {
                return this._builder.getApkDeveloperSigningCertificateHash();
            }

            @JvmName(name = "getAppInstaller")
            @NotNull
            public final String getAppInstaller() {
                return this._builder.getAppInstaller();
            }

            @JvmName(name = "getBuildBoard")
            @NotNull
            public final String getBuildBoard() {
                return this._builder.getBuildBoard();
            }

            @JvmName(name = "getBuildBootloader")
            @NotNull
            public final String getBuildBootloader() {
                return this._builder.getBuildBootloader();
            }

            @JvmName(name = "getBuildBrand")
            @NotNull
            public final String getBuildBrand() {
                return this._builder.getBuildBrand();
            }

            @JvmName(name = "getBuildDevice")
            @NotNull
            public final String getBuildDevice() {
                return this._builder.getBuildDevice();
            }

            @JvmName(name = "getBuildDisplay")
            @NotNull
            public final String getBuildDisplay() {
                return this._builder.getBuildDisplay();
            }

            @JvmName(name = "getBuildFingerprint")
            @NotNull
            public final String getBuildFingerprint() {
                return this._builder.getBuildFingerprint();
            }

            @JvmName(name = "getBuildHardware")
            @NotNull
            public final String getBuildHardware() {
                return this._builder.getBuildHardware();
            }

            @JvmName(name = "getBuildHost")
            @NotNull
            public final String getBuildHost() {
                return this._builder.getBuildHost();
            }

            @JvmName(name = "getBuildId")
            @NotNull
            public final String getBuildId() {
                return this._builder.getBuildId();
            }

            @JvmName(name = "getBuildProduct")
            @NotNull
            public final String getBuildProduct() {
                return this._builder.getBuildProduct();
            }

            @JvmName(name = "getExtensionVersion")
            public final int getExtensionVersion() {
                return this._builder.getExtensionVersion();
            }

            @JvmName(name = "getPhoneType")
            public final int getPhoneType() {
                return this._builder.getPhoneType();
            }

            @JvmName(name = "getSimOperator")
            @NotNull
            public final String getSimOperator() {
                return this._builder.getSimOperator();
            }

            @JvmName(name = "getVersionCode")
            public final int getVersionCode() {
                return this._builder.getVersionCode();
            }

            public final boolean hasAndroidFingerprint() {
                return this._builder.hasAndroidFingerprint();
            }

            public final boolean hasApiLevel() {
                return this._builder.hasApiLevel();
            }

            public final boolean hasApkDeveloperSigningCertificateHash() {
                return this._builder.hasApkDeveloperSigningCertificateHash();
            }

            public final boolean hasAppInstaller() {
                return this._builder.hasAppInstaller();
            }

            public final boolean hasBuildBoard() {
                return this._builder.hasBuildBoard();
            }

            public final boolean hasBuildBootloader() {
                return this._builder.hasBuildBootloader();
            }

            public final boolean hasBuildBrand() {
                return this._builder.hasBuildBrand();
            }

            public final boolean hasBuildDevice() {
                return this._builder.hasBuildDevice();
            }

            public final boolean hasBuildDisplay() {
                return this._builder.hasBuildDisplay();
            }

            public final boolean hasBuildFingerprint() {
                return this._builder.hasBuildFingerprint();
            }

            public final boolean hasBuildHardware() {
                return this._builder.hasBuildHardware();
            }

            public final boolean hasBuildHost() {
                return this._builder.hasBuildHost();
            }

            public final boolean hasBuildId() {
                return this._builder.hasBuildId();
            }

            public final boolean hasBuildProduct() {
                return this._builder.hasBuildProduct();
            }

            public final boolean hasExtensionVersion() {
                return this._builder.hasExtensionVersion();
            }

            public final boolean hasPhoneType() {
                return this._builder.hasPhoneType();
            }

            public final boolean hasSimOperator() {
                return this._builder.hasSimOperator();
            }

            public final boolean hasVersionCode() {
                return this._builder.hasVersionCode();
            }

            @JvmName(name = "setAndroidFingerprint")
            public final void setAndroidFingerprint(@NotNull String str) {
                this._builder.setAndroidFingerprint(str);
            }

            @JvmName(name = "setApiLevel")
            public final void setApiLevel(int i) {
                this._builder.setApiLevel(i);
            }

            @JvmName(name = "setApkDeveloperSigningCertificateHash")
            public final void setApkDeveloperSigningCertificateHash(@NotNull String str) {
                this._builder.setApkDeveloperSigningCertificateHash(str);
            }

            @JvmName(name = "setAppInstaller")
            public final void setAppInstaller(@NotNull String str) {
                this._builder.setAppInstaller(str);
            }

            @JvmName(name = "setBuildBoard")
            public final void setBuildBoard(@NotNull String str) {
                this._builder.setBuildBoard(str);
            }

            @JvmName(name = "setBuildBootloader")
            public final void setBuildBootloader(@NotNull String str) {
                this._builder.setBuildBootloader(str);
            }

            @JvmName(name = "setBuildBrand")
            public final void setBuildBrand(@NotNull String str) {
                this._builder.setBuildBrand(str);
            }

            @JvmName(name = "setBuildDevice")
            public final void setBuildDevice(@NotNull String str) {
                this._builder.setBuildDevice(str);
            }

            @JvmName(name = "setBuildDisplay")
            public final void setBuildDisplay(@NotNull String str) {
                this._builder.setBuildDisplay(str);
            }

            @JvmName(name = "setBuildFingerprint")
            public final void setBuildFingerprint(@NotNull String str) {
                this._builder.setBuildFingerprint(str);
            }

            @JvmName(name = "setBuildHardware")
            public final void setBuildHardware(@NotNull String str) {
                this._builder.setBuildHardware(str);
            }

            @JvmName(name = "setBuildHost")
            public final void setBuildHost(@NotNull String str) {
                this._builder.setBuildHost(str);
            }

            @JvmName(name = "setBuildId")
            public final void setBuildId(@NotNull String str) {
                this._builder.setBuildId(str);
            }

            @JvmName(name = "setBuildProduct")
            public final void setBuildProduct(@NotNull String str) {
                this._builder.setBuildProduct(str);
            }

            @JvmName(name = "setExtensionVersion")
            public final void setExtensionVersion(int i) {
                this._builder.setExtensionVersion(i);
            }

            @JvmName(name = "setPhoneType")
            public final void setPhoneType(int i) {
                this._builder.setPhoneType(i);
            }

            @JvmName(name = "setSimOperator")
            public final void setSimOperator(@NotNull String str) {
                this._builder.setSimOperator(str);
            }

            @JvmName(name = "setVersionCode")
            public final void setVersionCode(int i) {
                this._builder.setVersionCode(i);
            }

            private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder) {
                this._builder = builder;
            }
        }

        private AndroidKt() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b,\n\u0002\u0010\u001c\n\u0002\b\f\b\u0007\u0018\u0000 \u0097\u00012\u00020\u0001:\u0004\u0097\u0001\u0098\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010]\u001a\u00020^H\u0001J\u0006\u0010_\u001a\u00020`J\u0006\u0010a\u001a\u00020`J\u0006\u0010b\u001a\u00020`J\u0006\u0010c\u001a\u00020`J\u0006\u0010d\u001a\u00020`J\u0006\u0010e\u001a\u00020`J\u0006\u0010f\u001a\u00020`J\u0006\u0010g\u001a\u00020`J\u0006\u0010h\u001a\u00020`J\u0006\u0010i\u001a\u00020`J\u0006\u0010j\u001a\u00020`J\u0006\u0010k\u001a\u00020`J\u0006\u0010l\u001a\u00020`J\u0006\u0010m\u001a\u00020`J\u0006\u0010n\u001a\u00020`J\u0006\u0010o\u001a\u00020`J\u0006\u0010p\u001a\u00020`J\u0006\u0010q\u001a\u00020`J\u0006\u0010r\u001a\u00020`J\u0006\u0010s\u001a\u00020`J\u0006\u0010t\u001a\u00020`J\u0006\u0010u\u001a\u00020\fJ\u0006\u0010v\u001a\u00020\fJ\u0006\u0010w\u001a\u00020\fJ\u0006\u0010x\u001a\u00020\fJ\u0006\u0010y\u001a\u00020\fJ\u0006\u0010z\u001a\u00020\fJ\u0006\u0010{\u001a\u00020\fJ\u0006\u0010|\u001a\u00020\fJ\u0006\u0010}\u001a\u00020\fJ\u0006\u0010~\u001a\u00020\fJ\u0006\u0010\u007f\u001a\u00020\fJ\u0007\u0010\u0080\u0001\u001a\u00020\fJ\u0007\u0010\u0081\u0001\u001a\u00020\fJ\u0007\u0010\u0082\u0001\u001a\u00020\fJ\u0007\u0010\u0083\u0001\u001a\u00020\fJ\u0007\u0010\u0084\u0001\u001a\u00020\fJ\u0007\u0010\u0085\u0001\u001a\u00020\fJ\u0007\u0010\u0086\u0001\u001a\u00020\fJ\u0007\u0010\u0087\u0001\u001a\u00020\fJ\u0007\u0010\u0088\u0001\u001a\u00020\fJ'\u0010\u0089\u0001\u001a\u00020`*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020Q0P2\u0006\u0010\u0005\u001a\u00020\u0012H\u0007¢\u0006\u0003\b\u008a\u0001J/\u0010\u008b\u0001\u001a\u00020`*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020Q0P2\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u008d\u0001H\u0007¢\u0006\u0003\b\u008e\u0001J\u001f\u0010\u008f\u0001\u001a\u00020`*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020Q0PH\u0007¢\u0006\u0003\b\u0090\u0001J(\u0010\u0091\u0001\u001a\u00020`*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020Q0P2\u0006\u0010\u0005\u001a\u00020\u0012H\u0087\n¢\u0006\u0003\b\u0092\u0001J0\u0010\u0091\u0001\u001a\u00020`*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020Q0P2\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u008d\u0001H\u0087\n¢\u0006\u0003\b\u0093\u0001J1\u0010\u0094\u0001\u001a\u00020`*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020Q0P2\u0007\u0010\u0095\u0001\u001a\u00020@2\u0006\u0010\u0005\u001a\u00020\u0012H\u0087\u0002¢\u0006\u0003\b\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R$\u0010$\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R$\u0010'\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R$\u0010*\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017R$\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00103\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\u000f\"\u0004\b5\u0010\u0011R$\u00106\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\u0015\"\u0004\b8\u0010\u0017R\u0011\u00109\u001a\u00020:8G¢\u0006\u0006\u001a\u0004\b;\u0010<R$\u0010=\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b>\u0010\u000f\"\u0004\b?\u0010\u0011R$\u0010A\u001a\u00020@2\u0006\u0010\u0005\u001a\u00020@8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER$\u0010F\u001a\u00020@2\u0006\u0010\u0005\u001a\u00020@8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bG\u0010C\"\u0004\bH\u0010ER$\u0010I\u001a\u00020@2\u0006\u0010\u0005\u001a\u00020@8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bJ\u0010C\"\u0004\bK\u0010ER$\u0010L\u001a\u00020@2\u0006\u0010\u0005\u001a\u00020@8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010C\"\u0004\bN\u0010ER\u001d\u0010O\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020Q0P8F¢\u0006\u0006\u001a\u0004\bR\u0010SR$\u0010T\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bU\u0010\u001e\"\u0004\bV\u0010 R$\u0010W\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bX\u0010\u001e\"\u0004\bY\u0010 R$\u0010Z\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b[\u0010\u0015\"\u0004\b\\\u0010\u0017¨\u0006\u0099\u0001"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)V", "value", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "android", "getAndroid", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "setAndroid", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;)V", "", "appDebuggable", "getAppDebuggable", "()Z", "setAppDebuggable", "(Z)V", "", "bundleId", "getBundleId", "()Ljava/lang/String;", "setBundleId", "(Ljava/lang/String;)V", "bundleVersion", "getBundleVersion", "setBundleVersion", "", "cpuCount", "getCpuCount", "()J", "setCpuCount", "(J)V", "cpuModel", "getCpuModel", "setCpuModel", "deviceMake", "getDeviceMake", "setDeviceMake", "deviceModel", "getDeviceModel", "setDeviceModel", "gpuModel", "getGpuModel", "setGpuModel", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "ios", "getIos", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "setIos", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;)V", "madeWithUnity", "getMadeWithUnity", "setMadeWithUnity", "osVersion", "getOsVersion", "setOsVersion", "platformSpecificCase", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$PlatformSpecificCase;", "getPlatformSpecificCase", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$PlatformSpecificCase;", "rooted", "getRooted", "setRooted", "", "screenDensity", "getScreenDensity", "()I", "setScreenDensity", "(I)V", "screenHeight", "getScreenHeight", "setScreenHeight", "screenSize", "getScreenSize", "setScreenSize", "screenWidth", "getScreenWidth", "setScreenWidth", "stores", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$StoresProxy;", "getStores", "()Lcom/google/protobuf/kotlin/DslList;", "totalDiskSpace", "getTotalDiskSpace", "setTotalDiskSpace", "totalRamMemory", "getTotalRamMemory", "setTotalRamMemory", "webviewUa", "getWebviewUa", "setWebviewUa", "_build", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "clearAndroid", "", "clearAppDebuggable", "clearBundleId", "clearBundleVersion", "clearCpuCount", "clearCpuModel", "clearDeviceMake", "clearDeviceModel", "clearGpuModel", "clearIos", "clearMadeWithUnity", "clearOsVersion", "clearPlatformSpecific", "clearRooted", "clearScreenDensity", "clearScreenHeight", "clearScreenSize", "clearScreenWidth", "clearTotalDiskSpace", "clearTotalRamMemory", "clearWebviewUa", "hasAndroid", "hasAppDebuggable", "hasBundleId", "hasBundleVersion", "hasCpuCount", "hasCpuModel", "hasDeviceMake", "hasDeviceModel", "hasGpuModel", "hasIos", "hasMadeWithUnity", "hasOsVersion", "hasRooted", "hasScreenDensity", "hasScreenHeight", "hasScreenSize", "hasScreenWidth", "hasTotalDiskSpace", "hasTotalRamMemory", "hasWebviewUa", "add", "addStores", "addAll", "values", "", "addAllStores", "clear", "clearStores", "plusAssign", "plusAssignStores", "plusAssignAllStores", "set", FirebaseAnalytics.Param.INDEX, "setStores", "Companion", "StoresProxy", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl;", "builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$StoresProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class StoresProxy extends DslProxy {
            private StoresProxy() {
            }
        }

        public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo _build() {
            return this._builder.build();
        }

        @JvmName(name = "addAllStores")
        /* renamed from: addAllStores */
        public final /* synthetic */ void plusAssignAllStores(DslList dslList, Iterable iterable) {
            this._builder.addAllStores(iterable);
        }

        @JvmName(name = "addStores")
        /* renamed from: addStores */
        public final /* synthetic */ void plusAssignStores(DslList dslList, String str) {
            this._builder.addStores(str);
        }

        public final void clearAndroid() {
            this._builder.clearAndroid();
        }

        public final void clearAppDebuggable() {
            this._builder.clearAppDebuggable();
        }

        public final void clearBundleId() {
            this._builder.clearBundleId();
        }

        public final void clearBundleVersion() {
            this._builder.clearBundleVersion();
        }

        public final void clearCpuCount() {
            this._builder.clearCpuCount();
        }

        public final void clearCpuModel() {
            this._builder.clearCpuModel();
        }

        public final void clearDeviceMake() {
            this._builder.clearDeviceMake();
        }

        public final void clearDeviceModel() {
            this._builder.clearDeviceModel();
        }

        public final void clearGpuModel() {
            this._builder.clearGpuModel();
        }

        public final void clearIos() {
            this._builder.clearIos();
        }

        public final void clearMadeWithUnity() {
            this._builder.clearMadeWithUnity();
        }

        public final void clearOsVersion() {
            this._builder.clearOsVersion();
        }

        public final void clearPlatformSpecific() {
            this._builder.clearPlatformSpecific();
        }

        public final void clearRooted() {
            this._builder.clearRooted();
        }

        public final void clearScreenDensity() {
            this._builder.clearScreenDensity();
        }

        public final void clearScreenHeight() {
            this._builder.clearScreenHeight();
        }

        public final void clearScreenSize() {
            this._builder.clearScreenSize();
        }

        public final void clearScreenWidth() {
            this._builder.clearScreenWidth();
        }

        @JvmName(name = "clearStores")
        public final /* synthetic */ void clearStores(DslList dslList) {
            this._builder.clearStores();
        }

        public final void clearTotalDiskSpace() {
            this._builder.clearTotalDiskSpace();
        }

        public final void clearTotalRamMemory() {
            this._builder.clearTotalRamMemory();
        }

        public final void clearWebviewUa() {
            this._builder.clearWebviewUa();
        }

        @JvmName(name = "getAndroid")
        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android getAndroid() {
            return this._builder.getAndroid();
        }

        @JvmName(name = "getAppDebuggable")
        public final boolean getAppDebuggable() {
            return this._builder.getAppDebuggable();
        }

        @JvmName(name = "getBundleId")
        @NotNull
        public final String getBundleId() {
            return this._builder.getBundleId();
        }

        @JvmName(name = "getBundleVersion")
        @NotNull
        public final String getBundleVersion() {
            return this._builder.getBundleVersion();
        }

        @JvmName(name = "getCpuCount")
        public final long getCpuCount() {
            return this._builder.getCpuCount();
        }

        @JvmName(name = "getCpuModel")
        @NotNull
        public final String getCpuModel() {
            return this._builder.getCpuModel();
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

        @JvmName(name = "getGpuModel")
        @NotNull
        public final String getGpuModel() {
            return this._builder.getGpuModel();
        }

        @JvmName(name = "getIos")
        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios getIos() {
            return this._builder.getIos();
        }

        @JvmName(name = "getMadeWithUnity")
        public final boolean getMadeWithUnity() {
            return this._builder.getMadeWithUnity();
        }

        @JvmName(name = "getOsVersion")
        @NotNull
        public final String getOsVersion() {
            return this._builder.getOsVersion();
        }

        @JvmName(name = "getPlatformSpecificCase")
        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.PlatformSpecificCase getPlatformSpecificCase() {
            return this._builder.getPlatformSpecificCase();
        }

        @JvmName(name = "getRooted")
        public final boolean getRooted() {
            return this._builder.getRooted();
        }

        @JvmName(name = "getScreenDensity")
        public final int getScreenDensity() {
            return this._builder.getScreenDensity();
        }

        @JvmName(name = "getScreenHeight")
        public final int getScreenHeight() {
            return this._builder.getScreenHeight();
        }

        @JvmName(name = "getScreenSize")
        public final int getScreenSize() {
            return this._builder.getScreenSize();
        }

        @JvmName(name = "getScreenWidth")
        public final int getScreenWidth() {
            return this._builder.getScreenWidth();
        }

        @NotNull
        public final DslList<String, StoresProxy> getStores() {
            return new DslList<>(this._builder.getStoresList());
        }

        @JvmName(name = "getTotalDiskSpace")
        public final long getTotalDiskSpace() {
            return this._builder.getTotalDiskSpace();
        }

        @JvmName(name = "getTotalRamMemory")
        public final long getTotalRamMemory() {
            return this._builder.getTotalRamMemory();
        }

        @JvmName(name = "getWebviewUa")
        @NotNull
        public final String getWebviewUa() {
            return this._builder.getWebviewUa();
        }

        public final boolean hasAndroid() {
            return this._builder.hasAndroid();
        }

        public final boolean hasAppDebuggable() {
            return this._builder.hasAppDebuggable();
        }

        public final boolean hasBundleId() {
            return this._builder.hasBundleId();
        }

        public final boolean hasBundleVersion() {
            return this._builder.hasBundleVersion();
        }

        public final boolean hasCpuCount() {
            return this._builder.hasCpuCount();
        }

        public final boolean hasCpuModel() {
            return this._builder.hasCpuModel();
        }

        public final boolean hasDeviceMake() {
            return this._builder.hasDeviceMake();
        }

        public final boolean hasDeviceModel() {
            return this._builder.hasDeviceModel();
        }

        public final boolean hasGpuModel() {
            return this._builder.hasGpuModel();
        }

        public final boolean hasIos() {
            return this._builder.hasIos();
        }

        public final boolean hasMadeWithUnity() {
            return this._builder.hasMadeWithUnity();
        }

        public final boolean hasOsVersion() {
            return this._builder.hasOsVersion();
        }

        public final boolean hasRooted() {
            return this._builder.hasRooted();
        }

        public final boolean hasScreenDensity() {
            return this._builder.hasScreenDensity();
        }

        public final boolean hasScreenHeight() {
            return this._builder.hasScreenHeight();
        }

        public final boolean hasScreenSize() {
            return this._builder.hasScreenSize();
        }

        public final boolean hasScreenWidth() {
            return this._builder.hasScreenWidth();
        }

        public final boolean hasTotalDiskSpace() {
            return this._builder.hasTotalDiskSpace();
        }

        public final boolean hasTotalRamMemory() {
            return this._builder.hasTotalRamMemory();
        }

        public final boolean hasWebviewUa() {
            return this._builder.hasWebviewUa();
        }

        @JvmName(name = "setAndroid")
        public final void setAndroid(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo.Android android2) {
            this._builder.setAndroid(android2);
        }

        @JvmName(name = "setAppDebuggable")
        public final void setAppDebuggable(boolean z) {
            this._builder.setAppDebuggable(z);
        }

        @JvmName(name = "setBundleId")
        public final void setBundleId(@NotNull String str) {
            this._builder.setBundleId(str);
        }

        @JvmName(name = "setBundleVersion")
        public final void setBundleVersion(@NotNull String str) {
            this._builder.setBundleVersion(str);
        }

        @JvmName(name = "setCpuCount")
        public final void setCpuCount(long j) {
            this._builder.setCpuCount(j);
        }

        @JvmName(name = "setCpuModel")
        public final void setCpuModel(@NotNull String str) {
            this._builder.setCpuModel(str);
        }

        @JvmName(name = "setDeviceMake")
        public final void setDeviceMake(@NotNull String str) {
            this._builder.setDeviceMake(str);
        }

        @JvmName(name = "setDeviceModel")
        public final void setDeviceModel(@NotNull String str) {
            this._builder.setDeviceModel(str);
        }

        @JvmName(name = "setGpuModel")
        public final void setGpuModel(@NotNull String str) {
            this._builder.setGpuModel(str);
        }

        @JvmName(name = "setIos")
        public final void setIos(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios ios) {
            this._builder.setIos(ios);
        }

        @JvmName(name = "setMadeWithUnity")
        public final void setMadeWithUnity(boolean z) {
            this._builder.setMadeWithUnity(z);
        }

        @JvmName(name = "setOsVersion")
        public final void setOsVersion(@NotNull String str) {
            this._builder.setOsVersion(str);
        }

        @JvmName(name = "setRooted")
        public final void setRooted(boolean z) {
            this._builder.setRooted(z);
        }

        @JvmName(name = "setScreenDensity")
        public final void setScreenDensity(int i) {
            this._builder.setScreenDensity(i);
        }

        @JvmName(name = "setScreenHeight")
        public final void setScreenHeight(int i) {
            this._builder.setScreenHeight(i);
        }

        @JvmName(name = "setScreenSize")
        public final void setScreenSize(int i) {
            this._builder.setScreenSize(i);
        }

        @JvmName(name = "setScreenWidth")
        public final void setScreenWidth(int i) {
            this._builder.setScreenWidth(i);
        }

        @JvmName(name = "setStores")
        public final /* synthetic */ void setStores(DslList dslList, int i, String str) {
            this._builder.setStores(i, str);
        }

        @JvmName(name = "setTotalDiskSpace")
        public final void setTotalDiskSpace(long j) {
            this._builder.setTotalDiskSpace(j);
        }

        @JvmName(name = "setTotalRamMemory")
        public final void setTotalRamMemory(long j) {
            this._builder.setTotalRamMemory(j);
        }

        @JvmName(name = "setWebviewUa")
        public final void setWebviewUa(@NotNull String str) {
            this._builder.setWebviewUa(str);
        }

        private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder) {
            this._builder = builder;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class IosKt {
        @NotNull
        public static final IosKt INSTANCE = new IosKt();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0013\n\u0002\u0010\u001c\n\u0002\b\f\b\u0007\u0018\u0000 P2\u00020\u0001:\u0002PQB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010/\u001a\u000200H\u0001J\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u000202J\u0006\u00105\u001a\u000202J\u0006\u00106\u001a\u000202J\u0006\u00107\u001a\u000202J\u0006\u00108\u001a\u000202J\u0006\u00109\u001a\u000202J\u0006\u0010:\u001a\u00020\fJ\u0006\u0010;\u001a\u00020\fJ\u0006\u0010<\u001a\u00020\fJ\u0006\u0010=\u001a\u00020\fJ\u0006\u0010>\u001a\u00020\fJ\u0006\u0010?\u001a\u00020\fJ\u0006\u0010@\u001a\u00020\fJ\u0006\u0010A\u001a\u00020\fJ%\u0010B\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\bCJ+\u0010D\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u001c2\f\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00060FH\u0007¢\u0006\u0002\bGJ\u001d\u0010H\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u001cH\u0007¢\u0006\u0002\bIJ&\u0010J\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\bKJ,\u0010J\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u001c2\f\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00060FH\u0087\n¢\u0006\u0002\bLJ.\u0010M\u001a\u000202*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010N\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\bOR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\u001d\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u001c8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR$\u0010!\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020 8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010&\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b'\u0010\t\"\u0004\b(\u0010\u000bR$\u0010)\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010\t\"\u0004\b+\u0010\u000bR$\u0010,\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010\t\"\u0004\b.\u0010\u000b¨\u0006R"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;)V", "value", "", "builtSdkVersion", "getBuiltSdkVersion", "()Ljava/lang/String;", "setBuiltSdkVersion", "(Ljava/lang/String;)V", "", "canMakePayments", "getCanMakePayments", "()Z", "setCanMakePayments", "(Z)V", "", "screenScale", "getScreenScale", "()I", "setScreenScale", "(I)V", "simulator", "getSimulator", "setSimulator", "skadnetworkId", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;", "getSkadnetworkId", "()Lcom/google/protobuf/kotlin/DslList;", "", "systemBootTime", "getSystemBootTime", "()J", "setSystemBootTime", "(J)V", "xcodeBuildVersion", "getXcodeBuildVersion", "setXcodeBuildVersion", "xcodeSdkBuildVersion", "getXcodeSdkBuildVersion", "setXcodeSdkBuildVersion", "xcodeVersion", "getXcodeVersion", "setXcodeVersion", "_build", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "clearBuiltSdkVersion", "", "clearCanMakePayments", "clearScreenScale", "clearSimulator", "clearSystemBootTime", "clearXcodeBuildVersion", "clearXcodeSdkBuildVersion", "clearXcodeVersion", "hasBuiltSdkVersion", "hasCanMakePayments", "hasScreenScale", "hasSimulator", "hasSystemBootTime", "hasXcodeBuildVersion", "hasXcodeSdkBuildVersion", "hasXcodeVersion", "add", "addSkadnetworkId", "addAll", "values", "", "addAllSkadnetworkId", "clear", "clearSkadnetworkId", "plusAssign", "plusAssignSkadnetworkId", "plusAssignAllSkadnetworkId", "set", FirebaseAnalytics.Param.INDEX, "setSkadnetworkId", "Companion", "SkadnetworkIdProxy", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @ProtoDslMarker
        /* loaded from: classes6.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder _builder;

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;", "builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @PublishedApi
                public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder) {
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "()V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class SkadnetworkIdProxy extends DslProxy {
                private SkadnetworkIdProxy() {
                }
            }

            public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            @PublishedApi
            public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios _build() {
                return this._builder.build();
            }

            @JvmName(name = "addAllSkadnetworkId")
            /* renamed from: addAllSkadnetworkId */
            public final /* synthetic */ void plusAssignAllSkadnetworkId(DslList dslList, Iterable iterable) {
                this._builder.addAllSkadnetworkId(iterable);
            }

            @JvmName(name = "addSkadnetworkId")
            /* renamed from: addSkadnetworkId */
            public final /* synthetic */ void plusAssignSkadnetworkId(DslList dslList, String str) {
                this._builder.addSkadnetworkId(str);
            }

            public final void clearBuiltSdkVersion() {
                this._builder.clearBuiltSdkVersion();
            }

            public final void clearCanMakePayments() {
                this._builder.clearCanMakePayments();
            }

            public final void clearScreenScale() {
                this._builder.clearScreenScale();
            }

            public final void clearSimulator() {
                this._builder.clearSimulator();
            }

            @JvmName(name = "clearSkadnetworkId")
            public final /* synthetic */ void clearSkadnetworkId(DslList dslList) {
                this._builder.clearSkadnetworkId();
            }

            public final void clearSystemBootTime() {
                this._builder.clearSystemBootTime();
            }

            public final void clearXcodeBuildVersion() {
                this._builder.clearXcodeBuildVersion();
            }

            public final void clearXcodeSdkBuildVersion() {
                this._builder.clearXcodeSdkBuildVersion();
            }

            public final void clearXcodeVersion() {
                this._builder.clearXcodeVersion();
            }

            @JvmName(name = "getBuiltSdkVersion")
            @NotNull
            public final String getBuiltSdkVersion() {
                return this._builder.getBuiltSdkVersion();
            }

            @JvmName(name = "getCanMakePayments")
            public final boolean getCanMakePayments() {
                return this._builder.getCanMakePayments();
            }

            @JvmName(name = "getScreenScale")
            public final int getScreenScale() {
                return this._builder.getScreenScale();
            }

            @JvmName(name = "getSimulator")
            public final boolean getSimulator() {
                return this._builder.getSimulator();
            }

            @NotNull
            public final DslList<String, SkadnetworkIdProxy> getSkadnetworkId() {
                return new DslList<>(this._builder.getSkadnetworkIdList());
            }

            @JvmName(name = "getSystemBootTime")
            public final long getSystemBootTime() {
                return this._builder.getSystemBootTime();
            }

            @JvmName(name = "getXcodeBuildVersion")
            @NotNull
            public final String getXcodeBuildVersion() {
                return this._builder.getXcodeBuildVersion();
            }

            @JvmName(name = "getXcodeSdkBuildVersion")
            @NotNull
            public final String getXcodeSdkBuildVersion() {
                return this._builder.getXcodeSdkBuildVersion();
            }

            @JvmName(name = "getXcodeVersion")
            @NotNull
            public final String getXcodeVersion() {
                return this._builder.getXcodeVersion();
            }

            public final boolean hasBuiltSdkVersion() {
                return this._builder.hasBuiltSdkVersion();
            }

            public final boolean hasCanMakePayments() {
                return this._builder.hasCanMakePayments();
            }

            public final boolean hasScreenScale() {
                return this._builder.hasScreenScale();
            }

            public final boolean hasSimulator() {
                return this._builder.hasSimulator();
            }

            public final boolean hasSystemBootTime() {
                return this._builder.hasSystemBootTime();
            }

            public final boolean hasXcodeBuildVersion() {
                return this._builder.hasXcodeBuildVersion();
            }

            public final boolean hasXcodeSdkBuildVersion() {
                return this._builder.hasXcodeSdkBuildVersion();
            }

            public final boolean hasXcodeVersion() {
                return this._builder.hasXcodeVersion();
            }

            @JvmName(name = "setBuiltSdkVersion")
            public final void setBuiltSdkVersion(@NotNull String str) {
                this._builder.setBuiltSdkVersion(str);
            }

            @JvmName(name = "setCanMakePayments")
            public final void setCanMakePayments(boolean z) {
                this._builder.setCanMakePayments(z);
            }

            @JvmName(name = "setScreenScale")
            public final void setScreenScale(int i) {
                this._builder.setScreenScale(i);
            }

            @JvmName(name = "setSimulator")
            public final void setSimulator(boolean z) {
                this._builder.setSimulator(z);
            }

            @JvmName(name = "setSkadnetworkId")
            public final /* synthetic */ void setSkadnetworkId(DslList dslList, int i, String str) {
                this._builder.setSkadnetworkId(i, str);
            }

            @JvmName(name = "setSystemBootTime")
            public final void setSystemBootTime(long j) {
                this._builder.setSystemBootTime(j);
            }

            @JvmName(name = "setXcodeBuildVersion")
            public final void setXcodeBuildVersion(@NotNull String str) {
                this._builder.setXcodeBuildVersion(str);
            }

            @JvmName(name = "setXcodeSdkBuildVersion")
            public final void setXcodeSdkBuildVersion(@NotNull String str) {
                this._builder.setXcodeSdkBuildVersion(str);
            }

            @JvmName(name = "setXcodeVersion")
            public final void setXcodeVersion(@NotNull String str) {
                this._builder.setXcodeVersion(str);
            }

            private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder) {
                this._builder = builder;
            }
        }

        private IosKt() {
        }
    }

    private StaticDeviceInfoKt() {
    }

    @JvmName(name = "-initializeandroid")
    @NotNull
    /* renamed from: -initializeandroid  reason: not valid java name */
    public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android m411initializeandroid(@NotNull Function1<? super AndroidKt.Dsl, Unit> function1) {
        AndroidKt.Dsl _create = AndroidKt.Dsl.Companion._create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @JvmName(name = "-initializeios")
    @NotNull
    /* renamed from: -initializeios  reason: not valid java name */
    public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios m412initializeios(@NotNull Function1<? super IosKt.Dsl, Unit> function1) {
        IosKt.Dsl _create = IosKt.Dsl.Companion._create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
