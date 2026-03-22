package com.google.android.engage.service;

import android.os.Bundle;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzo implements Continuation {
    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        int errorCode;
        int i = zzaa.zze;
        if (task.isCanceled()) {
            return Tasks.forException(new AppEngageException(3));
        }
        if (task.isSuccessful()) {
            return Tasks.forResult(Boolean.valueOf(((Bundle) task.getResult()).getBoolean("availability", false)));
        }
        Exception exception = task.getException();
        if (exception != null) {
            if (exception instanceof com.google.android.gms.internal.engage.zzp) {
                return Tasks.forResult(Boolean.FALSE);
            }
            if ((exception instanceof AppEngageException) && ((errorCode = ((AppEngageException) exception).getErrorCode()) == 2 || errorCode == 1)) {
                return Tasks.forResult(Boolean.FALSE);
            }
            return Tasks.forException(exception);
        }
        return Tasks.forException(new AppEngageException(3));
    }
}
