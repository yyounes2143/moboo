package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetUniversalRequestForPayLoad;", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "getUniversalRequestSharedData", "Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;", "(Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)V", "invoke", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;", "payload", "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidGetUniversalRequestForPayLoad.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetUniversalRequestForPayLoad.kt\ncom/unity3d/ads/core/domain/AndroidGetUniversalRequestForPayLoad\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n10#2:19\n1#3:20\n*S KotlinDebug\n*F\n+ 1 AndroidGetUniversalRequestForPayLoad.kt\ncom/unity3d/ads/core/domain/AndroidGetUniversalRequestForPayLoad\n*L\n13#1:19\n13#1:20\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidGetUniversalRequestForPayLoad implements GetUniversalRequestForPayLoad {
    @NotNull
    private final GetUniversalRequestSharedData getUniversalRequestSharedData;

    public AndroidGetUniversalRequestForPayLoad(@NotNull GetUniversalRequestSharedData getUniversalRequestSharedData) {
        this.getUniversalRequestSharedData = getUniversalRequestSharedData;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    @Override // com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.core.domain.AndroidGetUniversalRequestForPayLoad$invoke$1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.core.domain.AndroidGetUniversalRequestForPayLoad$invoke$1 r0 = (com.unity3d.ads.core.domain.AndroidGetUniversalRequestForPayLoad$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidGetUniversalRequestForPayLoad$invoke$1 r0 = new com.unity3d.ads.core.domain.AndroidGetUniversalRequestForPayLoad$invoke$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 != r3) goto L39
            java.lang.Object r5 = r0.L$3
            gatewayprotocol.v1.UniversalRequestKt$Dsl r5 = (gatewayprotocol.v1.UniversalRequestKt.Dsl) r5
            java.lang.Object r1 = r0.L$2
            gatewayprotocol.v1.UniversalRequestKt$Dsl r1 = (gatewayprotocol.v1.UniversalRequestKt.Dsl) r1
            java.lang.Object r2 = r0.L$1
            gatewayprotocol.v1.UniversalRequestKt$Dsl r2 = (gatewayprotocol.v1.UniversalRequestKt.Dsl) r2
            java.lang.Object r0 = r0.L$0
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r0 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L66
        L39:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L41:
            kotlin.ResultKt.throwOnFailure(r6)
            gatewayprotocol.v1.UniversalRequestKt$Dsl$Companion r6 = gatewayprotocol.v1.UniversalRequestKt.Dsl.Companion
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Builder r2 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.newBuilder()
            gatewayprotocol.v1.UniversalRequestKt$Dsl r6 = r6._create(r2)
            com.unity3d.ads.core.domain.GetUniversalRequestSharedData r2 = r4.getUniversalRequestSharedData
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r6
            r0.L$3 = r6
            r0.label = r3
            java.lang.Object r0 = r2.invoke(r0)
            if (r0 != r1) goto L61
            return r1
        L61:
            r1 = r6
            r2 = r1
            r6 = r0
            r0 = r5
            r5 = r2
        L66:
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$SharedData r6 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.SharedData) r6
            r5.setSharedData(r6)
            r1.setPayload(r0)
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r5 = r2._build()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetUniversalRequestForPayLoad.invoke(gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
