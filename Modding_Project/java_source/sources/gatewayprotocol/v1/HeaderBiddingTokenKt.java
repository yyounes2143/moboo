package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import gatewayprotocol.v1.InitializationDataOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.SessionCountersOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import gatewayprotocol.v1.TestDataOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/HeaderBiddingTokenKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class HeaderBiddingTokenKt {
    @NotNull
    public static final HeaderBiddingTokenKt INSTANCE = new HeaderBiddingTokenKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\"\b\u0007\u0018\u0000 \u009f\u00012\u00020\u0001:\u0002\u009f\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010{\u001a\u00020|H\u0001J\u0006\u0010}\u001a\u00020~J\u0006\u0010\u007f\u001a\u00020~J\u0007\u0010\u0080\u0001\u001a\u00020~J\u0007\u0010\u0081\u0001\u001a\u00020~J\u0007\u0010\u0082\u0001\u001a\u00020~J\u0007\u0010\u0083\u0001\u001a\u00020~J\u0007\u0010\u0084\u0001\u001a\u00020~J\u0007\u0010\u0085\u0001\u001a\u00020~J\u0007\u0010\u0086\u0001\u001a\u00020~J\u0007\u0010\u0087\u0001\u001a\u00020~J\u0007\u0010\u0088\u0001\u001a\u00020~J\u0007\u0010\u0089\u0001\u001a\u00020~J\u0007\u0010\u008a\u0001\u001a\u00020~J\u0007\u0010\u008b\u0001\u001a\u00020~J\u0007\u0010\u008c\u0001\u001a\u00020~J\u0007\u0010\u008d\u0001\u001a\u00020~J\u0007\u0010\u008e\u0001\u001a\u00020~J\u0007\u0010\u008f\u0001\u001a\u00020~J\u0007\u0010\u0090\u0001\u001a\u000200J\u0007\u0010\u0091\u0001\u001a\u000200J\u0007\u0010\u0092\u0001\u001a\u000200J\u0007\u0010\u0093\u0001\u001a\u000200J\u0007\u0010\u0094\u0001\u001a\u000200J\u0007\u0010\u0095\u0001\u001a\u000200J\u0007\u0010\u0096\u0001\u001a\u000200J\u0007\u0010\u0097\u0001\u001a\u000200J\u0007\u0010\u0098\u0001\u001a\u000200J\u0007\u0010\u0099\u0001\u001a\u000200J\u0007\u0010\u009a\u0001\u001a\u000200J\u0007\u0010\u009b\u0001\u001a\u000200J\u0007\u0010\u009c\u0001\u001a\u000200J\u0007\u0010\u009d\u0001\u001a\u000200J\u0007\u0010\u009e\u0001\u001a\u000200R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010<\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u00103\"\u0004\b>\u00105R$\u0010@\u001a\u00020?2\u0006\u0010\u0005\u001a\u00020?8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR$\u0010F\u001a\u00020E2\u0006\u0010\u0005\u001a\u00020E8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR$\u0010L\u001a\u00020K2\u0006\u0010\u0005\u001a\u00020K8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR$\u0010Q\u001a\u00020E2\u0006\u0010\u0005\u001a\u00020E8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bR\u0010H\"\u0004\bS\u0010JR$\u0010U\u001a\u00020T2\u0006\u0010\u0005\u001a\u00020T8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR$\u0010[\u001a\u00020Z2\u0006\u0010\u0005\u001a\u00020Z8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R$\u0010a\u001a\u00020`2\u0006\u0010\u0005\u001a\u00020`8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR$\u0010f\u001a\u00020E2\u0006\u0010\u0005\u001a\u00020E8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bg\u0010H\"\u0004\bh\u0010JR$\u0010i\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bj\u0010\u000f\"\u0004\bk\u0010\u0011R\u0017\u0010l\u001a\u0004\u0018\u00010$*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bm\u0010nR\u0017\u0010o\u001a\u0004\u0018\u00010**\u00020\u00008F¢\u0006\u0006\u001a\u0004\bp\u0010qR\u0017\u0010r\u001a\u0004\u0018\u000106*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bs\u0010tR\u0017\u0010u\u001a\u0004\u0018\u00010T*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bv\u0010wR\u0017\u0010x\u001a\u0004\u0018\u00010`*\u00020\u00008F¢\u0006\u0006\u001a\u0004\by\u0010z¨\u0006 \u0001"}, d2 = {"Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;", "(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;)V", "value", "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;", "adFormat", "getAdFormat", "()Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;", "setAdFormat", "(Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;)V", "", "adFormatValue", "getAdFormatValue", "()I", "setAdFormatValue", "(I)V", "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;", "campaignState", "getCampaignState", "()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;", "setCampaignState", "(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V", "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;", "clientInfo", "getClientInfo", "()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;", "setClientInfo", "(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V", "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "dynamicDeviceInfo", "getDynamicDeviceInfo", "()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "setDynamicDeviceInfo", "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V", "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;", "initializationData", "getInitializationData", "()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;", "setInitializationData", "(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;)V", "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "limitedSessionToken", "getLimitedSessionToken", "()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "setLimitedSessionToken", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V", "", "offerwallEnabled", "getOfferwallEnabled", "()Z", "setOfferwallEnabled", "(Z)V", "Lgatewayprotocol/v1/PiiOuterClass$Pii;", "pii", "getPii", "()Lgatewayprotocol/v1/PiiOuterClass$Pii;", "setPii", "(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V", "scarSignalsCollected", "getScarSignalsCollected", "setScarSignalsCollected", "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;", "sessionCounters", "getSessionCounters", "()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;", "setSessionCounters", "(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V", "Lcom/google/protobuf/ByteString;", "sessionToken", "getSessionToken", "()Lcom/google/protobuf/ByteString;", "setSessionToken", "(Lcom/google/protobuf/ByteString;)V", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "staticDeviceInfo", "getStaticDeviceInfo", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "setStaticDeviceInfo", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V", "tcf", "getTcf", "setTcf", "Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "testData", "getTestData", "()Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "setTestData", "(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V", "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "timestamps", "getTimestamps", "()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "setTimestamps", "(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V", "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;", "tokenCounters", "getTokenCounters", "()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;", "setTokenCounters", "(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;)V", "tokenId", "getTokenId", "setTokenId", "tokenNumber", "getTokenNumber", "setTokenNumber", "initializationDataOrNull", "getInitializationDataOrNull", "(Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;", "limitedSessionTokenOrNull", "getLimitedSessionTokenOrNull", "(Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "piiOrNull", "getPiiOrNull", "(Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;)Lgatewayprotocol/v1/PiiOuterClass$Pii;", "testDataOrNull", "getTestDataOrNull", "(Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "tokenCountersOrNull", "getTokenCountersOrNull", "(Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;", "_build", "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;", "clearAdFormat", "", "clearCampaignState", "clearClientInfo", "clearDynamicDeviceInfo", "clearInitializationData", "clearLimitedSessionToken", "clearOfferwallEnabled", "clearPii", "clearScarSignalsCollected", "clearSessionCounters", "clearSessionToken", "clearStaticDeviceInfo", "clearTcf", "clearTestData", "clearTimestamps", "clearTokenCounters", "clearTokenId", "clearTokenNumber", "hasAdFormat", "hasCampaignState", "hasClientInfo", "hasDynamicDeviceInfo", "hasInitializationData", "hasLimitedSessionToken", "hasOfferwallEnabled", "hasPii", "hasScarSignalsCollected", "hasSessionCounters", "hasStaticDeviceInfo", "hasTcf", "hasTestData", "hasTimestamps", "hasTokenCounters", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final HeaderBiddingTokenOuterClass.HeaderBiddingToken.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/HeaderBiddingTokenKt$Dsl;", "builder", "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(HeaderBiddingTokenOuterClass.HeaderBiddingToken.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(HeaderBiddingTokenOuterClass.HeaderBiddingToken.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ HeaderBiddingTokenOuterClass.HeaderBiddingToken _build() {
            return this._builder.build();
        }

        public final void clearAdFormat() {
            this._builder.clearAdFormat();
        }

        public final void clearCampaignState() {
            this._builder.clearCampaignState();
        }

        public final void clearClientInfo() {
            this._builder.clearClientInfo();
        }

        public final void clearDynamicDeviceInfo() {
            this._builder.clearDynamicDeviceInfo();
        }

        public final void clearInitializationData() {
            this._builder.clearInitializationData();
        }

        public final void clearLimitedSessionToken() {
            this._builder.clearLimitedSessionToken();
        }

        public final void clearOfferwallEnabled() {
            this._builder.clearOfferwallEnabled();
        }

        public final void clearPii() {
            this._builder.clearPii();
        }

        public final void clearScarSignalsCollected() {
            this._builder.clearScarSignalsCollected();
        }

        public final void clearSessionCounters() {
            this._builder.clearSessionCounters();
        }

        public final void clearSessionToken() {
            this._builder.clearSessionToken();
        }

        public final void clearStaticDeviceInfo() {
            this._builder.clearStaticDeviceInfo();
        }

        public final void clearTcf() {
            this._builder.clearTcf();
        }

        public final void clearTestData() {
            this._builder.clearTestData();
        }

        public final void clearTimestamps() {
            this._builder.clearTimestamps();
        }

        public final void clearTokenCounters() {
            this._builder.clearTokenCounters();
        }

        public final void clearTokenId() {
            this._builder.clearTokenId();
        }

        public final void clearTokenNumber() {
            this._builder.clearTokenNumber();
        }

        @JvmName(name = "getAdFormat")
        @NotNull
        public final InitializationResponseOuterClass.AdFormat getAdFormat() {
            return this._builder.getAdFormat();
        }

        @JvmName(name = "getAdFormatValue")
        public final int getAdFormatValue() {
            return this._builder.getAdFormatValue();
        }

        @JvmName(name = "getCampaignState")
        @NotNull
        public final CampaignStateOuterClass.CampaignState getCampaignState() {
            return this._builder.getCampaignState();
        }

        @JvmName(name = "getClientInfo")
        @NotNull
        public final ClientInfoOuterClass.ClientInfo getClientInfo() {
            return this._builder.getClientInfo();
        }

        @JvmName(name = "getDynamicDeviceInfo")
        @NotNull
        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
            return this._builder.getDynamicDeviceInfo();
        }

        @JvmName(name = "getInitializationData")
        @NotNull
        public final InitializationDataOuterClass.InitializationData getInitializationData() {
            return this._builder.getInitializationData();
        }

        @Nullable
        public final InitializationDataOuterClass.InitializationData getInitializationDataOrNull(@NotNull Dsl dsl) {
            return HeaderBiddingTokenKtKt.getInitializationDataOrNull(dsl._builder);
        }

        @JvmName(name = "getLimitedSessionToken")
        @NotNull
        public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionToken() {
            return this._builder.getLimitedSessionToken();
        }

        @Nullable
        public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionTokenOrNull(@NotNull Dsl dsl) {
            return HeaderBiddingTokenKtKt.getLimitedSessionTokenOrNull(dsl._builder);
        }

        @JvmName(name = "getOfferwallEnabled")
        public final boolean getOfferwallEnabled() {
            return this._builder.getOfferwallEnabled();
        }

        @JvmName(name = "getPii")
        @NotNull
        public final PiiOuterClass.Pii getPii() {
            return this._builder.getPii();
        }

        @Nullable
        public final PiiOuterClass.Pii getPiiOrNull(@NotNull Dsl dsl) {
            return HeaderBiddingTokenKtKt.getPiiOrNull(dsl._builder);
        }

        @JvmName(name = "getScarSignalsCollected")
        public final boolean getScarSignalsCollected() {
            return this._builder.getScarSignalsCollected();
        }

        @JvmName(name = "getSessionCounters")
        @NotNull
        public final SessionCountersOuterClass.SessionCounters getSessionCounters() {
            return this._builder.getSessionCounters();
        }

        @JvmName(name = "getSessionToken")
        @NotNull
        public final ByteString getSessionToken() {
            return this._builder.getSessionToken();
        }

        @JvmName(name = "getStaticDeviceInfo")
        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo() {
            return this._builder.getStaticDeviceInfo();
        }

        @JvmName(name = "getTcf")
        @NotNull
        public final ByteString getTcf() {
            return this._builder.getTcf();
        }

        @JvmName(name = "getTestData")
        @NotNull
        public final TestDataOuterClass.TestData getTestData() {
            return this._builder.getTestData();
        }

        @Nullable
        public final TestDataOuterClass.TestData getTestDataOrNull(@NotNull Dsl dsl) {
            return HeaderBiddingTokenKtKt.getTestDataOrNull(dsl._builder);
        }

        @JvmName(name = "getTimestamps")
        @NotNull
        public final TimestampsOuterClass.Timestamps getTimestamps() {
            return this._builder.getTimestamps();
        }

        @JvmName(name = "getTokenCounters")
        @NotNull
        public final HeaderBiddingTokenOuterClass.TokenCounters getTokenCounters() {
            return this._builder.getTokenCounters();
        }

        @Nullable
        public final HeaderBiddingTokenOuterClass.TokenCounters getTokenCountersOrNull(@NotNull Dsl dsl) {
            return HeaderBiddingTokenKtKt.getTokenCountersOrNull(dsl._builder);
        }

        @JvmName(name = "getTokenId")
        @NotNull
        public final ByteString getTokenId() {
            return this._builder.getTokenId();
        }

        @JvmName(name = "getTokenNumber")
        public final int getTokenNumber() {
            return this._builder.getTokenNumber();
        }

        public final boolean hasAdFormat() {
            return this._builder.hasAdFormat();
        }

        public final boolean hasCampaignState() {
            return this._builder.hasCampaignState();
        }

        public final boolean hasClientInfo() {
            return this._builder.hasClientInfo();
        }

        public final boolean hasDynamicDeviceInfo() {
            return this._builder.hasDynamicDeviceInfo();
        }

        public final boolean hasInitializationData() {
            return this._builder.hasInitializationData();
        }

        public final boolean hasLimitedSessionToken() {
            return this._builder.hasLimitedSessionToken();
        }

        public final boolean hasOfferwallEnabled() {
            return this._builder.hasOfferwallEnabled();
        }

        public final boolean hasPii() {
            return this._builder.hasPii();
        }

        public final boolean hasScarSignalsCollected() {
            return this._builder.hasScarSignalsCollected();
        }

        public final boolean hasSessionCounters() {
            return this._builder.hasSessionCounters();
        }

        public final boolean hasStaticDeviceInfo() {
            return this._builder.hasStaticDeviceInfo();
        }

        public final boolean hasTcf() {
            return this._builder.hasTcf();
        }

        public final boolean hasTestData() {
            return this._builder.hasTestData();
        }

        public final boolean hasTimestamps() {
            return this._builder.hasTimestamps();
        }

        public final boolean hasTokenCounters() {
            return this._builder.hasTokenCounters();
        }

        @JvmName(name = "setAdFormat")
        public final void setAdFormat(@NotNull InitializationResponseOuterClass.AdFormat adFormat) {
            this._builder.setAdFormat(adFormat);
        }

        @JvmName(name = "setAdFormatValue")
        public final void setAdFormatValue(int i) {
            this._builder.setAdFormatValue(i);
        }

        @JvmName(name = "setCampaignState")
        public final void setCampaignState(@NotNull CampaignStateOuterClass.CampaignState campaignState) {
            this._builder.setCampaignState(campaignState);
        }

        @JvmName(name = "setClientInfo")
        public final void setClientInfo(@NotNull ClientInfoOuterClass.ClientInfo clientInfo) {
            this._builder.setClientInfo(clientInfo);
        }

        @JvmName(name = "setDynamicDeviceInfo")
        public final void setDynamicDeviceInfo(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo) {
            this._builder.setDynamicDeviceInfo(dynamicDeviceInfo);
        }

        @JvmName(name = "setInitializationData")
        public final void setInitializationData(@NotNull InitializationDataOuterClass.InitializationData initializationData) {
            this._builder.setInitializationData(initializationData);
        }

        @JvmName(name = "setLimitedSessionToken")
        public final void setLimitedSessionToken(@NotNull UniversalRequestOuterClass.LimitedSessionToken limitedSessionToken) {
            this._builder.setLimitedSessionToken(limitedSessionToken);
        }

        @JvmName(name = "setOfferwallEnabled")
        public final void setOfferwallEnabled(boolean z) {
            this._builder.setOfferwallEnabled(z);
        }

        @JvmName(name = "setPii")
        public final void setPii(@NotNull PiiOuterClass.Pii pii) {
            this._builder.setPii(pii);
        }

        @JvmName(name = "setScarSignalsCollected")
        public final void setScarSignalsCollected(boolean z) {
            this._builder.setScarSignalsCollected(z);
        }

        @JvmName(name = "setSessionCounters")
        public final void setSessionCounters(@NotNull SessionCountersOuterClass.SessionCounters sessionCounters) {
            this._builder.setSessionCounters(sessionCounters);
        }

        @JvmName(name = "setSessionToken")
        public final void setSessionToken(@NotNull ByteString byteString) {
            this._builder.setSessionToken(byteString);
        }

        @JvmName(name = "setStaticDeviceInfo")
        public final void setStaticDeviceInfo(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo) {
            this._builder.setStaticDeviceInfo(staticDeviceInfo);
        }

        @JvmName(name = "setTcf")
        public final void setTcf(@NotNull ByteString byteString) {
            this._builder.setTcf(byteString);
        }

        @JvmName(name = "setTestData")
        public final void setTestData(@NotNull TestDataOuterClass.TestData testData) {
            this._builder.setTestData(testData);
        }

        @JvmName(name = "setTimestamps")
        public final void setTimestamps(@NotNull TimestampsOuterClass.Timestamps timestamps) {
            this._builder.setTimestamps(timestamps);
        }

        @JvmName(name = "setTokenCounters")
        public final void setTokenCounters(@NotNull HeaderBiddingTokenOuterClass.TokenCounters tokenCounters) {
            this._builder.setTokenCounters(tokenCounters);
        }

        @JvmName(name = "setTokenId")
        public final void setTokenId(@NotNull ByteString byteString) {
            this._builder.setTokenId(byteString);
        }

        @JvmName(name = "setTokenNumber")
        public final void setTokenNumber(int i) {
            this._builder.setTokenNumber(i);
        }

        private Dsl(HeaderBiddingTokenOuterClass.HeaderBiddingToken.Builder builder) {
            this._builder = builder;
        }
    }

    private HeaderBiddingTokenKt() {
    }
}
