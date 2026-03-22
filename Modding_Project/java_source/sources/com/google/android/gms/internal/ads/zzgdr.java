package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgdr {
    public static void zza(Throwable th) {
        if (th instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
    }

    public static void zzb(Throwable th) {
        if (!(th instanceof Error) || (th instanceof StackOverflowError)) {
            return;
        }
        throw ((Error) th);
    }
}
