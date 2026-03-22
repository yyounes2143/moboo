package com.changdu.mobovideo.homewidget;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/ListenableWorker$Result;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SignInHomeWidgetUpdaterWorker extends CoroutineWorker {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5470Wwwwwwwwwwwwwwwwwwwwwwwww;

    public SignInHomeWidgetUpdaterWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f5470Wwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e A[Catch: IOException -> 0x00e8, TryCatch #0 {IOException -> 0x00e8, blocks: (B:12:0x002d, B:21:0x0082, B:23:0x008e, B:33:0x00da, B:24:0x0095, B:26:0x009c, B:28:0x00ae, B:30:0x00b4, B:32:0x00c6, B:31:0x00c3, B:27:0x00ab, B:17:0x003c), top: B:37:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095 A[Catch: IOException -> 0x00e8, TryCatch #0 {IOException -> 0x00e8, blocks: (B:12:0x002d, B:21:0x0082, B:23:0x008e, B:33:0x00da, B:24:0x0095, B:26:0x009c, B:28:0x00ae, B:30:0x00b4, B:32:0x00c6, B:31:0x00c3, B:27:0x00ab, B:17:0x003c), top: B:37:0x0021 }] */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super androidx.work.ListenableWorker.Result> r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$1
            if (r0 == 0) goto L13
            r0 = r10
            com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$1 r0 = (com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$1 r0 = new com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r1 = r0.L$1
            android.widget.RemoteViews r1 = (android.widget.RemoteViews) r1
            java.lang.Object r0 = r0.L$0
            android.content.ComponentName r0 = (android.content.ComponentName) r0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.io.IOException -> Le8
            goto L82
        L31:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L39:
            kotlin.ResultKt.throwOnFailure(r10)
            android.content.ComponentName r10 = new android.content.ComponentName     // Catch: java.io.IOException -> Le8
            android.content.Context r2 = r9.f5470Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> Le8
            java.lang.Class<com.changdu.mobovideo.homewidget.SignInHomeWidgetProvider> r4 = com.changdu.mobovideo.homewidget.SignInHomeWidgetProvider.class
            r10.<init>(r2, r4)     // Catch: java.io.IOException -> Le8
            android.widget.RemoteViews r2 = new android.widget.RemoteViews     // Catch: java.io.IOException -> Le8
            android.content.Context r4 = r9.f5470Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> Le8
            java.lang.String r4 = r4.getPackageName()     // Catch: java.io.IOException -> Le8
            r5 = 2131427548(0x7f0b00dc, float:1.8476715E38)
            r2.<init>(r4, r5)     // Catch: java.io.IOException -> Le8
            com.changdu.mobovideo.homewidget.HomeWidgetLaunchIntent r4 = com.changdu.mobovideo.homewidget.HomeWidgetLaunchIntent.INSTANCE     // Catch: java.io.IOException -> Le8
            android.content.Context r5 = r9.f5470Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> Le8
            java.lang.Class<com.changdu.mobovideo.MainActivity> r6 = com.changdu.mobovideo.MainActivity.class
            java.lang.String r7 = "SignInHomeWidgetProvider"
            java.lang.String r8 = "ndaction:tosignin()"
            android.app.PendingIntent r4 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r6, r7, r8)     // Catch: java.io.IOException -> Le8
            r5 = 2131231398(0x7f0802a6, float:1.8078876E38)
            r2.setOnClickPendingIntent(r5, r4)     // Catch: java.io.IOException -> Le8
            kotlinx.coroutines.CoroutineDispatcher r4 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.io.IOException -> Le8
            com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$entity$1 r5 = new com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$entity$1     // Catch: java.io.IOException -> Le8
            r6 = 0
            r5.<init>(r6)     // Catch: java.io.IOException -> Le8
            r0.L$0 = r10     // Catch: java.io.IOException -> Le8
            r0.L$1 = r2     // Catch: java.io.IOException -> Le8
            r0.label = r3     // Catch: java.io.IOException -> Le8
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r0)     // Catch: java.io.IOException -> Le8
            if (r0 != r1) goto L7e
            return r1
        L7e:
            r1 = r0
            r0 = r10
            r10 = r1
            r1 = r2
        L82:
            com.changdu.mobovideo.entity.SignInHomeWidgetEntity r10 = (com.changdu.mobovideo.entity.SignInHomeWidgetEntity) r10     // Catch: java.io.IOException -> Le8
            r2 = 2131231386(0x7f08029a, float:1.8078852E38)
            r3 = 8
            r4 = 2131231485(0x7f0802fd, float:1.8079052E38)
            if (r10 != 0) goto L95
            r1.setViewVisibility(r4, r3)     // Catch: java.io.IOException -> Le8
            r1.setViewVisibility(r2, r3)     // Catch: java.io.IOException -> Le8
            goto Lda
        L95:
            boolean r5 = r10.isSignIn()     // Catch: java.io.IOException -> Le8
            r6 = 0
            if (r5 != 0) goto Lab
            r1.setViewVisibility(r4, r6)     // Catch: java.io.IOException -> Le8
            java.lang.String r5 = r10.getSignInValue()     // Catch: java.io.IOException -> Le8
            java.lang.String r5 = r5.toString()     // Catch: java.io.IOException -> Le8
            r1.setTextViewText(r4, r5)     // Catch: java.io.IOException -> Le8
            goto Lae
        Lab:
            r1.setViewVisibility(r4, r3)     // Catch: java.io.IOException -> Le8
        Lae:
            boolean r4 = r10.isClaimed()     // Catch: java.io.IOException -> Le8
            if (r4 != 0) goto Lc3
            r1.setViewVisibility(r2, r6)     // Catch: java.io.IOException -> Le8
            java.lang.String r3 = r10.getClaimValue()     // Catch: java.io.IOException -> Le8
            java.lang.String r3 = r3.toString()     // Catch: java.io.IOException -> Le8
            r1.setTextViewText(r2, r3)     // Catch: java.io.IOException -> Le8
            goto Lc6
        Lc3:
            r1.setViewVisibility(r2, r3)     // Catch: java.io.IOException -> Le8
        Lc6:
            java.lang.String r2 = r10.getSignInHint()     // Catch: java.io.IOException -> Le8
            r3 = 2131231484(0x7f0802fc, float:1.807905E38)
            r1.setTextViewText(r3, r2)     // Catch: java.io.IOException -> Le8
            java.lang.String r10 = r10.getClaimHint()     // Catch: java.io.IOException -> Le8
            r2 = 2131231385(0x7f080299, float:1.807885E38)
            r1.setTextViewText(r2, r10)     // Catch: java.io.IOException -> Le8
        Lda:
            android.content.Context r10 = r9.f5470Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> Le8
            android.appwidget.AppWidgetManager r10 = android.appwidget.AppWidgetManager.getInstance(r10)     // Catch: java.io.IOException -> Le8
            r10.updateAppWidget(r0, r1)     // Catch: java.io.IOException -> Le8
            androidx.work.ListenableWorker$Result r10 = androidx.work.ListenableWorker.Result.success()     // Catch: java.io.IOException -> Le8
            return r10
        Le8:
            androidx.work.ListenableWorker$Result r10 = androidx.work.ListenableWorker.Result.success()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
