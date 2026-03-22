package gatewayprotocol.v1;

import com.google.protobuf.Timestamp;
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
import gatewayprotocol.v1.UniversalRequestKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Â\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a*\u0010M\u001a\u00020N2\u0017\u0010O\u001a\u0013\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020R0P¢\u0006\u0002\bSH\u0087\bø\u0001\u0000¢\u0006\u0002\bT\u001a)\u0010U\u001a\u00020N*\u00020N2\u0017\u0010O\u001a\u0013\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020R0P¢\u0006\u0002\bSH\u0086\bø\u0001\u0000\u001a)\u0010U\u001a\u00020/*\u00020/2\u0017\u0010O\u001a\u0013\u0012\u0004\u0012\u00020V\u0012\u0004\u0012\u00020R0P¢\u0006\u0002\bSH\u0086\bø\u0001\u0000\u001a)\u0010U\u001a\u00020>*\u00020>2\u0017\u0010O\u001a\u0013\u0012\u0004\u0012\u00020W\u0012\u0004\u0012\u00020R0P¢\u0006\u0002\bSH\u0086\bø\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\"\u0017\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d\"\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u001f*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b \u0010!\"\u0017\u0010\"\u001a\u0004\u0018\u00010#*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b$\u0010%\"\u0017\u0010&\u001a\u0004\u0018\u00010'*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b(\u0010)\"\u0017\u0010*\u001a\u0004\u0018\u00010+*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b,\u0010-\"\u0017\u0010.\u001a\u0004\u0018\u00010/*\u0002008F¢\u0006\u0006\u001a\u0004\b1\u00102\"\u0017\u00103\u001a\u0004\u0018\u000104*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b5\u00106\"\u0017\u00107\u001a\u0004\u0018\u000108*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b9\u0010:\"\u0017\u0010;\u001a\u0004\u0018\u00010\u000e*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b<\u0010\u0011\"\u0017\u0010=\u001a\u0004\u0018\u00010>*\u0002008F¢\u0006\u0006\u001a\u0004\b?\u0010@\"\u0017\u0010A\u001a\u0004\u0018\u00010B*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\bC\u0010D\"\u0017\u0010E\u001a\u0004\u0018\u00010F*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\bG\u0010H\"\u0017\u0010I\u001a\u0004\u0018\u00010J*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bK\u0010L\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006X"}, d2 = {"adDataRefreshRequestOrNull", "Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;", "getAdDataRefreshRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "adPlayerConfigRequestOrNull", "Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "getAdPlayerConfigRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "adRequestOrNull", "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;", "getAdRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;", "appStartTimeOrNull", "Lcom/google/protobuf/Timestamp;", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;", "getAppStartTimeOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lcom/google/protobuf/Timestamp;", "developerConsentOrNull", "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;", "getDeveloperConsentOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;", "diagnosticEventRequestOrNull", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "getDiagnosticEventRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "getTokenEventRequestOrNull", "Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "getGetTokenEventRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "initializationCompletedEventRequestOrNull", "Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "getInitializationCompletedEventRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "initializationRequestOrNull", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "getInitializationRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "limitedSessionTokenOrNull", "Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "getLimitedSessionTokenOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgatewayprotocol/v1/UniversalRequestOuterClass$LimitedSessionToken;", "operativeEventOrNull", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "getOperativeEventOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "payloadOrNull", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;", "getPayloadOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "piiOrNull", "Lgatewayprotocol/v1/PiiOuterClass$Pii;", "getPiiOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgatewayprotocol/v1/PiiOuterClass$Pii;", "privacyUpdateRequestOrNull", "Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "getPrivacyUpdateRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "sdkStartTimeOrNull", "getSdkStartTimeOrNull", "sharedDataOrNull", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "getSharedDataOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "testDataOrNull", "Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "getTestDataOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgatewayprotocol/v1/TestDataOuterClass$TestData;", "timestampsOrNull", "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "getTimestampsOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;", "transactionEventRequestOrNull", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;", "getTransactionEventRequestOrNull", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;", "universalRequest", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/UniversalRequestKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeuniversalRequest", "copy", "Lgatewayprotocol/v1/UniversalRequestKt$PayloadKt$Dsl;", "Lgatewayprotocol/v1/UniversalRequestKt$SharedDataKt$Dsl;", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUniversalRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,939:1\n1#2:940\n*E\n"})
/* loaded from: classes6.dex */
public final class UniversalRequestKtKt {
    @JvmName(name = "-initializeuniversalRequest")
    @NotNull
    /* renamed from: -initializeuniversalRequest  reason: not valid java name */
    public static final UniversalRequestOuterClass.UniversalRequest m421initializeuniversalRequest(@NotNull Function1<? super UniversalRequestKt.Dsl, Unit> function1) {
        UniversalRequestKt.Dsl _create = UniversalRequestKt.Dsl.Companion._create(UniversalRequestOuterClass.UniversalRequest.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final UniversalRequestOuterClass.UniversalRequest copy(@NotNull UniversalRequestOuterClass.UniversalRequest universalRequest, @NotNull Function1<? super UniversalRequestKt.Dsl, Unit> function1) {
        UniversalRequestKt.Dsl _create = UniversalRequestKt.Dsl.Companion._create(universalRequest.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasAdDataRefreshRequest()) {
            return payloadOrBuilder.getAdDataRefreshRequest();
        }
        return null;
    }

    @Nullable
    public static final AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasAdPlayerConfigRequest()) {
            return payloadOrBuilder.getAdPlayerConfigRequest();
        }
        return null;
    }

    @Nullable
    public static final AdRequestOuterClass.AdRequest getAdRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasAdRequest()) {
            return payloadOrBuilder.getAdRequest();
        }
        return null;
    }

    @Nullable
    public static final Timestamp getAppStartTimeOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedDataOrBuilder sharedDataOrBuilder) {
        if (sharedDataOrBuilder.hasAppStartTime()) {
            return sharedDataOrBuilder.getAppStartTime();
        }
        return null;
    }

    @Nullable
    public static final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsentOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedDataOrBuilder sharedDataOrBuilder) {
        if (sharedDataOrBuilder.hasDeveloperConsent()) {
            return sharedDataOrBuilder.getDeveloperConsent();
        }
        return null;
    }

    @Nullable
    public static final DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasDiagnosticEventRequest()) {
            return payloadOrBuilder.getDiagnosticEventRequest();
        }
        return null;
    }

    @Nullable
    public static final GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasGetTokenEventRequest()) {
            return payloadOrBuilder.getGetTokenEventRequest();
        }
        return null;
    }

    @Nullable
    public static final InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasInitializationCompletedEventRequest()) {
            return payloadOrBuilder.getInitializationCompletedEventRequest();
        }
        return null;
    }

    @Nullable
    public static final InitializationRequestOuterClass.InitializationRequest getInitializationRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasInitializationRequest()) {
            return payloadOrBuilder.getInitializationRequest();
        }
        return null;
    }

    @Nullable
    public static final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionTokenOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedDataOrBuilder sharedDataOrBuilder) {
        if (sharedDataOrBuilder.hasLimitedSessionToken()) {
            return sharedDataOrBuilder.getLimitedSessionToken();
        }
        return null;
    }

    @Nullable
    public static final OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEventOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasOperativeEvent()) {
            return payloadOrBuilder.getOperativeEvent();
        }
        return null;
    }

    @Nullable
    public static final UniversalRequestOuterClass.UniversalRequest.Payload getPayloadOrNull(@NotNull UniversalRequestOuterClass.UniversalRequestOrBuilder universalRequestOrBuilder) {
        if (universalRequestOrBuilder.hasPayload()) {
            return universalRequestOrBuilder.getPayload();
        }
        return null;
    }

    @Nullable
    public static final PiiOuterClass.Pii getPiiOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedDataOrBuilder sharedDataOrBuilder) {
        if (sharedDataOrBuilder.hasPii()) {
            return sharedDataOrBuilder.getPii();
        }
        return null;
    }

    @Nullable
    public static final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasPrivacyUpdateRequest()) {
            return payloadOrBuilder.getPrivacyUpdateRequest();
        }
        return null;
    }

    @Nullable
    public static final Timestamp getSdkStartTimeOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedDataOrBuilder sharedDataOrBuilder) {
        if (sharedDataOrBuilder.hasSdkStartTime()) {
            return sharedDataOrBuilder.getSdkStartTime();
        }
        return null;
    }

    @Nullable
    public static final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedDataOrNull(@NotNull UniversalRequestOuterClass.UniversalRequestOrBuilder universalRequestOrBuilder) {
        if (universalRequestOrBuilder.hasSharedData()) {
            return universalRequestOrBuilder.getSharedData();
        }
        return null;
    }

    @Nullable
    public static final TestDataOuterClass.TestData getTestDataOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedDataOrBuilder sharedDataOrBuilder) {
        if (sharedDataOrBuilder.hasTestData()) {
            return sharedDataOrBuilder.getTestData();
        }
        return null;
    }

    @Nullable
    public static final TimestampsOuterClass.Timestamps getTimestampsOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedDataOrBuilder sharedDataOrBuilder) {
        if (sharedDataOrBuilder.hasTimestamps()) {
            return sharedDataOrBuilder.getTimestamps();
        }
        return null;
    }

    @Nullable
    public static final TransactionEventRequestOuterClass.TransactionEventRequest getTransactionEventRequestOrNull(@NotNull UniversalRequestOuterClass.UniversalRequest.PayloadOrBuilder payloadOrBuilder) {
        if (payloadOrBuilder.hasTransactionEventRequest()) {
            return payloadOrBuilder.getTransactionEventRequest();
        }
        return null;
    }

    @NotNull
    public static final UniversalRequestOuterClass.UniversalRequest.SharedData copy(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedData sharedData, @NotNull Function1<? super UniversalRequestKt.SharedDataKt.Dsl, Unit> function1) {
        UniversalRequestKt.SharedDataKt.Dsl _create = UniversalRequestKt.SharedDataKt.Dsl.Companion._create(sharedData.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final UniversalRequestOuterClass.UniversalRequest.Payload copy(@NotNull UniversalRequestOuterClass.UniversalRequest.Payload payload, @NotNull Function1<? super UniversalRequestKt.PayloadKt.Dsl, Unit> function1) {
        UniversalRequestKt.PayloadKt.Dsl _create = UniversalRequestKt.PayloadKt.Dsl.Companion._create(payload.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
