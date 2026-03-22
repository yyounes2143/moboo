package com.changdu.mobovideo.picture.worker;

import android.content.Context;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.changdu.mobovideo.picture.TokenSyncBridge;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/changdu/mobovideo/picture/worker/TokenSyncWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTokenSyncWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenSyncWorker.kt\ncom/changdu/mobovideo/picture/worker/TokenSyncWorker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes3.dex */
public final class TokenSyncWorker extends Worker {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\n¨\u0006\f"}, d2 = {"Lcom/changdu/mobovideo/picture/worker/TokenSyncWorker$Companion;", "", "<init>", "()V", "", "reason", "Landroidx/work/Data;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroidx/work/Data;", "TAG", "Ljava/lang/String;", "KEY_REASON", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Data Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            return new Data.Builder().putString("key_reason", str).build();
        }

        public Companion() {
        }
    }

    public TokenSyncWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    @NotNull
    public ListenableWorker.Result doWork() {
        String string = getInputData().getString("key_reason");
        if (string == null) {
            string = "";
        }
        if (StringsKt.isBlank(string)) {
            string = "token_sync";
        }
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TokenSyncBridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), string);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 1 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 3) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 4) {
                        if (getRunAttemptCount() >= 4) {
                            return ListenableWorker.Result.failure();
                        }
                        return ListenableWorker.Result.retry();
                    }
                    return ListenableWorker.Result.success();
                }
                return ListenableWorker.Result.success();
            }
            return ListenableWorker.Result.success();
        } catch (Throwable unused) {
            if (getRunAttemptCount() >= 4) {
                return ListenableWorker.Result.failure();
            }
            return ListenableWorker.Result.retry();
        }
    }
}
