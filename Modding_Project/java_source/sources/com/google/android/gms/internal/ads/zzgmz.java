package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgmz {
    public static final /* synthetic */ int zza = 0;
    private static final zzgmy zzb = new zzgmy() { // from class: com.google.android.gms.internal.ads.zzgmx
        @Override // com.google.android.gms.internal.ads.zzgmy
        public final zzgek zza(zzgex zzgexVar, Integer num) {
            int i = zzgmz.zza;
            zzgtq zzc2 = ((zzgmp) zzgexVar).zzb().zzc();
            zzgel zzb2 = zzgma.zzc().zzb(zzc2.zzi());
            if (zzgma.zzc().zze(zzc2.zzi())) {
                zzgtm zza2 = zzb2.zza(zzc2.zzh());
                return new zzgmo(zzgoi.zza(zza2.zzg(), zza2.zzf(), zza2.zzb(), zzc2.zzg(), num), zzgej.zza());
            }
            throw new GeneralSecurityException("Creating new keys is not allowed.");
        }
    };
    private static final zzgmz zzc = zze();
    private final Map zzd = new HashMap();

    public static zzgmz zzb() {
        return zzc;
    }

    private final synchronized zzgek zzd(zzgex zzgexVar, @Nullable Integer num) throws GeneralSecurityException {
        zzgmy zzgmyVar;
        zzgmyVar = (zzgmy) this.zzd.get(zzgexVar.getClass());
        if (zzgmyVar != null) {
        } else {
            String obj = zzgexVar.toString();
            throw new GeneralSecurityException("Cannot create a new key for parameters " + obj + ": no key creator for this class was registered.");
        }
        return zzgmyVar.zza(zzgexVar, num);
    }

    private static zzgmz zze() {
        zzgmz zzgmzVar = new zzgmz();
        try {
            zzgmzVar.zzc(zzb, zzgmp.class);
            return zzgmzVar;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("unexpected error.", e);
        }
    }

    public final zzgek zza(zzgex zzgexVar, @Nullable Integer num) throws GeneralSecurityException {
        return zzd(zzgexVar, num);
    }

    public final synchronized void zzc(zzgmy zzgmyVar, Class cls) throws GeneralSecurityException {
        try {
            Map map = this.zzd;
            zzgmy zzgmyVar2 = (zzgmy) map.get(cls);
            if (zzgmyVar2 != null && !zzgmyVar2.equals(zzgmyVar)) {
                String obj = cls.toString();
                throw new GeneralSecurityException("Different key creator for parameters class " + obj + " already inserted");
            }
            map.put(cls, zzgmyVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
