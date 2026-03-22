package com.google.android.engage.service;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzp implements Continuation {
    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        int i = zzaa.zze;
        if (task.isCanceled()) {
            return Tasks.forException(new AppEngageException(3));
        }
        if (task.isSuccessful()) {
            Bundle bundle = (Bundle) task.getResult();
            int i2 = bundle.getInt("service_error_code", -1);
            String string = bundle.getString("service_error_message", "");
            if (i2 > 0) {
                if (!TextUtils.isEmpty(string)) {
                    return Tasks.forException(new AppEngageException(i2, string));
                }
                return Tasks.forException(new AppEngageException(i2));
            }
            return Tasks.forResult(bundle);
        }
        Exception exception = task.getException();
        if (exception != null) {
            if (exception instanceof com.google.android.gms.internal.engage.zzp) {
                return Tasks.forException(new AppEngageException(2));
            }
            return Tasks.forException(exception);
        }
        return Tasks.forException(new AppEngageException(3));
    }
}
