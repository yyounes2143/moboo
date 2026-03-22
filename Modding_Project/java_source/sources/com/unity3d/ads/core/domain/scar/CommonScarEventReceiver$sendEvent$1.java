package com.unity3d.ads.core.domain.scar;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.scar.CommonScarEventReceiver$sendEvent$1", f = "CommonScarEventReceiver.kt", i = {}, l = {35, 41, 52, 66, 73}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nCommonScarEventReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonScarEventReceiver.kt\ncom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"})
/* loaded from: classes6.dex */
public final class CommonScarEventReceiver$sendEvent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Enum<?> $eventId;
    final /* synthetic */ Object[] $params;
    int label;
    final /* synthetic */ CommonScarEventReceiver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonScarEventReceiver$sendEvent$1(Enum<?> r1, Object[] objArr, CommonScarEventReceiver commonScarEventReceiver, Continuation<? super CommonScarEventReceiver$sendEvent$1> continuation) {
        super(2, continuation);
        this.$eventId = r1;
        this.$params = objArr;
        this.this$0 = commonScarEventReceiver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CommonScarEventReceiver$sendEvent$1(this.$eventId, this.$params, this.this$0, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
        if (r3.emit(r2, r20) == r1) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
        if (r3.emit(r7, r20) == r1) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b2, code lost:
        if (r3.emit(r6, r20) == r1) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00db, code lost:
        if (r2.emit(r10, r20) == r1) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010d, code lost:
        if (r2.emit(r10, r20) == r1) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e4  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.scar.CommonScarEventReceiver$sendEvent$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((CommonScarEventReceiver$sendEvent$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
