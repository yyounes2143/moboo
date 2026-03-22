package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgnj {
    private static final zzgnj zza = (zzgnj) zzgot.zza(new zzgos() { // from class: com.google.android.gms.internal.ads.zzgnh
        @Override // com.google.android.gms.internal.ads.zzgos
        public final Object zza() {
            zzgnj zzgnjVar = new zzgnj();
            zzgnjVar.zzg(new zzgmf(zzgmo.class, zzgoi.class, new zzgmg() { // from class: com.google.android.gms.internal.ads.zzgni
                @Override // com.google.android.gms.internal.ads.zzgmg
                public final zzgom zza(zzgek zzgekVar, zzgey zzgeyVar) {
                    return ((zzgmo) zzgekVar).zzb(zzgeyVar);
                }
            }));
            return zzgnjVar;
        }
    });
    private final AtomicReference zzb = new AtomicReference(new zzgor(new zzgon(), null));

    public static zzgnj zzc() {
        return zza;
    }

    public final zzgek zza(zzgom zzgomVar, @Nullable zzgey zzgeyVar) throws GeneralSecurityException {
        return ((zzgor) this.zzb.get()).zza(zzgomVar, zzgeyVar);
    }

    public final zzgex zzb(zzgom zzgomVar) throws GeneralSecurityException {
        return ((zzgor) this.zzb.get()).zzb(zzgomVar);
    }

    public final zzgom zzd(zzgek zzgekVar, Class cls, @Nullable zzgey zzgeyVar) throws GeneralSecurityException {
        return ((zzgor) this.zzb.get()).zzc(zzgekVar, cls, zzgeyVar);
    }

    public final zzgom zze(zzgex zzgexVar, Class cls) throws GeneralSecurityException {
        return ((zzgor) this.zzb.get()).zzd(zzgexVar, cls);
    }

    public final synchronized void zzf(zzgme zzgmeVar) throws GeneralSecurityException {
        AtomicReference atomicReference = this.zzb;
        zzgon zzgonVar = new zzgon((zzgor) atomicReference.get());
        zzgonVar.zza(zzgmeVar);
        atomicReference.set(new zzgor(zzgonVar, null));
    }

    public final synchronized void zzg(zzgmi zzgmiVar) throws GeneralSecurityException {
        AtomicReference atomicReference = this.zzb;
        zzgon zzgonVar = new zzgon((zzgor) atomicReference.get());
        zzgonVar.zzb(zzgmiVar);
        atomicReference.set(new zzgor(zzgonVar, null));
    }

    public final synchronized void zzh(zzgno zzgnoVar) throws GeneralSecurityException {
        AtomicReference atomicReference = this.zzb;
        zzgon zzgonVar = new zzgon((zzgor) atomicReference.get());
        zzgonVar.zzc(zzgnoVar);
        atomicReference.set(new zzgor(zzgonVar, null));
    }

    public final synchronized void zzi(zzgns zzgnsVar) throws GeneralSecurityException {
        AtomicReference atomicReference = this.zzb;
        zzgon zzgonVar = new zzgon((zzgor) atomicReference.get());
        zzgonVar.zzd(zzgnsVar);
        atomicReference.set(new zzgor(zzgonVar, null));
    }

    public final boolean zzj(zzgom zzgomVar) {
        return ((zzgor) this.zzb.get()).zzi(zzgomVar);
    }

    public final boolean zzk(zzgom zzgomVar) {
        return ((zzgor) this.zzb.get()).zzj(zzgomVar);
    }
}
