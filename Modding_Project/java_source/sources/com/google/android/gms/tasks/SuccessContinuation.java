package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface SuccessContinuation<TResult, TContinuationResult> {
    @NonNull
    Task<TContinuationResult> then(TResult tresult) throws Exception;
}
