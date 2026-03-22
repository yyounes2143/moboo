package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgng {
    private static final zzgng zza = new zzgng();
    private final AtomicReference zzb = new AtomicReference(new zzgog(new zzgod(null), null));

    public static zzgng zza() {
        return zza;
    }

    public final Object zzb(zzgek zzgekVar, Class cls) throws GeneralSecurityException {
        return ((zzgog) this.zzb.get()).zzb(zzgekVar, cls);
    }

    public final synchronized void zzc(zzgob zzgobVar) throws GeneralSecurityException {
        AtomicReference atomicReference = this.zzb;
        zzgod zzgodVar = new zzgod((zzgog) atomicReference.get(), null);
        zzgodVar.zza(zzgobVar);
        atomicReference.set(new zzgog(zzgodVar, null));
    }

    public final synchronized void zzd(zzgoh zzgohVar) throws GeneralSecurityException {
        AtomicReference atomicReference = this.zzb;
        zzgod zzgodVar = new zzgod((zzgog) atomicReference.get(), null);
        zzgodVar.zzb(zzgohVar);
        atomicReference.set(new zzgog(zzgodVar, null));
    }
}
