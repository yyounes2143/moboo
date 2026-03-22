package com.changdu.mobovideo.picture.worker;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\n¨\u0006\f"}, d2 = {"Lcom/changdu/mobovideo/picture/worker/PeriodicHeartbeatWorker;", "Landroidx/work/CoroutineWorker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PeriodicHeartbeatWorker extends CoroutineWorker {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/changdu/mobovideo/picture/worker/PeriodicHeartbeatWorker$Companion;", "", "<init>", "()V", "", "TAG", "Ljava/lang/String;", "KEY_REASON", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public PeriodicHeartbeatWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super androidx.work.ListenableWorker.Result> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker$doWork$1
            if (r0 == 0) goto L13
            r0 = r7
            com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker$doWork$1 r0 = (com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker$doWork$1 r0 = new com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker$doWork$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L88
            goto L83
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.work.Data r7 = r6.getInputData()
            java.lang.String r2 = "key_reason"
            java.lang.String r7 = r7.getString(r2)
            if (r7 == 0) goto L46
            boolean r2 = kotlin.text.StringsKt.isBlank(r7)
            if (r2 == 0) goto L48
        L46:
            java.lang.String r7 = "periodic_heartbeat"
        L48:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L88
            r2.<init>()     // Catch: java.lang.Exception -> L88
            java.lang.String r4 = "periodic_heartbeat:"
            r2.append(r4)     // Catch: java.lang.Exception -> L88
            r2.append(r7)     // Catch: java.lang.Exception -> L88
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L88
            com.changdu.mobovideo.picture.TokenSyncStore r4 = com.changdu.mobovideo.picture.TokenSyncStore.INSTANCE     // Catch: java.lang.Exception -> L88
            java.lang.String r5 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Exception -> L88
            if (r5 == 0) goto L72
            boolean r5 = kotlin.text.StringsKt.isBlank(r5)     // Catch: java.lang.Exception -> L88
            if (r5 == 0) goto L68
            goto L72
        L68:
            com.changdu.mobovideo.picture.CDJobScheduler r7 = com.changdu.mobovideo.picture.CDJobScheduler.INSTANCE     // Catch: java.lang.Exception -> L88
            android.content.Context r0 = r6.getApplicationContext()     // Catch: java.lang.Exception -> L88
            r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r2)     // Catch: java.lang.Exception -> L88
            goto L83
        L72:
            boolean r2 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Exception -> L88
            if (r2 == 0) goto L83
            com.changdu.mobovideo.picture.PushAdapter r2 = com.changdu.mobovideo.picture.PushAdapter.INSTANCE     // Catch: java.lang.Exception -> L88
            r0.label = r3     // Catch: java.lang.Exception -> L88
            java.lang.Object r7 = r2.Wwwwwwwwwwwwwwwwwwwwwwwww(r7, r0)     // Catch: java.lang.Exception -> L88
            if (r7 != r1) goto L83
            return r1
        L83:
            androidx.work.ListenableWorker$Result r7 = androidx.work.ListenableWorker.Result.success()     // Catch: java.lang.Exception -> L88
            return r7
        L88:
            int r7 = r6.getRunAttemptCount()
            r0 = 3
            if (r7 < r0) goto L94
            androidx.work.ListenableWorker$Result r7 = androidx.work.ListenableWorker.Result.failure()
            goto L98
        L94:
            androidx.work.ListenableWorker$Result r7 = androidx.work.ListenableWorker.Result.retry()
        L98:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.picture.worker.PeriodicHeartbeatWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
