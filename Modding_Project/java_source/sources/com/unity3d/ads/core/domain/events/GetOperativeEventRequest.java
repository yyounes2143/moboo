package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.GetByteStringId;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJE\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0086Bø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;", "", "generateByteStringId", "Lcom/unity3d/ads/core/domain/GetByteStringId;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "campaignRepository", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "(Lcom/unity3d/ads/core/domain/GetByteStringId;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;)V", "invoke", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "operativeEventType", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;", "loadTrackingToken", "Lcom/google/protobuf/ByteString;", "opportunityId", "additionalEventData", "playerServerId", "", "adFormat", "Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;", "(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventType;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lgatewayprotocol/v1/InitializationResponseOuterClass$AdFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGetOperativeEventRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetOperativeEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetOperativeEventRequest\n+ 2 OperativeEventRequestKt.kt\ngatewayprotocol/v1/OperativeEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n10#2:44\n1#3:45\n1#3:46\n*S KotlinDebug\n*F\n+ 1 GetOperativeEventRequest.kt\ncom/unity3d/ads/core/domain/events/GetOperativeEventRequest\n*L\n29#1:44\n29#1:45\n*E\n"})
/* loaded from: classes6.dex */
public final class GetOperativeEventRequest {
    @NotNull
    private final CampaignRepository campaignRepository;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final GetByteStringId generateByteStringId;
    @NotNull
    private final SessionRepository sessionRepository;

    public GetOperativeEventRequest(@NotNull GetByteStringId getByteStringId, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull SessionRepository sessionRepository, @NotNull CampaignRepository campaignRepository) {
        this.generateByteStringId = getByteStringId;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.campaignRepository = campaignRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a9  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventType r5, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r6, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r7, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r8, @org.jetbrains.annotations.Nullable java.lang.String r9, @org.jetbrains.annotations.Nullable gatewayprotocol.v1.InitializationResponseOuterClass.AdFormat r10, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventRequest> r11) {
        /*
            r4 = this;
            boolean r0 = r11 instanceof com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1
            if (r0 == 0) goto L13
            r0 = r11
            com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1 r0 = (com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1 r0 = new com.unity3d.ads.core.domain.events.GetOperativeEventRequest$invoke$1
            r0.<init>(r4, r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L46
            if (r2 != r3) goto L3e
            java.lang.Object r5 = r0.L$4
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r5 = (gatewayprotocol.v1.OperativeEventRequestKt.Dsl) r5
            java.lang.Object r6 = r0.L$3
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r6 = (gatewayprotocol.v1.OperativeEventRequestKt.Dsl) r6
            java.lang.Object r7 = r0.L$2
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r7 = (gatewayprotocol.v1.OperativeEventRequestKt.Dsl) r7
            java.lang.Object r8 = r0.L$1
            r10 = r8
            gatewayprotocol.v1.InitializationResponseOuterClass$AdFormat r10 = (gatewayprotocol.v1.InitializationResponseOuterClass.AdFormat) r10
            java.lang.Object r8 = r0.L$0
            com.unity3d.ads.core.domain.events.GetOperativeEventRequest r8 = (com.unity3d.ads.core.domain.events.GetOperativeEventRequest) r8
            kotlin.ResultKt.throwOnFailure(r11)
            goto L90
        L3e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L46:
            kotlin.ResultKt.throwOnFailure(r11)
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl$Companion r11 = gatewayprotocol.v1.OperativeEventRequestKt.Dsl.Companion
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventRequest$Builder r2 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventRequest.newBuilder()
            gatewayprotocol.v1.OperativeEventRequestKt$Dsl r11 = r11._create(r2)
            com.unity3d.ads.core.domain.GetByteStringId r2 = r4.generateByteStringId
            com.google.protobuf.ByteString r2 = r2.invoke()
            r11.setEventId(r2)
            r11.setEventType(r5)
            r11.setImpressionOpportunityId(r7)
            r11.setTrackingToken(r6)
            r11.setAdditionalData(r8)
            if (r9 == 0) goto L6d
            r11.setSid(r9)
        L6d:
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r5 = r4.deviceInfoRepository
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo r5 = r5.getDynamicDeviceInfo()
            r11.setDynamicDeviceInfo(r5)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r5 = r4.deviceInfoRepository
            r0.L$0 = r4
            r0.L$1 = r10
            r0.L$2 = r11
            r0.L$3 = r11
            r0.L$4 = r11
            r0.label = r3
            java.lang.Object r5 = r5.staticDeviceInfo(r0)
            if (r5 != r1) goto L8b
            return r1
        L8b:
            r8 = r4
            r6 = r11
            r7 = r6
            r11 = r5
            r5 = r7
        L90:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r11 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo) r11
            r5.setStaticDeviceInfo(r11)
            com.unity3d.ads.core.data.repository.SessionRepository r5 = r8.sessionRepository
            gatewayprotocol.v1.SessionCountersOuterClass$SessionCounters r5 = r5.getSessionCounters()
            r6.setSessionCounters(r5)
            com.unity3d.ads.core.data.repository.CampaignRepository r5 = r8.campaignRepository
            gatewayprotocol.v1.CampaignStateOuterClass$CampaignState r5 = r5.getCampaignState()
            r6.setCampaignState(r5)
            if (r10 == 0) goto Lac
            r6.setAdFormat(r10)
        Lac:
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventRequest r5 = r7._build()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.GetOperativeEventRequest.invoke(gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventType, com.google.protobuf.ByteString, com.google.protobuf.ByteString, com.google.protobuf.ByteString, java.lang.String, gatewayprotocol.v1.InitializationResponseOuterClass$AdFormat, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
