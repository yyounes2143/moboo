package com.changdu.mobovideo.picture;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.picture.TokenSyncBridge", f = "TokenSyncBridge.kt", i = {0, 0}, l = {77}, m = "uploadPendingToken", n = {"pendingToken", "userCache"}, s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class TokenSyncBridge$uploadPendingToken$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TokenSyncBridge this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenSyncBridge$uploadPendingToken$1(TokenSyncBridge tokenSyncBridge, Continuation<? super TokenSyncBridge$uploadPendingToken$1> continuation) {
        super(continuation);
        this.this$0 = tokenSyncBridge;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.this$0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, null, this);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
