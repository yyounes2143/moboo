package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgot extends RuntimeException {
    public zzgot(String str) {
        super(str);
    }

    public static Object zza(zzgos zzgosVar) {
        try {
            return zzgosVar.zza();
        } catch (Exception e) {
            throw new zzgot(e);
        }
    }

    public zzgot(String str, Throwable th) {
        super(str, th);
    }

    public zzgot(Throwable th) {
        super(th);
    }
}
