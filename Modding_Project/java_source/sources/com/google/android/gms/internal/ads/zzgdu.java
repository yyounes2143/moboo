package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgdu extends TimeoutException {
    public /* synthetic */ zzgdu(String str, zzgdv zzgdvVar) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
