package com.google.android.engage.travel.service;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zze implements SuccessContinuation {
    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        return Tasks.forResult((Boolean) obj);
    }
}
