package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\u0010R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetAdDataRefreshRequest;", "Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;", "getUniversalRequestForPayLoad", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "campaignRepository", "Lcom/unity3d/ads/core/data/repository/CampaignRepository;", "(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignRepository;)V", "invoke", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "opportunityId", "Lcom/google/protobuf/ByteString;", "refreshToken", "(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidGetAdDataRefreshRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetAdDataRefreshRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdDataRefreshRequest\n+ 2 AdDataRefreshRequestKt.kt\ngatewayprotocol/v1/AdDataRefreshRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,36:1\n10#2:37\n1#3:38\n1#3:40\n484#4:39\n*S KotlinDebug\n*F\n+ 1 AndroidGetAdDataRefreshRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdDataRefreshRequest\n*L\n23#1:37\n23#1:38\n31#1:40\n31#1:39\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidGetAdDataRefreshRequest implements GetAdDataRefreshRequest {
    @NotNull
    private final CampaignRepository campaignRepository;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidGetAdDataRefreshRequest(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, @NotNull SessionRepository sessionRepository, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull CampaignRepository campaignRepository) {
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.sessionRepository = sessionRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.campaignRepository = campaignRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d6 A[RETURN] */
    @Override // com.unity3d.ads.core.domain.GetAdDataRefreshRequest
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r8, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r9, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest$invoke$1
            if (r0 == 0) goto L13
            r0 = r10
            com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest$invoke$1 r0 = (com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest$invoke$1 r0 = new com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest$invoke$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L50
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            return r10
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.L$5
            gatewayprotocol.v1.AdDataRefreshRequestKt$Dsl r8 = (gatewayprotocol.v1.AdDataRefreshRequestKt.Dsl) r8
            java.lang.Object r9 = r0.L$4
            gatewayprotocol.v1.AdDataRefreshRequestKt$Dsl r9 = (gatewayprotocol.v1.AdDataRefreshRequestKt.Dsl) r9
            java.lang.Object r2 = r0.L$3
            gatewayprotocol.v1.AdDataRefreshRequestKt$Dsl r2 = (gatewayprotocol.v1.AdDataRefreshRequestKt.Dsl) r2
            java.lang.Object r4 = r0.L$2
            com.google.protobuf.ByteString r4 = (com.google.protobuf.ByteString) r4
            java.lang.Object r5 = r0.L$1
            com.google.protobuf.ByteString r5 = (com.google.protobuf.ByteString) r5
            java.lang.Object r6 = r0.L$0
            com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest r6 = (com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest) r6
            kotlin.ResultKt.throwOnFailure(r10)
            goto L84
        L50:
            kotlin.ResultKt.throwOnFailure(r10)
            gatewayprotocol.v1.AdDataRefreshRequestKt$Dsl$Companion r10 = gatewayprotocol.v1.AdDataRefreshRequestKt.Dsl.Companion
            gatewayprotocol.v1.AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder r2 = gatewayprotocol.v1.AdDataRefreshRequestOuterClass.AdDataRefreshRequest.newBuilder()
            gatewayprotocol.v1.AdDataRefreshRequestKt$Dsl r10 = r10._create(r2)
            com.unity3d.ads.core.data.repository.SessionRepository r2 = r7.sessionRepository
            gatewayprotocol.v1.SessionCountersOuterClass$SessionCounters r2 = r2.getSessionCounters()
            r10.setSessionCounters(r2)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r2 = r7.deviceInfoRepository
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r10
            r0.L$4 = r10
            r0.L$5 = r10
            r0.label = r4
            java.lang.Object r2 = r2.staticDeviceInfo(r0)
            if (r2 != r1) goto L7d
            goto Ld5
        L7d:
            r6 = r7
            r5 = r8
            r4 = r9
            r8 = r10
            r9 = r8
            r10 = r2
            r2 = r9
        L84:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r10 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo) r10
            r8.setStaticDeviceInfo(r10)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r8 = r6.deviceInfoRepository
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo r8 = r8.getDynamicDeviceInfo()
            r9.setDynamicDeviceInfo(r8)
            r9.setImpressionOpportunityId(r5)
            com.unity3d.ads.core.data.repository.CampaignRepository r8 = r6.campaignRepository
            gatewayprotocol.v1.CampaignStateOuterClass$CampaignState r8 = r8.getCampaignState()
            r9.setCampaignState(r8)
            boolean r8 = r4.isEmpty()
            if (r8 != 0) goto La7
            r9.setAdDataRefreshToken(r4)
        La7:
            gatewayprotocol.v1.AdDataRefreshRequestOuterClass$AdDataRefreshRequest r8 = r2._build()
            gatewayprotocol.v1.UniversalRequestKt r9 = gatewayprotocol.v1.UniversalRequestKt.INSTANCE
            gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl$Companion r9 = gatewayprotocol.v1.UniversalRequestKt.PayloadKt.Dsl.Companion
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload$Builder r10 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder()
            gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl r9 = r9._create(r10)
            r9.setAdDataRefreshRequest(r8)
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r8 = r9._build()
            com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad r9 = r6.getUniversalRequestForPayLoad
            r10 = 0
            r0.L$0 = r10
            r0.L$1 = r10
            r0.L$2 = r10
            r0.L$3 = r10
            r0.L$4 = r10
            r0.L$5 = r10
            r0.label = r3
            java.lang.Object r8 = r9.invoke(r8, r0)
            if (r8 != r1) goto Ld6
        Ld5:
            return r1
        Ld6:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetAdDataRefreshRequest.invoke(com.google.protobuf.ByteString, com.google.protobuf.ByteString, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
