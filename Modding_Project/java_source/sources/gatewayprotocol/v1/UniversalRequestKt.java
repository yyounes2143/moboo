package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdDataRefreshRequestOuterClass;
import gatewayprotocol.v1.AdPlayerConfigRequestOuterClass;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import gatewayprotocol.v1.InitializationCompletedEventRequestOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.PrivacyUpdateRequestOuterClass;
import gatewayprotocol.v1.TestDataOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\nJ*\u0010\u000b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt;", "", "()V", "payload", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializepayload", "sharedData", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;", "-initializesharedData", "Dsl", "PayloadKt", "SharedDataKt", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUniversalRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,939:1\n1#2:940\n*E\n"})
/* loaded from: classes6.dex */
public final class UniversalRequestKt {
    @NotNull
    public static final UniversalRequestKt INSTANCE = new UniversalRequestKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Builder;", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Builder;)V", "value", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "payload", "getPayload", "()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "setPayload", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "sharedData", "getSharedData", "()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "setSharedData", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V", "_build", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "clearPayload", "", "clearSharedData", "hasPayload", "", "hasSharedData", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final UniversalRequestOuterClass.UniversalRequest.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/UniversalRequestKt$Dsl;", "builder", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest _build() {
            return this._builder.build();
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        public final void clearSharedData() {
            this._builder.clearSharedData();
        }

        @JvmName(name = "getPayload")
        @NotNull
        public final UniversalRequestOuterClass.UniversalRequest.Payload getPayload() {
            return this._builder.getPayload();
        }

        @JvmName(name = "getSharedData")
        @NotNull
        public final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedData() {
            return this._builder.getSharedData();
        }

        public final boolean hasPayload() {
            return this._builder.hasPayload();
        }

        public final boolean hasSharedData() {
            return this._builder.hasSharedData();
        }

        @JvmName(name = "setPayload")
        public final void setPayload(@NotNull UniversalRequestOuterClass.UniversalRequest.Payload payload) {
            this._builder.setPayload(payload);
        }

        @JvmName(name = "setSharedData")
        public final void setSharedData(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedData sharedData) {
            this._builder.setSharedData(sharedData);
        }

        private Dsl(UniversalRequestOuterClass.UniversalRequest.Builder builder) {
            this._builder = builder;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class PayloadKt {
        @NotNull
        public static final PayloadKt INSTANCE = new PayloadKt();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0007\u0018\u0000 _2\u00020\u0001:\u0001_B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010F\u001a\u00020GH\u0001J\u0006\u0010H\u001a\u00020IJ\u0006\u0010J\u001a\u00020IJ\u0006\u0010K\u001a\u00020IJ\u0006\u0010L\u001a\u00020IJ\u0006\u0010M\u001a\u00020IJ\u0006\u0010N\u001a\u00020IJ\u0006\u0010O\u001a\u00020IJ\u0006\u0010P\u001a\u00020IJ\u0006\u0010Q\u001a\u00020IJ\u0006\u0010R\u001a\u00020IJ\u0006\u0010S\u001a\u00020IJ\u0006\u0010T\u001a\u00020UJ\u0006\u0010V\u001a\u00020UJ\u0006\u0010W\u001a\u00020UJ\u0006\u0010X\u001a\u00020UJ\u0006\u0010Y\u001a\u00020UJ\u0006\u0010Z\u001a\u00020UJ\u0006\u0010[\u001a\u00020UJ\u0006\u0010\\\u001a\u00020UJ\u0006\u0010]\u001a\u00020UJ\u0006\u0010^\u001a\u00020UR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010=\u001a\u00020<2\u0006\u0010\u0005\u001a\u00020<8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0011\u0010B\u001a\u00020C8G¢\u0006\u0006\u001a\u0004\bD\u0010E¨\u0006`"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)V", "value", "Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "adDataRefreshRequest", "getAdDataRefreshRequest", "()Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "setAdDataRefreshRequest", "(Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V", "Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "adPlayerConfigRequest", "getAdPlayerConfigRequest", "()Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "setAdPlayerConfigRequest", "(Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V", "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;", "adRequest", "getAdRequest", "()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;", "setAdRequest", "(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "diagnosticEventRequest", "getDiagnosticEventRequest", "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "setDiagnosticEventRequest", "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V", "Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "getTokenEventRequest", "getGetTokenEventRequest", "()Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "setGetTokenEventRequest", "(Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V", "Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "initializationCompletedEventRequest", "getInitializationCompletedEventRequest", "()Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "setInitializationCompletedEventRequest", "(Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "initializationRequest", "getInitializationRequest", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "setInitializationRequest", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "operativeEvent", "getOperativeEvent", "()Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "setOperativeEvent", "(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V", "Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "privacyUpdateRequest", "getPrivacyUpdateRequest", "()Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "setPrivacyUpdateRequest", "(Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;", "transactionEventRequest", "getTransactionEventRequest", "()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;", "setTransactionEventRequest", "(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V", "valueCase", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;", "getValueCase", "()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;", "_build", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "clearAdDataRefreshRequest", "", "clearAdPlayerConfigRequest", "clearAdRequest", "clearDiagnosticEventRequest", "clearGetTokenEventRequest", "clearInitializationCompletedEventRequest", "clearInitializationRequest", "clearOperativeEvent", "clearPrivacyUpdateRequest", "clearTransactionEventRequest", "clearValue", "hasAdDataRefreshRequest", "", "hasAdPlayerConfigRequest", "hasAdRequest", "hasDiagnosticEventRequest", "hasGetTokenEventRequest", "hasInitializationCompletedEventRequest", "hasInitializationRequest", "hasOperativeEvent", "hasPrivacyUpdateRequest", "hasTransactionEventRequest", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @ProtoDslMarker
        /* loaded from: classes6.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final UniversalRequestOuterClass.UniversalRequest.Payload.Builder _builder;

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;", "builder", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @PublishedApi
                public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder) {
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            @PublishedApi
            public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.Payload _build() {
                return this._builder.build();
            }

            public final void clearAdDataRefreshRequest() {
                this._builder.clearAdDataRefreshRequest();
            }

            public final void clearAdPlayerConfigRequest() {
                this._builder.clearAdPlayerConfigRequest();
            }

            public final void clearAdRequest() {
                this._builder.clearAdRequest();
            }

            public final void clearDiagnosticEventRequest() {
                this._builder.clearDiagnosticEventRequest();
            }

            public final void clearGetTokenEventRequest() {
                this._builder.clearGetTokenEventRequest();
            }

            public final void clearInitializationCompletedEventRequest() {
                this._builder.clearInitializationCompletedEventRequest();
            }

            public final void clearInitializationRequest() {
                this._builder.clearInitializationRequest();
            }

            public final void clearOperativeEvent() {
                this._builder.clearOperativeEvent();
            }

            public final void clearPrivacyUpdateRequest() {
                this._builder.clearPrivacyUpdateRequest();
            }

            public final void clearTransactionEventRequest() {
                this._builder.clearTransactionEventRequest();
            }

            public final void clearValue() {
                this._builder.clearValue();
            }

            @JvmName(name = "getAdDataRefreshRequest")
            @NotNull
            public final AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequest() {
                return this._builder.getAdDataRefreshRequest();
            }

            @JvmName(name = "getAdPlayerConfigRequest")
            @NotNull
            public final AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequest() {
                return this._builder.getAdPlayerConfigRequest();
            }

            @JvmName(name = "getAdRequest")
            @NotNull
            public final AdRequestOuterClass.AdRequest getAdRequest() {
                return this._builder.getAdRequest();
            }

            @JvmName(name = "getDiagnosticEventRequest")
            @NotNull
            public final DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequest() {
                return this._builder.getDiagnosticEventRequest();
            }

            @JvmName(name = "getGetTokenEventRequest")
            @NotNull
            public final GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequest() {
                return this._builder.getGetTokenEventRequest();
            }

            @JvmName(name = "getInitializationCompletedEventRequest")
            @NotNull
            public final InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequest() {
                return this._builder.getInitializationCompletedEventRequest();
            }

            @JvmName(name = "getInitializationRequest")
            @NotNull
            public final InitializationRequestOuterClass.InitializationRequest getInitializationRequest() {
                return this._builder.getInitializationRequest();
            }

            @JvmName(name = "getOperativeEvent")
            @NotNull
            public final OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEvent() {
                return this._builder.getOperativeEvent();
            }

            @JvmName(name = "getPrivacyUpdateRequest")
            @NotNull
            public final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequest() {
                return this._builder.getPrivacyUpdateRequest();
            }

            @JvmName(name = "getTransactionEventRequest")
            @NotNull
            public final TransactionEventRequestOuterClass.TransactionEventRequest getTransactionEventRequest() {
                return this._builder.getTransactionEventRequest();
            }

            @JvmName(name = "getValueCase")
            @NotNull
            public final UniversalRequestOuterClass.UniversalRequest.Payload.ValueCase getValueCase() {
                return this._builder.getValueCase();
            }

            public final boolean hasAdDataRefreshRequest() {
                return this._builder.hasAdDataRefreshRequest();
            }

            public final boolean hasAdPlayerConfigRequest() {
                return this._builder.hasAdPlayerConfigRequest();
            }

            public final boolean hasAdRequest() {
                return this._builder.hasAdRequest();
            }

            public final boolean hasDiagnosticEventRequest() {
                return this._builder.hasDiagnosticEventRequest();
            }

            public final boolean hasGetTokenEventRequest() {
                return this._builder.hasGetTokenEventRequest();
            }

            public final boolean hasInitializationCompletedEventRequest() {
                return this._builder.hasInitializationCompletedEventRequest();
            }

            public final boolean hasInitializationRequest() {
                return this._builder.hasInitializationRequest();
            }

            public final boolean hasOperativeEvent() {
                return this._builder.hasOperativeEvent();
            }

            public final boolean hasPrivacyUpdateRequest() {
                return this._builder.hasPrivacyUpdateRequest();
            }

            public final boolean hasTransactionEventRequest() {
                return this._builder.hasTransactionEventRequest();
            }

            @JvmName(name = "setAdDataRefreshRequest")
            public final void setAdDataRefreshRequest(@NotNull AdDataRefreshRequestOuterClass.AdDataRefreshRequest adDataRefreshRequest) {
                this._builder.setAdDataRefreshRequest(adDataRefreshRequest);
            }

            @JvmName(name = "setAdPlayerConfigRequest")
            public final void setAdPlayerConfigRequest(@NotNull AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest adPlayerConfigRequest) {
                this._builder.setAdPlayerConfigRequest(adPlayerConfigRequest);
            }

            @JvmName(name = "setAdRequest")
            public final void setAdRequest(@NotNull AdRequestOuterClass.AdRequest adRequest) {
                this._builder.setAdRequest(adRequest);
            }

            @JvmName(name = "setDiagnosticEventRequest")
            public final void setDiagnosticEventRequest(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest) {
                this._builder.setDiagnosticEventRequest(diagnosticEventRequest);
            }

            @JvmName(name = "setGetTokenEventRequest")
            public final void setGetTokenEventRequest(@NotNull GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequest) {
                this._builder.setGetTokenEventRequest(getTokenEventRequest);
            }

            @JvmName(name = "setInitializationCompletedEventRequest")
            public final void setInitializationCompletedEventRequest(@NotNull InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest initializationCompletedEventRequest) {
                this._builder.setInitializationCompletedEventRequest(initializationCompletedEventRequest);
            }

            @JvmName(name = "setInitializationRequest")
            public final void setInitializationRequest(@NotNull InitializationRequestOuterClass.InitializationRequest initializationRequest) {
                this._builder.setInitializationRequest(initializationRequest);
            }

            @JvmName(name = "setOperativeEvent")
            public final void setOperativeEvent(@NotNull OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest) {
                this._builder.setOperativeEvent(operativeEventRequest);
            }

            @JvmName(name = "setPrivacyUpdateRequest")
            public final void setPrivacyUpdateRequest(@NotNull PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest) {
                this._builder.setPrivacyUpdateRequest(privacyUpdateRequest);
            }

            @JvmName(name = "setTransactionEventRequest")
            public final void setTransactionEventRequest(@NotNull TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest) {
                this._builder.setTransactionEventRequest(transactionEventRequest);
            }

            private Dsl(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder) {
                this._builder = builder;
            }
        }

        private PayloadKt() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class SharedDataKt {
        @NotNull
        public static final SharedDataKt INSTANCE = new SharedDataKt();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0007\u0018\u0000 `2\u00020\u0001:\u0001`B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010H\u001a\u00020IH\u0001J\u0006\u0010J\u001a\u00020KJ\u0006\u0010L\u001a\u00020KJ\u0006\u0010M\u001a\u00020KJ\u0006\u0010N\u001a\u00020KJ\u0006\u0010O\u001a\u00020KJ\u0006\u0010P\u001a\u00020KJ\u0006\u0010Q\u001a\u00020KJ\u0006\u0010R\u001a\u00020KJ\u0006\u0010S\u001a\u00020KJ\u0006\u0010T\u001a\u00020KJ\u0006\u0010U\u001a\u00020VJ\u0006\u0010W\u001a\u00020VJ\u0006\u0010X\u001a\u00020VJ\u0006\u0010Y\u001a\u00020VJ\u0006\u0010Z\u001a\u00020VJ\u0006\u0010[\u001a\u00020VJ\u0006\u0010\\\u001a\u00020VJ\u0006\u0010]\u001a\u00020VJ\u0006\u0010^\u001a\u00020VJ\u0006\u0010_\u001a\u00020VR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR$\u0010'\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u000f\"\u0004\b)\u0010\u0011R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0017\u0010<\u001a\u0004\u0018\u00010\u0012*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0017\u0010?\u001a\u0004\u0018\u00010\u0018*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0017\u0010B\u001a\u0004\u0018\u00010\u001e*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bC\u0010DR\u0017\u0010E\u001a\u0004\u0018\u00010**\u00020\u00008F¢\u0006\u0006\u001a\u0004\bF\u0010G¨\u0006a"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;)V", "value", "Lcom/google/protobuf/Timestamp;", "appStartTime", "getAppStartTime", "()Lcom/google/protobuf/Timestamp;", "setAppStartTime", "(Lcom/google/protobuf/Timestamp;)V", "Lcom/google/protobuf/ByteString;", "currentState", "getCurrentState", "()Lcom/google/protobuf/ByteString;", "setCurrentState", "(Lcom/google/protobuf/ByteString;)V", "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;", "developerConsent", "getDeveloperConsent", "()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;", "setDeveloperConsent", "(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;)V", "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "limitedSessionToken", "getLimitedSessionToken", "()Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "setLimitedSessionToken", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;)V", "Lgatewayprotocol/v1/PiiOuterClass$Pii;", "pii", "getPii", "()Lgatewayprotocol/v1/PiiOuterClass$Pii;", "setPii", "(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V", "sdkStartTime", "getSdkStartTime", "setSdkStartTime", "sessionToken", "getSessionToken", "setSessionToken", "Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "testData", "getTestData", "()Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "setTestData", "(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V", "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "timestamps", "getTimestamps", "()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "setTimestamps", "(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V", "", "webviewVersion", "getWebviewVersion", "()I", "setWebviewVersion", "(I)V", "developerConsentOrNull", "getDeveloperConsentOrNull", "(Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;", "limitedSessionTokenOrNull", "getLimitedSessionTokenOrNull", "(Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "piiOrNull", "getPiiOrNull", "(Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgatewayprotocol/v1/PiiOuterClass$Pii;", "testDataOrNull", "getTestDataOrNull", "(Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "_build", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "clearAppStartTime", "", "clearCurrentState", "clearDeveloperConsent", "clearLimitedSessionToken", "clearPii", "clearSdkStartTime", "clearSessionToken", "clearTestData", "clearTimestamps", "clearWebviewVersion", "hasAppStartTime", "", "hasCurrentState", "hasDeveloperConsent", "hasLimitedSessionToken", "hasPii", "hasSdkStartTime", "hasSessionToken", "hasTestData", "hasTimestamps", "hasWebviewVersion", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @ProtoDslMarker
        /* loaded from: classes6.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final UniversalRequestOuterClass.UniversalRequest.SharedData.Builder _builder;

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;", "builder", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes6.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @PublishedApi
                public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder) {
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            @PublishedApi
            public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.SharedData _build() {
                return this._builder.build();
            }

            public final void clearAppStartTime() {
                this._builder.clearAppStartTime();
            }

            public final void clearCurrentState() {
                this._builder.clearCurrentState();
            }

            public final void clearDeveloperConsent() {
                this._builder.clearDeveloperConsent();
            }

            public final void clearLimitedSessionToken() {
                this._builder.clearLimitedSessionToken();
            }

            public final void clearPii() {
                this._builder.clearPii();
            }

            public final void clearSdkStartTime() {
                this._builder.clearSdkStartTime();
            }

            public final void clearSessionToken() {
                this._builder.clearSessionToken();
            }

            public final void clearTestData() {
                this._builder.clearTestData();
            }

            public final void clearTimestamps() {
                this._builder.clearTimestamps();
            }

            public final void clearWebviewVersion() {
                this._builder.clearWebviewVersion();
            }

            @JvmName(name = "getAppStartTime")
            @NotNull
            public final Timestamp getAppStartTime() {
                return this._builder.getAppStartTime();
            }

            @JvmName(name = "getCurrentState")
            @NotNull
            public final ByteString getCurrentState() {
                return this._builder.getCurrentState();
            }

            @JvmName(name = "getDeveloperConsent")
            @NotNull
            public final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent() {
                return this._builder.getDeveloperConsent();
            }

            @Nullable
            public final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsentOrNull(@NotNull Dsl dsl) {
                return UniversalRequestKtKt.getDeveloperConsentOrNull(dsl._builder);
            }

            @JvmName(name = "getLimitedSessionToken")
            @NotNull
            public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionToken() {
                return this._builder.getLimitedSessionToken();
            }

            @Nullable
            public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionTokenOrNull(@NotNull Dsl dsl) {
                return UniversalRequestKtKt.getLimitedSessionTokenOrNull(dsl._builder);
            }

            @JvmName(name = "getPii")
            @NotNull
            public final PiiOuterClass.Pii getPii() {
                return this._builder.getPii();
            }

            @Nullable
            public final PiiOuterClass.Pii getPiiOrNull(@NotNull Dsl dsl) {
                return UniversalRequestKtKt.getPiiOrNull(dsl._builder);
            }

            @JvmName(name = "getSdkStartTime")
            @NotNull
            public final Timestamp getSdkStartTime() {
                return this._builder.getSdkStartTime();
            }

            @JvmName(name = "getSessionToken")
            @NotNull
            public final ByteString getSessionToken() {
                return this._builder.getSessionToken();
            }

            @JvmName(name = "getTestData")
            @NotNull
            public final TestDataOuterClass.TestData getTestData() {
                return this._builder.getTestData();
            }

            @Nullable
            public final TestDataOuterClass.TestData getTestDataOrNull(@NotNull Dsl dsl) {
                return UniversalRequestKtKt.getTestDataOrNull(dsl._builder);
            }

            @JvmName(name = "getTimestamps")
            @NotNull
            public final TimestampsOuterClass.Timestamps getTimestamps() {
                return this._builder.getTimestamps();
            }

            @JvmName(name = "getWebviewVersion")
            public final int getWebviewVersion() {
                return this._builder.getWebviewVersion();
            }

            public final boolean hasAppStartTime() {
                return this._builder.hasAppStartTime();
            }

            public final boolean hasCurrentState() {
                return this._builder.hasCurrentState();
            }

            public final boolean hasDeveloperConsent() {
                return this._builder.hasDeveloperConsent();
            }

            public final boolean hasLimitedSessionToken() {
                return this._builder.hasLimitedSessionToken();
            }

            public final boolean hasPii() {
                return this._builder.hasPii();
            }

            public final boolean hasSdkStartTime() {
                return this._builder.hasSdkStartTime();
            }

            public final boolean hasSessionToken() {
                return this._builder.hasSessionToken();
            }

            public final boolean hasTestData() {
                return this._builder.hasTestData();
            }

            public final boolean hasTimestamps() {
                return this._builder.hasTimestamps();
            }

            public final boolean hasWebviewVersion() {
                return this._builder.hasWebviewVersion();
            }

            @JvmName(name = "setAppStartTime")
            public final void setAppStartTime(@NotNull Timestamp timestamp) {
                this._builder.setAppStartTime(timestamp);
            }

            @JvmName(name = "setCurrentState")
            public final void setCurrentState(@NotNull ByteString byteString) {
                this._builder.setCurrentState(byteString);
            }

            @JvmName(name = "setDeveloperConsent")
            public final void setDeveloperConsent(@NotNull DeveloperConsentOuterClass.DeveloperConsent developerConsent) {
                this._builder.setDeveloperConsent(developerConsent);
            }

            @JvmName(name = "setLimitedSessionToken")
            public final void setLimitedSessionToken(@NotNull UniversalRequestOuterClass.LimitedSessionToken limitedSessionToken) {
                this._builder.setLimitedSessionToken(limitedSessionToken);
            }

            @JvmName(name = "setPii")
            public final void setPii(@NotNull PiiOuterClass.Pii pii) {
                this._builder.setPii(pii);
            }

            @JvmName(name = "setSdkStartTime")
            public final void setSdkStartTime(@NotNull Timestamp timestamp) {
                this._builder.setSdkStartTime(timestamp);
            }

            @JvmName(name = "setSessionToken")
            public final void setSessionToken(@NotNull ByteString byteString) {
                this._builder.setSessionToken(byteString);
            }

            @JvmName(name = "setTestData")
            public final void setTestData(@NotNull TestDataOuterClass.TestData testData) {
                this._builder.setTestData(testData);
            }

            @JvmName(name = "setTimestamps")
            public final void setTimestamps(@NotNull TimestampsOuterClass.Timestamps timestamps) {
                this._builder.setTimestamps(timestamps);
            }

            @JvmName(name = "setWebviewVersion")
            public final void setWebviewVersion(int i) {
                this._builder.setWebviewVersion(i);
            }

            private Dsl(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder) {
                this._builder = builder;
            }
        }

        private SharedDataKt() {
        }
    }

    private UniversalRequestKt() {
    }

    @JvmName(name = "-initializepayload")
    @NotNull
    /* renamed from: -initializepayload  reason: not valid java name */
    public final UniversalRequestOuterClass.UniversalRequest.Payload m419initializepayload(@NotNull Function1<? super PayloadKt.Dsl, Unit> function1) {
        PayloadKt.Dsl _create = PayloadKt.Dsl.Companion._create(UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @JvmName(name = "-initializesharedData")
    @NotNull
    /* renamed from: -initializesharedData  reason: not valid java name */
    public final UniversalRequestOuterClass.UniversalRequest.SharedData m420initializesharedData(@NotNull Function1<? super SharedDataKt.Dsl, Unit> function1) {
        SharedDataKt.Dsl _create = SharedDataKt.Dsl.Companion._create(UniversalRequestOuterClass.UniversalRequest.SharedData.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
