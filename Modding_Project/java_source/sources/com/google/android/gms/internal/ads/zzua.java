package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzua implements zzvd {
    private final ArrayList zza = new ArrayList(1);
    private final HashSet zzb = new HashSet(1);
    private final zzvl zzc = new zzvl();
    private final zzrw zzd = new zzrw();
    @Nullable
    private Looper zze;
    @Nullable
    private zzbl zzf;
    @Nullable
    private zzpc zzg;

    @Override // com.google.android.gms.internal.ads.zzvd
    public /* synthetic */ zzbl zzM() {
        return null;
    }

    public final zzpc zzb() {
        zzpc zzpcVar = this.zzg;
        zzdc.zzb(zzpcVar);
        return zzpcVar;
    }

    public final zzrw zzc(@Nullable zzvb zzvbVar) {
        return this.zzd.zza(0, zzvbVar);
    }

    public final zzrw zzd(int i, @Nullable zzvb zzvbVar) {
        return this.zzd.zza(0, zzvbVar);
    }

    public final zzvl zze(@Nullable zzvb zzvbVar) {
        return this.zzc.zza(0, zzvbVar);
    }

    public final zzvl zzf(int i, @Nullable zzvb zzvbVar) {
        return this.zzc.zza(0, zzvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzg(Handler handler, zzrx zzrxVar) {
        this.zzd.zzb(handler, zzrxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzh(Handler handler, zzvm zzvmVar) {
        this.zzc.zzb(handler, zzvmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzi(zzvc zzvcVar) {
        HashSet hashSet = this.zzb;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.remove(zzvcVar);
        if (!isEmpty && hashSet.isEmpty()) {
            zzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzk(zzvc zzvcVar) {
        this.zze.getClass();
        HashSet hashSet = this.zzb;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.add(zzvcVar);
        if (isEmpty) {
            zzl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzm(zzvc zzvcVar, @Nullable zzhg zzhgVar, zzpc zzpcVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.zze;
        boolean z = true;
        if (looper != null && looper != myLooper) {
            z = false;
        }
        zzdc.zzd(z);
        this.zzg = zzpcVar;
        zzbl zzblVar = this.zzf;
        this.zza.add(zzvcVar);
        if (this.zze == null) {
            this.zze = myLooper;
            this.zzb.add(zzvcVar);
            zzn(zzhgVar);
        } else if (zzblVar != null) {
            zzk(zzvcVar);
            zzvcVar.zza(this, zzblVar);
        }
    }

    public abstract void zzn(@Nullable zzhg zzhgVar);

    public final void zzo(zzbl zzblVar) {
        this.zzf = zzblVar;
        ArrayList arrayList = this.zza;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zzvc) arrayList.get(i)).zza(this, zzblVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzp(zzvc zzvcVar) {
        ArrayList arrayList = this.zza;
        arrayList.remove(zzvcVar);
        if (arrayList.isEmpty()) {
            this.zze = null;
            this.zzf = null;
            this.zzg = null;
            this.zzb.clear();
            zzq();
            return;
        }
        zzi(zzvcVar);
    }

    public abstract void zzq();

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzr(zzrx zzrxVar) {
        this.zzd.zzc(zzrxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public final void zzs(zzvm zzvmVar) {
        this.zzc.zzi(zzvmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public /* synthetic */ void zzt(zzap zzapVar) {
        throw null;
    }

    public final boolean zzu() {
        if (!this.zzb.isEmpty()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    public /* synthetic */ boolean zzv() {
        return true;
    }

    public void zzj() {
    }

    public void zzl() {
    }
}
