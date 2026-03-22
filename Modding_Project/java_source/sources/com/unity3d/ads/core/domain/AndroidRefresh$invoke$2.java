package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidRefresh$invoke$2", f = "AndroidRefresh.kt", i = {}, l = {26, 28}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes6.dex */
public final class AndroidRefresh$invoke$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AdDataRefreshResponseOuterClass.AdDataRefreshResponse>, Object> {
    final /* synthetic */ ByteString $adDataRefreshToken;
    final /* synthetic */ ByteString $opportunityId;
    int label;
    final /* synthetic */ AndroidRefresh this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRefresh$invoke$2(AndroidRefresh androidRefresh, ByteString byteString, ByteString byteString2, Continuation<? super AndroidRefresh$invoke$2> continuation) {
        super(2, continuation);
        this.this$0 = androidRefresh;
        this.$adDataRefreshToken = byteString;
        this.$opportunityId = byteString2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new AndroidRefresh$invoke$2(this.this$0, this.$adDataRefreshToken, this.$opportunityId, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r12 == r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
        if (r12 == r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r12)
            goto L56
        L12:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1a:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L34
        L1e:
            kotlin.ResultKt.throwOnFailure(r12)
            com.unity3d.ads.core.domain.AndroidRefresh r12 = r11.this$0
            com.unity3d.ads.core.domain.GetAdDataRefreshRequest r12 = com.unity3d.ads.core.domain.AndroidRefresh.access$getGetAdDataRefreshRequest$p(r12)
            com.google.protobuf.ByteString r1 = r11.$adDataRefreshToken
            com.google.protobuf.ByteString r4 = r11.$opportunityId
            r11.label = r3
            java.lang.Object r12 = r12.invoke(r1, r4, r11)
            if (r12 != r0) goto L34
            goto L55
        L34:
            r5 = r12
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r5 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r5
            com.unity3d.ads.core.domain.AndroidRefresh r12 = r11.this$0
            com.unity3d.ads.core.domain.GetRequestPolicy r12 = com.unity3d.ads.core.domain.AndroidRefresh.access$getGetRequestPolicy$p(r12)
            com.unity3d.ads.gatewayclient.RequestPolicy r6 = r12.invoke()
            com.unity3d.ads.core.domain.AndroidRefresh r12 = r11.this$0
            com.unity3d.ads.gatewayclient.GatewayClient r3 = com.unity3d.ads.core.domain.AndroidRefresh.access$getGatewayClient$p(r12)
            com.unity3d.ads.core.data.model.OperationType r7 = com.unity3d.ads.core.data.model.OperationType.REFRESH
            r11.label = r2
            r4 = 0
            r9 = 1
            r10 = 0
            r8 = r11
            java.lang.Object r12 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r3, r4, r5, r6, r7, r8, r9, r10)
            if (r12 != r0) goto L56
        L55:
            return r0
        L56:
            gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r12 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r12
            gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse$Payload r12 = r12.getPayload()
            gatewayprotocol.v1.AdDataRefreshResponseOuterClass$AdDataRefreshResponse r12 = r12.getAdDataRefreshResponse()
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidRefresh$invoke$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super AdDataRefreshResponseOuterClass.AdDataRefreshResponse> continuation) {
        return ((AndroidRefresh$invoke$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
