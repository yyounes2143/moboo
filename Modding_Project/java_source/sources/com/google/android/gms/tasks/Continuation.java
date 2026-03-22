package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface Continuation<TResult, TContinuationResult> {
    TContinuationResult then(@NonNull Task<TResult> task) throws Exception;
}
