package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzget implements zzgmj {
    private final zzgty zza;
    private final List zzb;
    private final zzgms zzc;

    public static final zzget zzd(zzgty zzgtyVar) throws GeneralSecurityException {
        zzj(zzgtyVar);
        return new zzget(zzgtyVar, zzi(zzgtyVar), zzgms.zza);
    }

    public static final zzget zze(zzgex zzgexVar) throws GeneralSecurityException {
        zzgeq zzgeqVar = new zzgeq();
        zzgeo zzgeoVar = new zzgeo(zzgexVar, null);
        zzgeoVar.zzd();
        zzgeoVar.zzc();
        zzgeqVar.zza(zzgeoVar);
        return zzgeqVar.zzb();
    }

    public static /* bridge */ /* synthetic */ void zzh(zzgty zzgtyVar) {
        zzj(zzgtyVar);
    }

    private static List zzi(zzgty zzgtyVar) throws GeneralSecurityException {
        Integer valueOf;
        zzgek zza;
        zzgem zzgemVar;
        ArrayList arrayList = new ArrayList(zzgtyVar.zza());
        for (zzgtw zzgtwVar : zzgtyVar.zzh()) {
            int zza2 = zzgtwVar.zza();
            try {
                int zza3 = zzgtwVar.zza();
                if (zzgtwVar.zzf() == zzguq.RAW) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf(zza3);
                }
                zzgoi zza4 = zzgoi.zza(zzgtwVar.zzb().zzg(), zzgtwVar.zzb().zzf(), zzgtwVar.zzb().zzb(), zzgtwVar.zzf(), valueOf);
                zzgnj zzc = zzgnj.zzc();
                zzgey zza5 = zzgey.zza();
                if (!zzc.zzj(zza4)) {
                    zza = new zzgmo(zza4, zza5);
                } else {
                    zza = zzc.zza(zza4, zza5);
                }
                int zzk = zzgtwVar.zzk() - 2;
                boolean z = true;
                if (zzk != 1) {
                    if (zzk != 2) {
                        if (zzk == 3) {
                            zzgemVar = zzgem.zzc;
                        } else {
                            throw new GeneralSecurityException("Unknown key status");
                            break;
                        }
                    } else {
                        zzgemVar = zzgem.zzb;
                    }
                } else {
                    zzgemVar = zzgem.zza;
                }
                if (zza2 != zzgtyVar.zzb()) {
                    z = false;
                }
                arrayList.add(new zzger(zza, zzgemVar, zza2, z, null));
            } catch (GeneralSecurityException e) {
                if (!zzglp.zza.zza()) {
                    arrayList.add(null);
                } else {
                    throw new GeneralSecurityException("Parsing of a single key failed (maybe wrong status?) and Tink is configured via validateKeysetsOnParsing to reject such keysets.", e);
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void zzj(zzgty zzgtyVar) throws GeneralSecurityException {
        if (zzgtyVar != null && zzgtyVar.zza() > 0) {
            return;
        }
        throw new GeneralSecurityException("empty keyset");
    }

    public final String toString() {
        int i = zzgfa.zza;
        zzgtz zza = zzgud.zza();
        zzgty zzgtyVar = this.zza;
        zza.zzb(zzgtyVar.zzb());
        for (zzgtw zzgtwVar : zzgtyVar.zzh()) {
            zzgua zza2 = zzgub.zza();
            zza2.zzc(zzgtwVar.zzb().zzg());
            zza2.zzd(zzgtwVar.zzk());
            zza2.zzb(zzgtwVar.zzf());
            zza2.zza(zzgtwVar.zza());
            zza.zza((zzgub) zza2.zzbr());
        }
        return ((zzgud) zza.zzbr()).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgmj
    public final int zza() {
        return this.zzb.size();
    }

    public final zzger zzb(int i) {
        if (i >= 0 && i < zza()) {
            List list = this.zzb;
            if (list.get(i) != null) {
                return (zzger) list.get(i);
            }
            throw new IllegalStateException("Keyset-Entry at position " + i + " has wrong status or key parsing failed");
        }
        int zza = zza();
        throw new IndexOutOfBoundsException("Invalid index " + i + " for keyset of size " + zza);
    }

    public final zzger zzc() {
        for (zzger zzgerVar : this.zzb) {
            if (zzgerVar != null && zzgerVar.zzd()) {
                if (zzgerVar.zzc() == zzgem.zza) {
                    return zzgerVar;
                }
                throw new IllegalStateException("Keyset has primary which isn't enabled");
            }
        }
        throw new IllegalStateException("Keyset has no valid primary");
    }

    public final zzgty zzf() {
        return this.zza;
    }

    public final Object zzg(zzgei zzgeiVar, Class cls) throws GeneralSecurityException {
        boolean z;
        if (zzgeiVar instanceof zzglz) {
            zzglz zzglzVar = (zzglz) zzgeiVar;
            zzgty zzgtyVar = this.zza;
            int i = zzgfa.zza;
            int zzb = zzgtyVar.zzb();
            int i2 = 0;
            boolean z2 = false;
            boolean z3 = true;
            for (zzgtw zzgtwVar : zzgtyVar.zzh()) {
                if (zzgtwVar.zzk() == 3) {
                    if (zzgtwVar.zzj()) {
                        if (zzgtwVar.zzf() != zzguq.UNKNOWN_PREFIX) {
                            if (zzgtwVar.zzk() != 2) {
                                if (zzgtwVar.zza() == zzb) {
                                    if (!z2) {
                                        z2 = true;
                                    } else {
                                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                                    }
                                }
                                if (zzgtwVar.zzb().zzb() != zzgtk.ASYMMETRIC_PUBLIC) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                z3 &= z;
                                i2++;
                            } else {
                                throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzgtwVar.zza())));
                            }
                        } else {
                            throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzgtwVar.zza())));
                        }
                    } else {
                        throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzgtwVar.zza())));
                    }
                }
            }
            if (i2 != 0) {
                if (!z2 && !z3) {
                    throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
                }
                for (int i3 = 0; i3 < zza(); i3++) {
                    if (this.zzb.get(i3) == null) {
                        throw new GeneralSecurityException("Key parsing of key with index " + i3 + " and type_url " + zzgtyVar.zzd(i3).zzb().zzg() + " failed, unable to get primitive");
                    }
                }
                return zzglzVar.zza(this, this.zzc, cls);
            }
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        throw new GeneralSecurityException("Currently only subclasses of InternalConfiguration are accepted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzget(zzgty zzgtyVar, List list, zzgms zzgmsVar) throws GeneralSecurityException {
        this.zza = zzgtyVar;
        this.zzb = list;
        this.zzc = zzgmsVar;
        if (zzglp.zza.zza()) {
            HashSet hashSet = new HashSet();
            for (zzgtw zzgtwVar : zzgtyVar.zzh()) {
                if (!hashSet.contains(Integer.valueOf(zzgtwVar.zza()))) {
                    hashSet.add(Integer.valueOf(zzgtwVar.zza()));
                } else {
                    int zza = zzgtwVar.zza();
                    throw new GeneralSecurityException("KeyID " + zza + " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
                }
            }
            if (!hashSet.contains(Integer.valueOf(zzgtyVar.zzb()))) {
                throw new GeneralSecurityException("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
            }
        }
    }
}
