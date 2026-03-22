package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001f\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/events/CommonGetTransactionRequest;", "Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "(Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)V", "invoke", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;", "transactionDataList", "", "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommonGetTransactionRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonGetTransactionRequest.kt\ncom/unity3d/ads/core/domain/events/CommonGetTransactionRequest\n+ 2 TransactionEventRequestKt.kt\ngatewayprotocol/v1/TransactionEventRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n10#2:23\n1#3:24\n*S KotlinDebug\n*F\n+ 1 CommonGetTransactionRequest.kt\ncom/unity3d/ads/core/domain/events/CommonGetTransactionRequest\n*L\n13#1:23\n13#1:24\n*E\n"})
/* loaded from: classes6.dex */
public final class CommonGetTransactionRequest implements GetTransactionRequest {
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;

    public CommonGetTransactionRequest(@NotNull DeviceInfoRepository deviceInfoRepository) {
        this.deviceInfoRepository = deviceInfoRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    @Override // com.unity3d.ads.core.domain.events.GetTransactionRequest
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull java.util.List<gatewayprotocol.v1.TransactionEventRequestOuterClass.TransactionData> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super gatewayprotocol.v1.TransactionEventRequestOuterClass.TransactionEventRequest> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.core.domain.events.CommonGetTransactionRequest$invoke$1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.core.domain.events.CommonGetTransactionRequest$invoke$1 r0 = (com.unity3d.ads.core.domain.events.CommonGetTransactionRequest$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.events.CommonGetTransactionRequest$invoke$1 r0 = new com.unity3d.ads.core.domain.events.CommonGetTransactionRequest$invoke$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L45
            if (r2 != r3) goto L3d
            java.lang.Object r5 = r0.L$4
            gatewayprotocol.v1.TransactionEventRequestKt$Dsl r5 = (gatewayprotocol.v1.TransactionEventRequestKt.Dsl) r5
            java.lang.Object r1 = r0.L$3
            gatewayprotocol.v1.TransactionEventRequestKt$Dsl r1 = (gatewayprotocol.v1.TransactionEventRequestKt.Dsl) r1
            java.lang.Object r2 = r0.L$2
            gatewayprotocol.v1.TransactionEventRequestKt$Dsl r2 = (gatewayprotocol.v1.TransactionEventRequestKt.Dsl) r2
            java.lang.Object r3 = r0.L$1
            java.util.List r3 = (java.util.List) r3
            java.lang.Object r0 = r0.L$0
            com.unity3d.ads.core.domain.events.CommonGetTransactionRequest r0 = (com.unity3d.ads.core.domain.events.CommonGetTransactionRequest) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6d
        L3d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L45:
            kotlin.ResultKt.throwOnFailure(r6)
            gatewayprotocol.v1.TransactionEventRequestKt$Dsl$Companion r6 = gatewayprotocol.v1.TransactionEventRequestKt.Dsl.Companion
            gatewayprotocol.v1.TransactionEventRequestOuterClass$TransactionEventRequest$Builder r2 = gatewayprotocol.v1.TransactionEventRequestOuterClass.TransactionEventRequest.newBuilder()
            gatewayprotocol.v1.TransactionEventRequestKt$Dsl r6 = r6._create(r2)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r2 = r4.deviceInfoRepository
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.L$3 = r6
            r0.L$4 = r6
            r0.label = r3
            java.lang.Object r0 = r2.staticDeviceInfo(r0)
            if (r0 != r1) goto L67
            return r1
        L67:
            r3 = r5
            r5 = r6
            r1 = r5
            r2 = r1
            r6 = r0
            r0 = r4
        L6d:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r6 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo) r6
            r5.setStaticDeviceInfo(r6)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r5 = r0.deviceInfoRepository
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo r5 = r5.getDynamicDeviceInfo()
            r1.setDynamicDeviceInfo(r5)
            gatewayprotocol.v1.TransactionEventRequestOuterClass$StoreType r5 = gatewayprotocol.v1.TransactionEventRequestOuterClass.StoreType.STORE_TYPE_GOOGLE_PLAY
            r1.setAppStore(r5)
            com.google.protobuf.kotlin.DslList r5 = r1.getTransactionData()
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            r1.plusAssignAllTransactionData(r5, r3)
            gatewayprotocol.v1.TransactionEventRequestOuterClass$TransactionEventRequest r5 = r2._build()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.CommonGetTransactionRequest.invoke(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
