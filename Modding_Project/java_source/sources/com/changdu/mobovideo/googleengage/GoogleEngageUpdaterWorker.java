package com.changdu.mobovideo.googleengage;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\nJ\"\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0082@¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/ListenableWorker$Result;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/changdu/mobovideo/googleengage/EngageServiceManager;", NotificationCompat.CATEGORY_SERVICE, "", "type", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/googleengage/EngageServiceManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGoogleEngageUpdaterWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleEngageUpdaterWorker.kt\ncom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 GsonUtil.kt\ncom/changdu/mobovideo/utils/GsonUtil\n*L\n1#1,140:1\n29#2:141\n39#3,8:142\n*S KotlinDebug\n*F\n+ 1 GoogleEngageUpdaterWorker.kt\ncom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker\n*L\n105#1:141\n121#1:142,8\n*E\n"})
/* loaded from: classes3.dex */
public final class GoogleEngageUpdaterWorker extends CoroutineWorker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5459Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "TASK_TAG", "Ljava/lang/String;", "TASK_ONCE_TAG", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nGoogleEngageUpdaterWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleEngageUpdaterWorker.kt\ncom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n+ 3 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,140:1\n105#2:141\n394#3,6:142\n*S KotlinDebug\n*F\n+ 1 GoogleEngageUpdaterWorker.kt\ncom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion\n*L\n72#1:141\n53#1:142,6\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, boolean z, String str) {
            if (z) {
                PeriodicWorkRequest build = new PeriodicWorkRequest.Builder(GoogleEngageUpdaterWorker.class, 1L, TimeUnit.DAYS, 1L, TimeUnit.HOURS).build();
                WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniquePeriodicWork("GoogleEngageUpdaterWorker", ExistingPeriodicWorkPolicy.KEEP, build);
                }
            }
            return Unit.INSTANCE;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable String str) {
            Data build = new Data.Builder().putString("type", str).build();
            WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.enqueueUniqueWork("GoogleEngageUpdaterWorkerOnce", ExistingWorkPolicy.APPEND_OR_REPLACE, new OneTimeWorkRequest.Builder(GoogleEngageUpdaterWorker.class).setInputData(build).build());
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Context context) {
            new EngageServiceManager(context).Wwwwwwwwwwwwwwwwwwwwwwwww(new Function2() { // from class: com.changdu.mobovideo.googleengage.Wwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = GoogleEngageUpdaterWorker.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, ((Boolean) obj).booleanValue(), (String) obj2);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            });
        }

        public Companion() {
        }
    }

    public GoogleEngageUpdaterWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f5459Wwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.changdu.mobovideo.googleengage.EngageServiceManager r10, java.lang.String r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.changdu.mobovideo.googleengage.EngageServiceManager, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r6, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e A[Catch: IOException -> 0x002c, TryCatch #0 {IOException -> 0x002c, blocks: (B:12:0x0028, B:30:0x0074, B:19:0x003a, B:25:0x0056, B:27:0x005e, B:22:0x0041), top: B:34:0x0022 }] */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super androidx.work.ListenableWorker.Result> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker$doWork$1
            if (r0 == 0) goto L13
            r0 = r6
            com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker$doWork$1 r0 = (com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker$doWork$1 r0 = new com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker$doWork$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.io.IOException -> L2c
            goto L74
        L2c:
            r6 = move-exception
            goto L79
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            java.lang.Object r2 = r0.L$0
            com.changdu.mobovideo.googleengage.EngageServiceManager r2 = (com.changdu.mobovideo.googleengage.EngageServiceManager) r2
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.io.IOException -> L2c
            goto L56
        L3e:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.io.IOException -> L2c
            com.changdu.mobovideo.googleengage.EngageServiceManager r2 = new com.changdu.mobovideo.googleengage.EngageServiceManager     // Catch: java.io.IOException -> L2c
            android.content.Context r6 = r5.f5459Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> L2c
            r2.<init>(r6)     // Catch: java.io.IOException -> L2c
            r0.L$0 = r2     // Catch: java.io.IOException -> L2c
            r0.label = r4     // Catch: java.io.IOException -> L2c
            java.lang.Object r6 = r2.Wwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.io.IOException -> L2c
            if (r6 != r1) goto L56
            goto L73
        L56:
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.io.IOException -> L2c
            boolean r6 = r6.booleanValue()     // Catch: java.io.IOException -> L2c
            if (r6 == 0) goto L74
            androidx.work.Data r6 = r5.getInputData()     // Catch: java.io.IOException -> L2c
            java.lang.String r4 = "type"
            java.lang.String r6 = r6.getString(r4)     // Catch: java.io.IOException -> L2c
            r4 = 0
            r0.L$0 = r4     // Catch: java.io.IOException -> L2c
            r0.label = r3     // Catch: java.io.IOException -> L2c
            java.lang.Object r6 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r6, r0)     // Catch: java.io.IOException -> L2c
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            androidx.work.ListenableWorker$Result r6 = androidx.work.ListenableWorker.Result.success()     // Catch: java.io.IOException -> L2c
            return r6
        L79:
            r6.toString()
            androidx.work.ListenableWorker$Result r6 = androidx.work.ListenableWorker.Result.success()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
