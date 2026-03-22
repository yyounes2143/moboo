package com.changdu.mobovideo.homewidget;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/ListenableWorker$Result;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SearchHomeWidgetUpdaterWorker extends CoroutineWorker {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5469Wwwwwwwwwwwwwwwwwwwwwwwww;

    public SearchHomeWidgetUpdaterWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f5469Wwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0136, code lost:
        r1 = r1.getNoContentText();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x013a, code lost:
        if (r1 != null) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cc A[Catch: IOException -> 0x0160, TRY_ENTER, TryCatch #0 {IOException -> 0x0160, blocks: (B:12:0x0035, B:21:0x0086, B:23:0x0096, B:25:0x009c, B:28:0x00a4, B:31:0x00cc, B:33:0x00fb, B:35:0x0103, B:42:0x0152, B:36:0x0130, B:32:0x00f8, B:38:0x0136, B:41:0x0145, B:40:0x013c, B:17:0x0044), top: B:46:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f8 A[Catch: IOException -> 0x0160, TryCatch #0 {IOException -> 0x0160, blocks: (B:12:0x0035, B:21:0x0086, B:23:0x0096, B:25:0x009c, B:28:0x00a4, B:31:0x00cc, B:33:0x00fb, B:35:0x0103, B:42:0x0152, B:36:0x0130, B:32:0x00f8, B:38:0x0136, B:41:0x0145, B:40:0x013c, B:17:0x0044), top: B:46:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0103 A[Catch: IOException -> 0x0160, TryCatch #0 {IOException -> 0x0160, blocks: (B:12:0x0035, B:21:0x0086, B:23:0x0096, B:25:0x009c, B:28:0x00a4, B:31:0x00cc, B:33:0x00fb, B:35:0x0103, B:42:0x0152, B:36:0x0130, B:32:0x00f8, B:38:0x0136, B:41:0x0145, B:40:0x013c, B:17:0x0044), top: B:46:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0130 A[Catch: IOException -> 0x0160, TryCatch #0 {IOException -> 0x0160, blocks: (B:12:0x0035, B:21:0x0086, B:23:0x0096, B:25:0x009c, B:28:0x00a4, B:31:0x00cc, B:33:0x00fb, B:35:0x0103, B:42:0x0152, B:36:0x0130, B:32:0x00f8, B:38:0x0136, B:41:0x0145, B:40:0x013c, B:17:0x0044), top: B:46:0x0029 }] */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super androidx.work.ListenableWorker.Result> r17) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.homewidget.SearchHomeWidgetUpdaterWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
