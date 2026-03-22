package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3", f = "AndroidHandleGatewayAdResponse.kt", i = {0}, l = {176}, m = "invokeSuspend", n = {"mark$iv$iv"}, s = {"J$0"})
@SourceDebugExtension({"SMAP\nAndroidHandleGatewayAdResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n79#2,5:246\n113#2,6:251\n119#2:258\n1#3:257\n*S KotlinDebug\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3\n*L\n175#1:246,5\n175#1:251,6\n175#1:258\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidHandleGatewayAdResponse$invoke$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ AdObject $tmpAdObject;
    final /* synthetic */ String $webViewUrl;
    final /* synthetic */ AndroidWebViewContainer $webviewContainer;
    long J$0;
    int label;
    final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$invoke$3(AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, AndroidWebViewContainer androidWebViewContainer, String str, AdObject adObject, Continuation<? super AndroidHandleGatewayAdResponse$invoke$3> continuation) {
        super(1, continuation);
        this.this$0 = androidHandleGatewayAdResponse;
        this.$webviewContainer = androidWebViewContainer;
        this.$webViewUrl = str;
        this.$tmpAdObject = adObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@NotNull Continuation<?> continuation) {
        return new AndroidHandleGatewayAdResponse$invoke$3(this.this$0, this.$webviewContainer, this.$webViewUrl, this.$tmpAdObject, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
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
            r2 = 1
            if (r1 == 0) goto L1c
            if (r1 != r2) goto L14
            long r1 = r11.J$0
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L11
            goto L37
        L11:
            r0 = move-exception
            r12 = r0
            goto L41
        L14:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1c:
            kotlin.ResultKt.throwOnFailure(r12)
            com.unity3d.ads.adplayer.AndroidWebViewContainer r12 = r11.$webviewContainer
            java.lang.String r1 = r11.$webViewUrl
            kotlin.time.TimeSource$Monotonic r3 = kotlin.time.TimeSource.Monotonic.INSTANCE
            long r3 = r3.m1874markNowz9LOYto()
            kotlin.Result$Companion r5 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L3e
            r11.J$0 = r3     // Catch: java.lang.Throwable -> L3e
            r11.label = r2     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r12 = r12.loadUrl(r1, r11)     // Catch: java.lang.Throwable -> L3e
            if (r12 != r0) goto L36
            return r0
        L36:
            r1 = r3
        L37:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L11
            java.lang.Object r12 = kotlin.Result.m438constructorimpl(r12)     // Catch: java.lang.Throwable -> L11
            goto L4b
        L3e:
            r0 = move-exception
            r12 = r0
            r1 = r3
        L41:
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            java.lang.Object r12 = kotlin.ResultKt.createFailure(r12)
            java.lang.Object r12 = kotlin.Result.m438constructorimpl(r12)
        L4b:
            kotlin.Result r12 = kotlin.Result.m437boximpl(r12)
            kotlin.time.TimedValue r0 = new kotlin.time.TimedValue
            long r1 = kotlin.time.TimeSource.Monotonic.ValueTimeMark.m1879elapsedNowUwyO8pc(r1)
            r3 = 0
            r0.<init>(r12, r1, r3)
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r12 = r11.this$0
            com.unity3d.ads.core.data.model.AdObject r6 = r11.$tmpAdObject
            java.lang.Object r1 = r0.component1()
            kotlin.Result r1 = (kotlin.Result) r1
            java.lang.Object r10 = r1.m447unboximpl()
            long r0 = r0.m1894component2UwyO8pc()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r12 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getSendDiagnosticEvent$p(r12)
            boolean r2 = kotlin.Result.m445isSuccessimpl(r10)
            if (r2 == 0) goto L78
            java.lang.String r2 = "native_load_file_task_success_time"
            goto L7a
        L78:
            java.lang.String r2 = "native_load_file_task_failure_time"
        L7a:
            kotlin.time.DurationUnit r3 = kotlin.time.DurationUnit.MILLISECONDS
            double r0 = kotlin.time.Duration.m1798toDoubleimpl(r0, r3)
            java.lang.Double r3 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r0)
            r8 = 44
            r9 = 0
            r4 = 0
            r5 = 0
            r7 = 0
            r1 = r12
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            kotlin.ResultKt.throwOnFailure(r10)
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@Nullable Continuation<? super Unit> continuation) {
        return ((AndroidHandleGatewayAdResponse$invoke$3) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
