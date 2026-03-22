package com.changdu.mobovideo.picture;

import android.content.Context;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.picture.TokenSyncBridge$uploadPendingTokenBlocking$1", f = "TokenSyncBridge.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class TokenSyncBridge$uploadPendingTokenBlocking$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Integer>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $reason;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenSyncBridge$uploadPendingTokenBlocking$1(Context context, String str, Continuation<? super TokenSyncBridge$uploadPendingTokenBlocking$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$reason = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TokenSyncBridge$uploadPendingTokenBlocking$1(this.$context, this.$reason, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        TokenSyncBridge tokenSyncBridge = TokenSyncBridge.INSTANCE;
        Context applicationContext = this.$context.getApplicationContext();
        String str = this.$reason;
        this.label = 1;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = tokenSyncBridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext, str, this);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Integer> continuation) {
        return ((TokenSyncBridge$uploadPendingTokenBlocking$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
