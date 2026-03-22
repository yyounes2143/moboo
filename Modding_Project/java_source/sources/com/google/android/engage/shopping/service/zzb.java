package com.google.android.engage.shopping.service;

import android.os.Bundle;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzb implements SuccessContinuation {
    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        Bundle bundle = (Bundle) obj;
        return Tasks.forResult(null);
    }
}
