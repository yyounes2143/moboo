package com.google.android.engage.service;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.base.Function;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public abstract class AppEngagePublishTaskWorker extends ListenableWorker {
    public static final /* synthetic */ int zza = 0;

    public AppEngagePublishTaskWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @NonNull
    public abstract Task<Void> doPublish();

    @NonNull
    public abstract ListenableWorker.Result handleException(@NonNull AppEngageException appEngageException);

    @Override // androidx.work.ListenableWorker
    @NonNull
    public ListenableFuture<ListenableWorker.Result> startWork() {
        final Task<Void> doPublish = doPublish();
        return FluentFuture.from(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.engage.service.zzi
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(final CallbackToFutureAdapter.Completer completer) {
                return Task.this.addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.engage.service.zzl
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        CallbackToFutureAdapter.Completer completer2 = CallbackToFutureAdapter.Completer.this;
                        if (task.isCanceled()) {
                            completer2.setCancelled();
                        } else if (task.isSuccessful()) {
                            completer2.set(task.getResult());
                        } else {
                            Exception exception = task.getException();
                            if (exception != null) {
                                completer2.setException(exception);
                                return;
                            }
                            throw new IllegalStateException();
                        }
                    }
                });
            }
        })).transform(new Object(), MoreExecutors.directExecutor()).catching(AppEngageException.class, new Function() { // from class: com.google.android.engage.service.zzk
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return AppEngagePublishTaskWorker.this.handleException((AppEngageException) obj);
            }
        }, MoreExecutors.directExecutor());
    }
}
