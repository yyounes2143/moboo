package com.changdu.mobovideo.googleengage;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker", f = "GoogleEngageUpdaterWorker.kt", i = {0}, l = {113}, m = "invoke", n = {NotificationCompat.CATEGORY_SERVICE}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class GoogleEngageUpdaterWorker$invoke$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ GoogleEngageUpdaterWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleEngageUpdaterWorker$invoke$1(GoogleEngageUpdaterWorker googleEngageUpdaterWorker, Continuation<? super GoogleEngageUpdaterWorker$invoke$1> continuation) {
        super(continuation);
        this.this$0 = googleEngageUpdaterWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.this$0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, null, this);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
