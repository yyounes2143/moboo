package com.unity3d.ads.core.domain.events;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.OperativeEventRepository;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006JI\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0086Bø\u0001\u0000¢\u0006\u0002\u0010\u0013J)\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\fH\u0086Bø\u0001\u0000¢\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "", "operativeEventRepository", "Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;", "operativeEventRequest", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;", "(Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;)V", "invoke", "", "operativeEventType", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;", "opportunityId", "Lcom/google/protobuf/ByteString;", HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN, "additionalEventData", "playerServerId", "", "adFormat", "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;", "(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGetOperativeEventApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetOperativeEventApi.kt\ncom/unity3d/ads/core/domain/events/GetOperativeEventApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"})
/* loaded from: classes6.dex */
public final class GetOperativeEventApi {
    @NotNull
    private final OperativeEventRepository operativeEventRepository;
    @NotNull
    private final GetOperativeEventRequest operativeEventRequest;

    public GetOperativeEventApi(@NotNull OperativeEventRepository operativeEventRepository, @NotNull GetOperativeEventRequest getOperativeEventRequest) {
        this.operativeEventRepository = operativeEventRepository;
        this.operativeEventRequest = getOperativeEventRequest;
    }

    public static /* synthetic */ Object invoke$default(GetOperativeEventApi getOperativeEventApi, OperativeEventRequestOuterClass.OperativeEventType operativeEventType, ByteString byteString, ByteString byteString2, ByteString byteString3, String str, InitializationResponseOuterClass.AdFormat adFormat, Continuation continuation, int i, Object obj) {
        if ((i & 16) != 0) {
            str = null;
        }
        if ((i & 32) != 0) {
            adFormat = null;
        }
        return getOperativeEventApi.invoke(operativeEventType, byteString, byteString2, byteString3, str, adFormat, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventType r11, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r12, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r13, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r14, @org.jetbrains.annotations.Nullable java.lang.String r15, @org.jetbrains.annotations.Nullable gatewayprotocol.v1.InitializationResponseOuterClass.AdFormat r16, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r17) {
        /*
            r10 = this;
            r0 = r17
            boolean r1 = r0 instanceof com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1
            if (r1 == 0) goto L16
            r1 = r0
            com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1 r1 = (com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.label = r2
        L14:
            r9 = r1
            goto L1c
        L16:
            com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1 r1 = new com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1
            r1.<init>(r10, r0)
            goto L14
        L1c:
            java.lang.Object r0 = r9.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r11 = r9.L$0
            com.unity3d.ads.core.domain.events.GetOperativeEventApi r11 = (com.unity3d.ads.core.domain.events.GetOperativeEventApi) r11
            kotlin.ResultKt.throwOnFailure(r0)
            goto L51
        L31:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L39:
            kotlin.ResultKt.throwOnFailure(r0)
            com.unity3d.ads.core.domain.events.GetOperativeEventRequest r2 = r10.operativeEventRequest
            r9.L$0 = r10
            r9.label = r3
            r3 = r11
            r5 = r12
            r4 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            java.lang.Object r0 = r2.invoke(r3, r4, r5, r6, r7, r8, r9)
            if (r0 != r1) goto L50
            return r1
        L50:
            r11 = r10
        L51:
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventRequest r0 = (gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventRequest) r0
            com.unity3d.ads.core.data.repository.OperativeEventRepository r11 = r11.operativeEventRepository
            r11.addOperativeEvent(r0)
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.GetOperativeEventApi.invoke(gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventType, com.google.protobuf.ByteString, com.google.protobuf.ByteString, com.google.protobuf.ByteString, java.lang.String, gatewayprotocol.v1.InitializationResponseOuterClass$AdFormat, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Nullable
    public final Object invoke(@NotNull OperativeEventRequestOuterClass.OperativeEventType operativeEventType, @NotNull AdObject adObject, @NotNull ByteString byteString, @NotNull Continuation<? super Unit> continuation) {
        Object invoke = invoke(operativeEventType, adObject.getOpportunityId(), adObject.getTrackingToken(), byteString, adObject.getPlayerServerId(), (adObject.getAdType() == DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_BANNER ? this : null) != null ? InitializationResponseOuterClass.AdFormat.AD_FORMAT_BANNER : null, continuation);
        return invoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? invoke : Unit.INSTANCE;
    }
}
