package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzlm {
    private final zzpc zza;
    private final zzll zze;
    private final zzmj zzh;
    private final zzdq zzi;
    private boolean zzj;
    @Nullable
    private zzhg zzk;
    private zzww zzl = new zzww(0);
    private final IdentityHashMap zzc = new IdentityHashMap();
    private final Map zzd = new HashMap();
    private final List zzb = new ArrayList();
    private final HashMap zzf = new HashMap();
    private final Set zzg = new HashSet();

    public zzlm(zzll zzllVar, zzmj zzmjVar, zzdq zzdqVar, zzpc zzpcVar) {
        this.zza = zzpcVar;
        this.zze = zzllVar;
        this.zzh = zzmjVar;
        this.zzi = zzdqVar;
    }

    private final void zzr(int i, int i2) {
        while (true) {
            List list = this.zzb;
            if (i < list.size()) {
                ((zzlk) list.get(i)).zzd += i2;
                i++;
            } else {
                return;
            }
        }
    }

    private final void zzs(zzlk zzlkVar) {
        zzlj zzljVar = (zzlj) this.zzf.get(zzlkVar);
        if (zzljVar != null) {
            zzljVar.zza.zzi(zzljVar.zzb);
        }
    }

    private final void zzt() {
        Iterator it = this.zzg.iterator();
        while (it.hasNext()) {
            zzlk zzlkVar = (zzlk) it.next();
            if (zzlkVar.zzc.isEmpty()) {
                zzs(zzlkVar);
                it.remove();
            }
        }
    }

    private final void zzu(zzlk zzlkVar) {
        if (zzlkVar.zze && zzlkVar.zzc.isEmpty()) {
            zzlj zzljVar = (zzlj) this.zzf.remove(zzlkVar);
            zzljVar.getClass();
            zzvd zzvdVar = zzljVar.zza;
            zzvdVar.zzp(zzljVar.zzb);
            zzli zzliVar = zzljVar.zzc;
            zzvdVar.zzs(zzliVar);
            zzvdVar.zzr(zzliVar);
            this.zzg.remove(zzlkVar);
        }
    }

    private final void zzv(zzlk zzlkVar) {
        zzuw zzuwVar = zzlkVar.zza;
        zzvc zzvcVar = new zzvc() { // from class: com.google.android.gms.internal.ads.zzlc
            @Override // com.google.android.gms.internal.ads.zzvc
            public final void zza(zzvd zzvdVar, zzbl zzblVar) {
                zzlm.this.zze.zzj();
            }
        };
        zzli zzliVar = new zzli(this, zzlkVar);
        this.zzf.put(zzlkVar, new zzlj(zzuwVar, zzvcVar, zzliVar));
        zzuwVar.zzh(new Handler(zzeu.zzz(), null), zzliVar);
        zzuwVar.zzg(new Handler(zzeu.zzz(), null), zzliVar);
        zzuwVar.zzm(zzvcVar, this.zzk, this.zza);
    }

    private final void zzw(int i, int i2) {
        while (true) {
            i2--;
            if (i2 >= i) {
                zzlk zzlkVar = (zzlk) this.zzb.remove(i2);
                this.zzd.remove(zzlkVar.zzb);
                zzr(i2, -zzlkVar.zza.zzC().zzc());
                zzlkVar.zze = true;
                if (this.zzj) {
                    zzu(zzlkVar);
                }
            } else {
                return;
            }
        }
    }

    public final int zza() {
        return this.zzb.size();
    }

    public final zzbl zzb() {
        List list = this.zzb;
        if (!list.isEmpty()) {
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzlk zzlkVar = (zzlk) list.get(i2);
                zzlkVar.zzd = i;
                i += zzlkVar.zza.zzC().zzc();
            }
            return new zzlt(list, this.zzl);
        }
        return zzbl.zza;
    }

    public final zzbl zzc(int i, int i2, List list) {
        boolean z;
        boolean z2 = true;
        if (i >= 0 && i <= i2 && i2 <= zza()) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        if (list.size() != i2 - i) {
            z2 = false;
        }
        zzdc.zzd(z2);
        for (int i3 = i; i3 < i2; i3++) {
            ((zzlk) this.zzb.get(i3)).zza.zzt((zzap) list.get(i3 - i));
        }
        return zzb();
    }

    public final void zzg(@Nullable zzhg zzhgVar) {
        zzdc.zzf(!this.zzj);
        this.zzk = zzhgVar;
        int i = 0;
        while (true) {
            List list = this.zzb;
            if (i < list.size()) {
                zzlk zzlkVar = (zzlk) list.get(i);
                zzv(zzlkVar);
                this.zzg.add(zzlkVar);
                i++;
            } else {
                this.zzj = true;
                return;
            }
        }
    }

    public final void zzh() {
        for (zzlj zzljVar : this.zzf.values()) {
            try {
                zzljVar.zza.zzp(zzljVar.zzb);
            } catch (RuntimeException e) {
                zzdx.zzd("MediaSourceList", "Failed to release child source.", e);
            }
            zzvd zzvdVar = zzljVar.zza;
            zzli zzliVar = zzljVar.zzc;
            zzvdVar.zzs(zzliVar);
            zzvdVar.zzr(zzliVar);
        }
        this.zzf.clear();
        this.zzg.clear();
        this.zzj = false;
    }

    public final void zzi(zzuz zzuzVar) {
        IdentityHashMap identityHashMap = this.zzc;
        zzlk zzlkVar = (zzlk) identityHashMap.remove(zzuzVar);
        zzlkVar.getClass();
        zzlkVar.zza.zzG(zzuzVar);
        zzlkVar.zzc.remove(((zzut) zzuzVar).zza);
        if (!identityHashMap.isEmpty()) {
            zzt();
        }
        zzu(zzlkVar);
    }

    public final boolean zzj() {
        return this.zzj;
    }

    public final zzbl zzk(int i, List list, zzww zzwwVar) {
        if (!list.isEmpty()) {
            this.zzl = zzwwVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                zzlk zzlkVar = (zzlk) list.get(i2 - i);
                if (i2 > 0) {
                    zzlk zzlkVar2 = (zzlk) this.zzb.get(i2 - 1);
                    zzlkVar.zzc(zzlkVar2.zzd + zzlkVar2.zza.zzC().zzc());
                } else {
                    zzlkVar.zzc(0);
                }
                zzr(i2, zzlkVar.zza.zzC().zzc());
                this.zzb.add(i2, zzlkVar);
                this.zzd.put(zzlkVar.zzb, zzlkVar);
                if (this.zzj) {
                    zzv(zzlkVar);
                    if (this.zzc.isEmpty()) {
                        this.zzg.add(zzlkVar);
                    } else {
                        zzs(zzlkVar);
                    }
                }
            }
        }
        return zzb();
    }

    public final zzbl zzl(int i, int i2, int i3, zzww zzwwVar) {
        boolean z;
        if (zza() >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        this.zzl = null;
        return zzb();
    }

    public final zzbl zzm(int i, int i2, zzww zzwwVar) {
        boolean z = false;
        if (i >= 0 && i <= i2 && i2 <= zza()) {
            z = true;
        }
        zzdc.zzd(z);
        this.zzl = zzwwVar;
        zzw(i, i2);
        return zzb();
    }

    public final zzbl zzn(List list, zzww zzwwVar) {
        List list2 = this.zzb;
        zzw(0, list2.size());
        return zzk(list2.size(), list, zzwwVar);
    }

    public final zzbl zzo(zzww zzwwVar) {
        int zza = zza();
        if (zzwwVar.zzc() != zza) {
            zzwwVar = zzwwVar.zzf().zzg(0, zza);
        }
        this.zzl = zzwwVar;
        return zzb();
    }

    public final zzuz zzp(zzvb zzvbVar, zzzg zzzgVar, long j) {
        int i = zzlt.zzb;
        Pair pair = (Pair) zzvbVar.zza;
        Object obj = pair.first;
        zzvb zza = zzvbVar.zza(pair.second);
        zzlk zzlkVar = (zzlk) this.zzd.get(obj);
        zzlkVar.getClass();
        this.zzg.add(zzlkVar);
        zzlj zzljVar = (zzlj) this.zzf.get(zzlkVar);
        if (zzljVar != null) {
            zzljVar.zza.zzk(zzljVar.zzb);
        }
        zzlkVar.zzc.add(zza);
        zzut zzI = zzlkVar.zza.zzI(zza, zzzgVar, j);
        this.zzc.put(zzI, zzlkVar);
        zzt();
        return zzI;
    }

    public final zzww zzq() {
        return this.zzl;
    }
}
