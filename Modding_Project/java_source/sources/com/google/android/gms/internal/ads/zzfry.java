package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfry {
    public static ListenableFuture zza(Task task, CancellationTokenSource cancellationTokenSource) {
        final zzfrx zzfrxVar = new zzfrx(task, null);
        task.addOnCompleteListener(zzgdq.zzc(), new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfrw
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                zzfrx zzfrxVar2 = zzfrx.this;
                if (task2.isCanceled()) {
                    zzfrxVar2.cancel(false);
                } else if (task2.isSuccessful()) {
                    zzfrxVar2.zzc(task2.getResult());
                } else {
                    Exception exception = task2.getException();
                    if (exception != null) {
                        zzfrxVar2.zzd(exception);
                        return;
                    }
                    throw new IllegalStateException();
                }
            }
        });
        return zzfrxVar;
    }
}
