package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgeq {
    private final List zza = new ArrayList();
    private final zzgms zzb = zzgms.zza;
    private boolean zzc = false;

    public final void zzd() {
        for (zzgeo zzgeoVar : this.zza) {
            zzgeoVar.zza = false;
        }
    }

    public final zzgeq zza(zzgeo zzgeoVar) {
        zzgeq zzgeqVar;
        boolean z;
        zzgeqVar = zzgeoVar.zzf;
        if (zzgeqVar == null) {
            z = zzgeoVar.zza;
            if (z) {
                zzd();
            }
            zzgeoVar.zzf = this;
            this.zza.add(zzgeoVar);
            return this;
        }
        throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
    }

    public final zzget zzb() throws GeneralSecurityException {
        zzgep zzgepVar;
        zzgep zzgepVar2;
        zzgep zzgepVar3;
        int i;
        zzgex zzgexVar;
        Integer num;
        zzgex zzgexVar2;
        zzgem zzgemVar;
        boolean z;
        zzgem zzgemVar2;
        int i2;
        boolean z2;
        zzgem zzgemVar3;
        zzgep zzgepVar4;
        zzgep zzgepVar5;
        zzgep zzgepVar6;
        zzgep zzgepVar7;
        zzgem unused;
        zzgep unused2;
        char c = 1;
        if (!this.zzc) {
            this.zzc = true;
            List<zzgeo> list = this.zza;
            zzgtu zzc = zzgty.zzc();
            ArrayList arrayList = new ArrayList(list.size());
            int i3 = 0;
            int i4 = 0;
            while (i4 < list.size() - 1) {
                int i5 = i4 + 1;
                zzgepVar4 = ((zzgeo) list.get(i4)).zze;
                zzgepVar5 = zzgep.zza;
                if (zzgepVar4 == zzgepVar5) {
                    zzgepVar6 = ((zzgeo) list.get(i5)).zze;
                    zzgepVar7 = zzgep.zza;
                    if (zzgepVar6 != zzgepVar7) {
                        throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                    }
                }
                i4 = i5;
            }
            HashSet hashSet = new HashSet();
            Integer num2 = null;
            for (zzgeo zzgeoVar : list) {
                unused = zzgeoVar.zzb;
                zzgepVar = zzgeoVar.zze;
                if (zzgepVar != null) {
                    zzgepVar2 = zzgeoVar.zze;
                    zzgepVar3 = zzgep.zza;
                    if (zzgepVar2 != zzgepVar3) {
                        unused2 = zzgeoVar.zze;
                        i = i3;
                    } else {
                        int i6 = i3;
                        while (true) {
                            if (i6 != 0 && !hashSet.contains(Integer.valueOf(i6))) {
                                break;
                            }
                            int i7 = zzgou.zza;
                            i6 = i3;
                            while (i6 == 0) {
                                byte[] zzb = zzgol.zzb(4);
                                i6 = (zzb[3] & 255) | ((zzb[i3] & 255) << 24) | ((zzb[c] & 255) << 16) | ((zzb[2] & 255) << 8);
                            }
                        }
                        i = i6;
                    }
                    Integer valueOf = Integer.valueOf(i);
                    if (!hashSet.contains(valueOf)) {
                        hashSet.add(valueOf);
                        zzgeo.zza(zzgeoVar);
                        zzgexVar = zzgeoVar.zzd;
                        if (c != zzgexVar.zza()) {
                            num = null;
                        } else {
                            num = valueOf;
                        }
                        zzgmz zzb2 = zzgmz.zzb();
                        zzgexVar2 = zzgeoVar.zzd;
                        zzgek zza = zzb2.zza(zzgexVar2, num);
                        zzgemVar = zzgeoVar.zzb;
                        z = zzgeoVar.zza;
                        zzger zzgerVar = new zzger(zza, zzgemVar, i, z, null);
                        int i8 = i;
                        zzgemVar2 = zzgeoVar.zzb;
                        zzgoi zzgoiVar = (zzgoi) zzgnj.zzc().zzd(zza, zzgoi.class, zzgey.zza());
                        Integer zzf = zzgoiVar.zzf();
                        if (zzf != null && zzf.intValue() != i8) {
                            throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
                        }
                        zzgem zzgemVar4 = zzgem.zza;
                        if (zzgemVar4.equals(zzgemVar2)) {
                            i2 = 3;
                        } else if (zzgem.zzb.equals(zzgemVar2)) {
                            i2 = 4;
                        } else if (zzgem.zzc.equals(zzgemVar2)) {
                            i2 = 5;
                        } else {
                            throw new IllegalStateException("Unknown key status");
                        }
                        zzgtv zzc2 = zzgtw.zzc();
                        zzgtj zza2 = zzgtm.zza();
                        zza2.zzb(zzgoiVar.zzg());
                        zza2.zzc(zzgoiVar.zze());
                        zza2.zza(zzgoiVar.zzb());
                        zzc2.zza(zza2);
                        zzc2.zzd(i2);
                        zzc2.zzb(i8);
                        zzc2.zzc(zzgoiVar.zzc());
                        zzc.zza((zzgtw) zzc2.zzbr());
                        z2 = zzgeoVar.zza;
                        if (z2) {
                            if (num2 == null) {
                                zzgemVar3 = zzgeoVar.zzb;
                                if (zzgemVar3 == zzgemVar4) {
                                    num2 = valueOf;
                                } else {
                                    throw new GeneralSecurityException("Primary key is not enabled");
                                }
                            } else {
                                throw new GeneralSecurityException("Two primaries were set");
                            }
                        }
                        arrayList.add(zzgerVar);
                        c = 1;
                        i3 = 0;
                    } else {
                        throw new GeneralSecurityException("Id " + i + " is used twice in the keyset");
                    }
                } else {
                    throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
                }
            }
            if (num2 != null) {
                zzc.zzb(num2.intValue());
                zzgty zzgtyVar = (zzgty) zzc.zzbr();
                zzget.zzj(zzgtyVar);
                return new zzget(zzgtyVar, arrayList, this.zzb);
            }
            throw new GeneralSecurityException("No primary was set");
        }
        throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
    }
}
