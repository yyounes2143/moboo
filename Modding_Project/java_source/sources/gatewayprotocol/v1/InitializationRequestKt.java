package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class InitializationRequestKt {
    @NotNull
    public static final InitializationRequestKt INSTANCE = new InitializationRequestKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0016\b\u0007\u0018\u0000 Q2\u00020\u0001:\u0001QB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u00109\u001a\u00020:H\u0001J\u0006\u0010;\u001a\u00020<J\u0006\u0010=\u001a\u00020<J\u0006\u0010>\u001a\u00020<J\u0006\u0010?\u001a\u00020<J\u0006\u0010@\u001a\u00020<J\u0006\u0010A\u001a\u00020<J\u0006\u0010B\u001a\u00020<J\u0006\u0010C\u001a\u00020<J\u0006\u0010D\u001a\u00020<J\u0006\u0010E\u001a\u00020<J\u0006\u0010F\u001a\u00020<J\u0006\u0010G\u001a\u00020<J\u0006\u0010H\u001a\u00020'J\u0006\u0010I\u001a\u00020'J\u0006\u0010J\u001a\u00020'J\u0006\u0010K\u001a\u00020'J\u0006\u0010L\u001a\u00020'J\u0006\u0010M\u001a\u00020'J\u0006\u0010N\u001a\u00020'J\u0006\u0010O\u001a\u00020'J\u0006\u0010P\u001a\u00020'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR$\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020'8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R$\u0010-\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\t\"\u0004\b/\u0010\u000bR$\u00100\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\u000f\"\u0004\b2\u0010\u0011R$\u00103\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\u000f\"\u0004\b5\u0010\u0011R$\u00106\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\u000f\"\u0004\b8\u0010\u0011¨\u0006R"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V", "value", "", "analyticsUserId", "getAnalyticsUserId", "()Ljava/lang/String;", "setAnalyticsUserId", "(Ljava/lang/String;)V", "Lcom/google/protobuf/ByteString;", "auid", "getAuid", "()Lcom/google/protobuf/ByteString;", "setAuid", "(Lcom/google/protobuf/ByteString;)V", "auidString", "getAuidString", "setAuidString", "cache", "getCache", "setCache", "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;", "clientInfo", "getClientInfo", "()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;", "setClientInfo", "(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "deviceInfo", "getDeviceInfo", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "setDeviceInfo", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V", ScarConstants.IDFI_KEY, "getIdfi", "setIdfi", "", "isFirstInit", "getIsFirstInit", "()Z", "setIsFirstInit", "(Z)V", "legacyFlowUserConsent", "getLegacyFlowUserConsent", "setLegacyFlowUserConsent", "privacy", "getPrivacy", "setPrivacy", JsonStorageKeyNames.SESSION_ID_KEY, "getSessionId", "setSessionId", "uadsInitBlob", "getUadsInitBlob", "setUadsInitBlob", "_build", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "clearAnalyticsUserId", "", "clearAuid", "clearAuidString", "clearCache", "clearClientInfo", "clearDeviceInfo", "clearIdfi", "clearIsFirstInit", "clearLegacyFlowUserConsent", "clearPrivacy", "clearSessionId", "clearUadsInitBlob", "hasAnalyticsUserId", "hasAuid", "hasAuidString", "hasCache", "hasClientInfo", "hasDeviceInfo", "hasLegacyFlowUserConsent", "hasPrivacy", "hasUadsInitBlob", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final InitializationRequestOuterClass.InitializationRequest.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/InitializationRequestKt$Dsl;", "builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.InitializationRequest.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(InitializationRequestOuterClass.InitializationRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ InitializationRequestOuterClass.InitializationRequest _build() {
            return this._builder.build();
        }

        public final void clearAnalyticsUserId() {
            this._builder.clearAnalyticsUserId();
        }

        public final void clearAuid() {
            this._builder.clearAuid();
        }

        public final void clearAuidString() {
            this._builder.clearAuidString();
        }

        public final void clearCache() {
            this._builder.clearCache();
        }

        public final void clearClientInfo() {
            this._builder.clearClientInfo();
        }

        public final void clearDeviceInfo() {
            this._builder.clearDeviceInfo();
        }

        public final void clearIdfi() {
            this._builder.clearIdfi();
        }

        public final void clearIsFirstInit() {
            this._builder.clearIsFirstInit();
        }

        public final void clearLegacyFlowUserConsent() {
            this._builder.clearLegacyFlowUserConsent();
        }

        public final void clearPrivacy() {
            this._builder.clearPrivacy();
        }

        public final void clearSessionId() {
            this._builder.clearSessionId();
        }

        public final void clearUadsInitBlob() {
            this._builder.clearUadsInitBlob();
        }

        @JvmName(name = "getAnalyticsUserId")
        @NotNull
        public final String getAnalyticsUserId() {
            return this._builder.getAnalyticsUserId();
        }

        @JvmName(name = "getAuid")
        @NotNull
        public final ByteString getAuid() {
            return this._builder.getAuid();
        }

        @JvmName(name = "getAuidString")
        @NotNull
        public final String getAuidString() {
            return this._builder.getAuidString();
        }

        @JvmName(name = "getCache")
        @NotNull
        public final ByteString getCache() {
            return this._builder.getCache();
        }

        @JvmName(name = "getClientInfo")
        @NotNull
        public final ClientInfoOuterClass.ClientInfo getClientInfo() {
            return this._builder.getClientInfo();
        }

        @JvmName(name = "getDeviceInfo")
        @NotNull
        public final InitializationRequestOuterClass.InitializationDeviceInfo getDeviceInfo() {
            return this._builder.getDeviceInfo();
        }

        @JvmName(name = "getIdfi")
        @NotNull
        public final String getIdfi() {
            return this._builder.getIdfi();
        }

        @JvmName(name = "getIsFirstInit")
        public final boolean getIsFirstInit() {
            return this._builder.getIsFirstInit();
        }

        @JvmName(name = "getLegacyFlowUserConsent")
        @NotNull
        public final String getLegacyFlowUserConsent() {
            return this._builder.getLegacyFlowUserConsent();
        }

        @JvmName(name = "getPrivacy")
        @NotNull
        public final ByteString getPrivacy() {
            return this._builder.getPrivacy();
        }

        @JvmName(name = "getSessionId")
        @NotNull
        public final ByteString getSessionId() {
            return this._builder.getSessionId();
        }

        @JvmName(name = "getUadsInitBlob")
        @NotNull
        public final ByteString getUadsInitBlob() {
            return this._builder.getUadsInitBlob();
        }

        public final boolean hasAnalyticsUserId() {
            return this._builder.hasAnalyticsUserId();
        }

        public final boolean hasAuid() {
            return this._builder.hasAuid();
        }

        public final boolean hasAuidString() {
            return this._builder.hasAuidString();
        }

        public final boolean hasCache() {
            return this._builder.hasCache();
        }

        public final boolean hasClientInfo() {
            return this._builder.hasClientInfo();
        }

        public final boolean hasDeviceInfo() {
            return this._builder.hasDeviceInfo();
        }

        public final boolean hasLegacyFlowUserConsent() {
            return this._builder.hasLegacyFlowUserConsent();
        }

        public final boolean hasPrivacy() {
            return this._builder.hasPrivacy();
        }

        public final boolean hasUadsInitBlob() {
            return this._builder.hasUadsInitBlob();
        }

        @JvmName(name = "setAnalyticsUserId")
        public final void setAnalyticsUserId(@NotNull String str) {
            this._builder.setAnalyticsUserId(str);
        }

        @JvmName(name = "setAuid")
        public final void setAuid(@NotNull ByteString byteString) {
            this._builder.setAuid(byteString);
        }

        @JvmName(name = "setAuidString")
        public final void setAuidString(@NotNull String str) {
            this._builder.setAuidString(str);
        }

        @JvmName(name = "setCache")
        public final void setCache(@NotNull ByteString byteString) {
            this._builder.setCache(byteString);
        }

        @JvmName(name = "setClientInfo")
        public final void setClientInfo(@NotNull ClientInfoOuterClass.ClientInfo clientInfo) {
            this._builder.setClientInfo(clientInfo);
        }

        @JvmName(name = "setDeviceInfo")
        public final void setDeviceInfo(@NotNull InitializationRequestOuterClass.InitializationDeviceInfo initializationDeviceInfo) {
            this._builder.setDeviceInfo(initializationDeviceInfo);
        }

        @JvmName(name = "setIdfi")
        public final void setIdfi(@NotNull String str) {
            this._builder.setIdfi(str);
        }

        @JvmName(name = "setIsFirstInit")
        public final void setIsFirstInit(boolean z) {
            this._builder.setIsFirstInit(z);
        }

        @JvmName(name = "setLegacyFlowUserConsent")
        public final void setLegacyFlowUserConsent(@NotNull String str) {
            this._builder.setLegacyFlowUserConsent(str);
        }

        @JvmName(name = "setPrivacy")
        public final void setPrivacy(@NotNull ByteString byteString) {
            this._builder.setPrivacy(byteString);
        }

        @JvmName(name = "setSessionId")
        public final void setSessionId(@NotNull ByteString byteString) {
            this._builder.setSessionId(byteString);
        }

        @JvmName(name = "setUadsInitBlob")
        public final void setUadsInitBlob(@NotNull ByteString byteString) {
            this._builder.setUadsInitBlob(byteString);
        }

        private Dsl(InitializationRequestOuterClass.InitializationRequest.Builder builder) {
            this._builder = builder;
        }
    }

    private InitializationRequestKt() {
    }
}
