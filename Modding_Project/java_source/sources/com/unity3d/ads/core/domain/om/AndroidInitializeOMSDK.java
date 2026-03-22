package com.unity3d.ads.core.domain.om;

import android.content.Context;
import com.unity3d.ads.core.data.repository.OpenMeasurementRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0011\u0010\u000b\u001a\u00020\fH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/domain/om/AndroidInitializeOMSDK;", "Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;", "context", "Landroid/content/Context;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "omRepository", "Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;", "(Landroid/content/Context;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/OpenMeasurementRepository;)V", "invoke", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class AndroidInitializeOMSDK implements InitializeOMSDK {
    @NotNull
    private final Context context;
    @NotNull
    private final OpenMeasurementRepository omRepository;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidInitializeOMSDK(@NotNull Context context, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull SessionRepository sessionRepository, @NotNull OpenMeasurementRepository openMeasurementRepository) {
        this.context = context;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.sessionRepository = sessionRepository;
        this.omRepository = openMeasurementRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
    @Override // com.unity3d.ads.core.domain.om.InitializeOMSDK
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1
            if (r2 == 0) goto L17
            r2 = r1
            com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1 r2 = (com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
            goto L1c
        L17:
            com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1 r2 = new com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L3b
            if (r4 != r5) goto L33
            long r3 = r2.J$0
            java.lang.Object r2 = r2.L$0
            com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK r2 = (com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK) r2
            kotlin.ResultKt.throwOnFailure(r1)
            goto L6f
        L33:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3b:
            kotlin.ResultKt.throwOnFailure(r1)
            com.unity3d.ads.core.data.repository.SessionRepository r1 = r0.sessionRepository
            boolean r1 = r1.isOmEnabled()
            if (r1 == 0) goto Ld1
            kotlin.time.TimeSource$Monotonic r1 = kotlin.time.TimeSource.Monotonic.INSTANCE
            long r6 = r1.m1874markNowz9LOYto()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r8 = r0.sendDiagnosticEvent
            r15 = 62
            r16 = 0
            java.lang.String r9 = "om_activate_started"
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r8, r9, r10, r11, r12, r13, r14, r15, r16)
            com.unity3d.ads.core.data.repository.OpenMeasurementRepository r1 = r0.omRepository
            android.content.Context r4 = r0.context
            r2.L$0 = r0
            r2.J$0 = r6
            r2.label = r5
            java.lang.Object r1 = r1.activateOM(r4, r2)
            if (r1 != r3) goto L6d
            return r3
        L6d:
            r2 = r0
            r3 = r6
        L6f:
            com.unity3d.ads.core.data.model.OMResult r1 = (com.unity3d.ads.core.data.model.OMResult) r1
            boolean r5 = r1 instanceof com.unity3d.ads.core.data.model.OMResult.Success
            if (r5 == 0) goto L90
            com.unity3d.ads.core.domain.SendDiagnosticEvent r6 = r2.sendDiagnosticEvent
            kotlin.time.TimeSource$Monotonic$ValueTimeMark r1 = kotlin.time.TimeSource.Monotonic.ValueTimeMark.m1875boximpl(r3)
            double r1 = com.unity3d.ads.core.extensions.TimeExtensionsKt.elapsedMillis(r1)
            java.lang.Double r8 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r1)
            r13 = 60
            r14 = 0
            java.lang.String r7 = "om_activate_success_time"
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r6, r7, r8, r9, r10, r11, r12, r13, r14)
            goto Ld1
        L90:
            boolean r5 = r1 instanceof com.unity3d.ads.core.data.model.OMResult.Failure
            if (r5 == 0) goto Ld1
            com.unity3d.ads.core.domain.SendDiagnosticEvent r6 = r2.sendDiagnosticEvent
            kotlin.time.TimeSource$Monotonic$ValueTimeMark r2 = kotlin.time.TimeSource.Monotonic.ValueTimeMark.m1875boximpl(r3)
            double r2 = com.unity3d.ads.core.extensions.TimeExtensionsKt.elapsedMillis(r2)
            java.lang.Double r8 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r2)
            java.util.Map r2 = kotlin.collections.MapsKt.createMapBuilder()
            com.unity3d.ads.core.data.model.OMResult$Failure r1 = (com.unity3d.ads.core.data.model.OMResult.Failure) r1
            java.lang.String r3 = r1.getReason()
            java.lang.String r4 = "reason"
            r2.put(r4, r3)
            java.lang.String r3 = r1.getReasonDebug()
            if (r3 == 0) goto Lc0
            java.lang.String r3 = "reason_debug"
            java.lang.String r1 = r1.getReasonDebug()
            r2.put(r3, r1)
        Lc0:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            java.util.Map r9 = kotlin.collections.MapsKt.build(r2)
            r13 = 56
            r14 = 0
            java.lang.String r7 = "om_activate_failure_time"
            r10 = 0
            r11 = 0
            r12 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r6, r7, r8, r9, r10, r11, r12, r13, r14)
        Ld1:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK.invoke(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
