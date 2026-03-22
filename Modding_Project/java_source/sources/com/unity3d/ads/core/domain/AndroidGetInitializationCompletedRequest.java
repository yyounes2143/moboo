package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\bH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetInitializationCompletedRequest;", "Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;", "getUniversalRequestForPayLoad", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)V", "invoke", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidGetInitializationCompletedRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetInitializationCompletedRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationCompletedRequest\n+ 2 InitializationCompletedEventRequestKt.kt\ngatewayprotocol/v1/InitializationCompletedEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,26:1\n10#2:27\n1#3:28\n1#3:30\n484#4:29\n*S KotlinDebug\n*F\n+ 1 AndroidGetInitializationCompletedRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationCompletedRequest\n*L\n15#1:27\n15#1:28\n20#1:30\n20#1:29\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidGetInitializationCompletedRequest implements GetInitializationCompletedRequest {
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;

    public AndroidGetInitializationCompletedRequest(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, @NotNull DeviceInfoRepository deviceInfoRepository) {
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.deviceInfoRepository = deviceInfoRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4 A[RETURN] */
    @Override // com.unity3d.ads.core.domain.GetInitializationCompletedRequest
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest$invoke$1
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest$invoke$1 r0 = (com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest$invoke$1 r0 = new com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest$invoke$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L34:
            java.lang.Object r2 = r0.L$3
            gatewayprotocol.v1.InitializationCompletedEventRequestKt$Dsl r2 = (gatewayprotocol.v1.InitializationCompletedEventRequestKt.Dsl) r2
            java.lang.Object r4 = r0.L$2
            gatewayprotocol.v1.InitializationCompletedEventRequestKt$Dsl r4 = (gatewayprotocol.v1.InitializationCompletedEventRequestKt.Dsl) r4
            java.lang.Object r5 = r0.L$1
            gatewayprotocol.v1.InitializationCompletedEventRequestKt$Dsl r5 = (gatewayprotocol.v1.InitializationCompletedEventRequestKt.Dsl) r5
            java.lang.Object r6 = r0.L$0
            com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest r6 = (com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest) r6
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6b
        L48:
            kotlin.ResultKt.throwOnFailure(r8)
            gatewayprotocol.v1.InitializationCompletedEventRequestKt$Dsl$Companion r8 = gatewayprotocol.v1.InitializationCompletedEventRequestKt.Dsl.Companion
            gatewayprotocol.v1.InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder r2 = gatewayprotocol.v1.InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.newBuilder()
            gatewayprotocol.v1.InitializationCompletedEventRequestKt$Dsl r2 = r8._create(r2)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r8 = r7.deviceInfoRepository
            r0.L$0 = r7
            r0.L$1 = r2
            r0.L$2 = r2
            r0.L$3 = r2
            r0.label = r4
            java.lang.Object r8 = r8.staticDeviceInfo(r0)
            if (r8 != r1) goto L68
            goto La3
        L68:
            r6 = r7
            r4 = r2
            r5 = r4
        L6b:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r8 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo) r8
            r2.setStaticDeviceInfo(r8)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r8 = r6.deviceInfoRepository
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo r8 = r8.getDynamicDeviceInfo()
            r4.setDynamicDeviceInfo(r8)
            gatewayprotocol.v1.InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest r8 = r5._build()
            gatewayprotocol.v1.UniversalRequestKt r2 = gatewayprotocol.v1.UniversalRequestKt.INSTANCE
            gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl$Companion r2 = gatewayprotocol.v1.UniversalRequestKt.PayloadKt.Dsl.Companion
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload$Builder r4 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder()
            gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl r2 = r2._create(r4)
            r2.setInitializationCompletedEventRequest(r8)
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r8 = r2._build()
            com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad r2 = r6.getUniversalRequestForPayLoad
            r4 = 0
            r0.L$0 = r4
            r0.L$1 = r4
            r0.L$2 = r4
            r0.L$3 = r4
            r0.label = r3
            java.lang.Object r8 = r2.invoke(r8, r0)
            if (r8 != r1) goto La4
        La3:
            return r1
        La4:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetInitializationCompletedRequest.invoke(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
