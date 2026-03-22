package com.changdu.mobovideo.picture;

import com.mbridge.msdk.mbbid.out.BidResponsed;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.picture.PushAdapter", f = "PushAdapter.kt", i = {0}, l = {50}, m = "touchPushService", n = {BidResponsed.KEY_TOKEN}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class PushAdapter$touchPushService$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PushAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushAdapter$touchPushService$1(PushAdapter pushAdapter, Continuation<? super PushAdapter$touchPushService$1> continuation) {
        super(continuation);
        this.this$0 = pushAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.Wwwwwwwwwwwwwwwwwwwwwwwww(null, this);
    }
}
