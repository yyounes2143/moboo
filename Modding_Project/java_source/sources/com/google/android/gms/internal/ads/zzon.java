package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzon {
    private final zzbj zza;
    private zzfyc zzb = zzfyc.zzn();
    private zzfyf zzc = zzfyf.zzd();
    @Nullable
    private zzvb zzd;
    private zzvb zze;
    private zzvb zzf;

    public zzon(zzbj zzbjVar) {
        this.zza = zzbjVar;
    }

    @Nullable
    private static zzvb zzj(zzbh zzbhVar, zzfyc zzfycVar, @Nullable zzvb zzvbVar, zzbj zzbjVar) {
        Object zzf;
        zzbl zzo = zzbhVar.zzo();
        int zzf2 = zzbhVar.zzf();
        if (zzo.zzo()) {
            zzf = null;
        } else {
            zzf = zzo.zzf(zzf2);
        }
        int i = -1;
        if (!zzbhVar.zzx() && !zzo.zzo()) {
            i = zzo.zzd(zzf2, zzbjVar, false).zzc(zzeu.zzs(zzbhVar.zzl()));
        }
        int i2 = i;
        for (int i3 = 0; i3 < zzfycVar.size(); i3++) {
            zzvb zzvbVar2 = (zzvb) zzfycVar.get(i3);
            if (zzm(zzvbVar2, zzf, zzbhVar.zzx(), zzbhVar.zzc(), zzbhVar.zzd(), i2)) {
                return zzvbVar2;
            }
        }
        if (!zzfycVar.isEmpty() || zzvbVar == null || !zzm(zzvbVar, zzf, zzbhVar.zzx(), zzbhVar.zzc(), zzbhVar.zzd(), i2)) {
            return null;
        }
        return zzvbVar;
    }

    private final void zzk(zzfye zzfyeVar, @Nullable zzvb zzvbVar, zzbl zzblVar) {
        if (zzvbVar != null) {
            if (zzblVar.zza(zzvbVar.zza) != -1) {
                zzfyeVar.zza(zzvbVar, zzblVar);
                return;
            }
            zzbl zzblVar2 = (zzbl) this.zzc.get(zzvbVar);
            if (zzblVar2 != null) {
                zzfyeVar.zza(zzvbVar, zzblVar2);
            }
        }
    }

    private final void zzl(zzbl zzblVar) {
        zzfye zzfyeVar = new zzfye();
        if (this.zzb.isEmpty()) {
            zzk(zzfyeVar, this.zze, zzblVar);
            if (!Objects.equals(this.zzf, this.zze)) {
                zzk(zzfyeVar, this.zzf, zzblVar);
            }
            if (!Objects.equals(this.zzd, this.zze) && !Objects.equals(this.zzd, this.zzf)) {
                zzk(zzfyeVar, this.zzd, zzblVar);
            }
        } else {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzk(zzfyeVar, (zzvb) this.zzb.get(i), zzblVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzfyeVar, this.zzd, zzblVar);
            }
        }
        this.zzc = zzfyeVar.zzc();
    }

    private static boolean zzm(zzvb zzvbVar, @Nullable Object obj, boolean z, int i, int i2, int i3) {
        if (!zzvbVar.zza.equals(obj)) {
            return false;
        }
        if (z) {
            if (zzvbVar.zzb != i || zzvbVar.zzc != i2) {
                return false;
            }
            return true;
        } else if (zzvbVar.zzb != -1 || zzvbVar.zze != i3) {
            return false;
        } else {
            return true;
        }
    }

    @Nullable
    public final zzbl zza(zzvb zzvbVar) {
        return (zzbl) this.zzc.get(zzvbVar);
    }

    @Nullable
    public final zzvb zzb() {
        return this.zzd;
    }

    @Nullable
    public final zzvb zzc() {
        Object next;
        Object obj;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzfyc zzfycVar = this.zzb;
        if (androidx.activity.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzfycVar)) {
            if (!zzfycVar.isEmpty()) {
                obj = zzfycVar.get(zzfycVar.size() - 1);
            } else {
                throw new NoSuchElementException();
            }
        } else {
            Iterator<E> it = zzfycVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        }
        return (zzvb) obj;
    }

    @Nullable
    public final zzvb zzd() {
        return this.zze;
    }

    @Nullable
    public final zzvb zze() {
        return this.zzf;
    }

    public final void zzg(zzbh zzbhVar) {
        this.zzd = zzj(zzbhVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(List list, @Nullable zzvb zzvbVar, zzbh zzbhVar) {
        this.zzb = zzfyc.zzl(list);
        if (!list.isEmpty()) {
            this.zze = (zzvb) list.get(0);
            zzvbVar.getClass();
            this.zzf = zzvbVar;
        }
        if (this.zzd == null) {
            this.zzd = zzj(zzbhVar, this.zzb, this.zze, this.zza);
        }
        zzl(zzbhVar.zzo());
    }

    public final void zzi(zzbh zzbhVar) {
        this.zzd = zzj(zzbhVar, this.zzb, this.zze, this.zza);
        zzl(zzbhVar.zzo());
    }
}
