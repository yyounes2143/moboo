package com.google.android.datatransport.runtime.retries;

import java.lang.Throwable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface Function<TInput, TResult, TException extends Throwable> {
    TResult apply(TInput tinput) throws Throwable;
}
