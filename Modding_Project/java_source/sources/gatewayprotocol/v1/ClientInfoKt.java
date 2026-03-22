package gatewayprotocol.v1;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.protobuf.kotlin.ProtoDslMarker;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/ClientInfoKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class ClientInfoKt {
    @NotNull
    public static final ClientInfoKt INSTANCE = new ClientInfoKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0017\b\u0007\u0018\u0000 ^2\u00020\u0001:\u0001^B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010E\u001a\u00020FH\u0001J\u0006\u0010G\u001a\u00020HJ\u0006\u0010I\u001a\u00020HJ\u0006\u0010J\u001a\u00020HJ\u0006\u0010K\u001a\u00020HJ\u0006\u0010L\u001a\u00020HJ\u0006\u0010M\u001a\u00020HJ\u0006\u0010N\u001a\u00020HJ\u0006\u0010O\u001a\u00020HJ\u0006\u0010P\u001a\u00020HJ\u0006\u0010Q\u001a\u00020HJ\u0006\u0010R\u001a\u00020HJ\u0006\u0010S\u001a\u00020HJ\u0006\u0010T\u001a\u00020HJ\u0006\u0010U\u001a\u00020HJ\u0006\u0010V\u001a\u00020\u000fJ\u0006\u0010W\u001a\u00020\u000fJ\u0006\u0010X\u001a\u00020\u000fJ\u0006\u0010Y\u001a\u00020\u000fJ\u0006\u0010Z\u001a\u00020\u000fJ\u0006\u0010[\u001a\u00020\u000fJ\u0006\u0010\\\u001a\u00020\u000fJ\u0006\u0010]\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR$\u0010'\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\t\"\u0004\b)\u0010\u000bR$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR$\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00103\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\u001e\"\u0004\b5\u0010 R$\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\t\"\u0004\b8\u0010\u000bR$\u00109\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\t\"\u0004\b;\u0010\u000bR$\u0010<\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010\u001e\"\u0004\b>\u0010 R$\u0010?\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u0010\t\"\u0004\bA\u0010\u000bR$\u0010B\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u0010\u0012\"\u0004\bD\u0010\u0014¨\u0006_"}, d2 = {"Lgatewayprotocol/v1/ClientInfoKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;", "(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;)V", "value", "", "customMediationName", "getCustomMediationName", "()Ljava/lang/String;", "setCustomMediationName", "(Ljava/lang/String;)V", AndroidGetAdPlayerContext.KEY_GAME_ID, "getGameId", "setGameId", "", "isFidAvailable", "getIsFidAvailable", "()Z", "setIsFidAvailable", "(Z)V", "Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;", "mediationProvider", "getMediationProvider", "()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;", "setMediationProvider", "(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V", "", "mediationProviderValue", "getMediationProviderValue", "()I", "setMediationProviderValue", "(I)V", "mediationVersion", "getMediationVersion", "setMediationVersion", "offerwallVersion", "getOfferwallVersion", "setOfferwallVersion", "omidPartnerVersion", "getOmidPartnerVersion", "setOmidPartnerVersion", "omidVersion", "getOmidVersion", "setOmidVersion", "Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;", TPDownloadProxyEnum.USER_PLATFORM, "getPlatform", "()Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;", "setPlatform", "(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V", "platformValue", "getPlatformValue", "setPlatformValue", "scarVersionName", "getScarVersionName", "setScarVersionName", "sdkDevelopmentPlatform", "getSdkDevelopmentPlatform", "setSdkDevelopmentPlatform", RemoteConfigConstants.RequestFieldKey.SDK_VERSION, "getSdkVersion", "setSdkVersion", "sdkVersionName", "getSdkVersionName", "setSdkVersionName", "test", "getTest", "setTest", "_build", "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;", "clearCustomMediationName", "", "clearGameId", "clearIsFidAvailable", "clearMediationProvider", "clearMediationVersion", "clearOfferwallVersion", "clearOmidPartnerVersion", "clearOmidVersion", "clearPlatform", "clearScarVersionName", "clearSdkDevelopmentPlatform", "clearSdkVersion", "clearSdkVersionName", "clearTest", "hasCustomMediationName", "hasIsFidAvailable", "hasMediationVersion", "hasOfferwallVersion", "hasOmidPartnerVersion", "hasOmidVersion", "hasScarVersionName", "hasSdkDevelopmentPlatform", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final ClientInfoOuterClass.ClientInfo.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/ClientInfoKt$Dsl;", "builder", "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(ClientInfoOuterClass.ClientInfo.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(ClientInfoOuterClass.ClientInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ ClientInfoOuterClass.ClientInfo _build() {
            return this._builder.build();
        }

        public final void clearCustomMediationName() {
            this._builder.clearCustomMediationName();
        }

        public final void clearGameId() {
            this._builder.clearGameId();
        }

        public final void clearIsFidAvailable() {
            this._builder.clearIsFidAvailable();
        }

        public final void clearMediationProvider() {
            this._builder.clearMediationProvider();
        }

        public final void clearMediationVersion() {
            this._builder.clearMediationVersion();
        }

        public final void clearOfferwallVersion() {
            this._builder.clearOfferwallVersion();
        }

        public final void clearOmidPartnerVersion() {
            this._builder.clearOmidPartnerVersion();
        }

        public final void clearOmidVersion() {
            this._builder.clearOmidVersion();
        }

        public final void clearPlatform() {
            this._builder.clearPlatform();
        }

        public final void clearScarVersionName() {
            this._builder.clearScarVersionName();
        }

        public final void clearSdkDevelopmentPlatform() {
            this._builder.clearSdkDevelopmentPlatform();
        }

        public final void clearSdkVersion() {
            this._builder.clearSdkVersion();
        }

        public final void clearSdkVersionName() {
            this._builder.clearSdkVersionName();
        }

        public final void clearTest() {
            this._builder.clearTest();
        }

        @JvmName(name = "getCustomMediationName")
        @NotNull
        public final String getCustomMediationName() {
            return this._builder.getCustomMediationName();
        }

        @JvmName(name = "getGameId")
        @NotNull
        public final String getGameId() {
            return this._builder.getGameId();
        }

        @JvmName(name = "getIsFidAvailable")
        public final boolean getIsFidAvailable() {
            return this._builder.getIsFidAvailable();
        }

        @JvmName(name = "getMediationProvider")
        @NotNull
        public final ClientInfoOuterClass.MediationProvider getMediationProvider() {
            return this._builder.getMediationProvider();
        }

        @JvmName(name = "getMediationProviderValue")
        public final int getMediationProviderValue() {
            return this._builder.getMediationProviderValue();
        }

        @JvmName(name = "getMediationVersion")
        @NotNull
        public final String getMediationVersion() {
            return this._builder.getMediationVersion();
        }

        @JvmName(name = "getOfferwallVersion")
        @NotNull
        public final String getOfferwallVersion() {
            return this._builder.getOfferwallVersion();
        }

        @JvmName(name = "getOmidPartnerVersion")
        @NotNull
        public final String getOmidPartnerVersion() {
            return this._builder.getOmidPartnerVersion();
        }

        @JvmName(name = "getOmidVersion")
        @NotNull
        public final String getOmidVersion() {
            return this._builder.getOmidVersion();
        }

        @JvmName(name = "getPlatform")
        @NotNull
        public final ClientInfoOuterClass.Platform getPlatform() {
            return this._builder.getPlatform();
        }

        @JvmName(name = "getPlatformValue")
        public final int getPlatformValue() {
            return this._builder.getPlatformValue();
        }

        @JvmName(name = "getScarVersionName")
        @NotNull
        public final String getScarVersionName() {
            return this._builder.getScarVersionName();
        }

        @JvmName(name = "getSdkDevelopmentPlatform")
        @NotNull
        public final String getSdkDevelopmentPlatform() {
            return this._builder.getSdkDevelopmentPlatform();
        }

        @JvmName(name = "getSdkVersion")
        public final int getSdkVersion() {
            return this._builder.getSdkVersion();
        }

        @JvmName(name = "getSdkVersionName")
        @NotNull
        public final String getSdkVersionName() {
            return this._builder.getSdkVersionName();
        }

        @JvmName(name = "getTest")
        public final boolean getTest() {
            return this._builder.getTest();
        }

        public final boolean hasCustomMediationName() {
            return this._builder.hasCustomMediationName();
        }

        public final boolean hasIsFidAvailable() {
            return this._builder.hasIsFidAvailable();
        }

        public final boolean hasMediationVersion() {
            return this._builder.hasMediationVersion();
        }

        public final boolean hasOfferwallVersion() {
            return this._builder.hasOfferwallVersion();
        }

        public final boolean hasOmidPartnerVersion() {
            return this._builder.hasOmidPartnerVersion();
        }

        public final boolean hasOmidVersion() {
            return this._builder.hasOmidVersion();
        }

        public final boolean hasScarVersionName() {
            return this._builder.hasScarVersionName();
        }

        public final boolean hasSdkDevelopmentPlatform() {
            return this._builder.hasSdkDevelopmentPlatform();
        }

        @JvmName(name = "setCustomMediationName")
        public final void setCustomMediationName(@NotNull String str) {
            this._builder.setCustomMediationName(str);
        }

        @JvmName(name = "setGameId")
        public final void setGameId(@NotNull String str) {
            this._builder.setGameId(str);
        }

        @JvmName(name = "setIsFidAvailable")
        public final void setIsFidAvailable(boolean z) {
            this._builder.setIsFidAvailable(z);
        }

        @JvmName(name = "setMediationProvider")
        public final void setMediationProvider(@NotNull ClientInfoOuterClass.MediationProvider mediationProvider) {
            this._builder.setMediationProvider(mediationProvider);
        }

        @JvmName(name = "setMediationProviderValue")
        public final void setMediationProviderValue(int i) {
            this._builder.setMediationProviderValue(i);
        }

        @JvmName(name = "setMediationVersion")
        public final void setMediationVersion(@NotNull String str) {
            this._builder.setMediationVersion(str);
        }

        @JvmName(name = "setOfferwallVersion")
        public final void setOfferwallVersion(@NotNull String str) {
            this._builder.setOfferwallVersion(str);
        }

        @JvmName(name = "setOmidPartnerVersion")
        public final void setOmidPartnerVersion(@NotNull String str) {
            this._builder.setOmidPartnerVersion(str);
        }

        @JvmName(name = "setOmidVersion")
        public final void setOmidVersion(@NotNull String str) {
            this._builder.setOmidVersion(str);
        }

        @JvmName(name = "setPlatform")
        public final void setPlatform(@NotNull ClientInfoOuterClass.Platform platform) {
            this._builder.setPlatform(platform);
        }

        @JvmName(name = "setPlatformValue")
        public final void setPlatformValue(int i) {
            this._builder.setPlatformValue(i);
        }

        @JvmName(name = "setScarVersionName")
        public final void setScarVersionName(@NotNull String str) {
            this._builder.setScarVersionName(str);
        }

        @JvmName(name = "setSdkDevelopmentPlatform")
        public final void setSdkDevelopmentPlatform(@NotNull String str) {
            this._builder.setSdkDevelopmentPlatform(str);
        }

        @JvmName(name = "setSdkVersion")
        public final void setSdkVersion(int i) {
            this._builder.setSdkVersion(i);
        }

        @JvmName(name = "setSdkVersionName")
        public final void setSdkVersionName(@NotNull String str) {
            this._builder.setSdkVersionName(str);
        }

        @JvmName(name = "setTest")
        public final void setTest(boolean z) {
            this._builder.setTest(z);
        }

        private Dsl(ClientInfoOuterClass.ClientInfo.Builder builder) {
            this._builder = builder;
        }
    }

    private ClientInfoKt() {
    }
}
