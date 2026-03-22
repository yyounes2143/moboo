package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzuj extends zzua {
    private final HashMap zza = new HashMap();
    @Nullable
    private Handler zzb;
    @Nullable
    private zzhg zzc;

    public abstract void zzA(Object obj, zzvd zzvdVar, zzbl zzblVar);

    public final void zzB(final Object obj, zzvd zzvdVar) {
        HashMap hashMap = this.zza;
        zzdc.zzd(!hashMap.containsKey(obj));
        zzvc zzvcVar = new zzvc() { // from class: com.google.android.gms.internal.ads.zzug
            @Override // com.google.android.gms.internal.ads.zzvc
            public final void zza(zzvd zzvdVar2, zzbl zzblVar) {
                zzuj.this.zzA(obj, zzvdVar2, zzblVar);
            }
        };
        zzuh zzuhVar = new zzuh(this, obj);
        hashMap.put(obj, new zzui(zzvdVar, zzvcVar, zzuhVar));
        Handler handler = this.zzb;
        handler.getClass();
        zzvdVar.zzh(handler, zzuhVar);
        Handler handler2 = this.zzb;
        handler2.getClass();
        zzvdVar.zzg(handler2, zzuhVar);
        zzvdVar.zzm(zzvcVar, this.zzc, zzb());
        if (!zzu()) {
            zzvdVar.zzi(zzvcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzua
    @CallSuper
    public final void zzj() {
        for (zzui zzuiVar : this.zza.values()) {
            zzuiVar.zza.zzi(zzuiVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzua
    @CallSuper
    public final void zzl() {
        for (zzui zzuiVar : this.zza.values()) {
            zzuiVar.zza.zzk(zzuiVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzua
    @CallSuper
    public void zzn(@Nullable zzhg zzhgVar) {
        this.zzc = zzhgVar;
        this.zzb = zzeu.zzy(null);
    }

    @Override // com.google.android.gms.internal.ads.zzua
    @CallSuper
    public void zzq() {
        HashMap hashMap = this.zza;
        for (zzui zzuiVar : hashMap.values()) {
            zzvd zzvdVar = zzuiVar.zza;
            zzvdVar.zzp(zzuiVar.zzb);
            zzuh zzuhVar = zzuiVar.zzc;
            zzvdVar.zzs(zzuhVar);
            zzvdVar.zzr(zzuhVar);
        }
        hashMap.clear();
    }

    public int zzw(Object obj, int i) {
        return 0;
    }

    @Nullable
    public zzvb zzy(Object obj, zzvb zzvbVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzvd
    @CallSuper
    public void zzz() throws IOException {
        for (zzui zzuiVar : this.zza.values()) {
            zzuiVar.zza.zzz();
        }
    }

    public long zzx(Object obj, long j, @Nullable zzvb zzvbVar) {
        return j;
    }
}
