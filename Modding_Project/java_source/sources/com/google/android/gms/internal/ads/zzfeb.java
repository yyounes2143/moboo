package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.LinkedList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfeb {
    private final int zzb;
    private final int zzc;
    private final LinkedList zza = new LinkedList();
    private final zzffa zzd = new zzffa();

    public zzfeb(int i, int i2) {
        this.zzb = i;
        this.zzc = i2;
    }

    private final void zzi() {
        while (true) {
            LinkedList linkedList = this.zza;
            if (!linkedList.isEmpty() && com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - ((zzfel) linkedList.getFirst()).zzd >= this.zzc) {
                this.zzd.zzg();
                linkedList.remove();
            } else {
                return;
            }
        }
    }

    public final int zza() {
        return this.zzd.zza();
    }

    public final int zzb() {
        zzi();
        return this.zza.size();
    }

    public final long zzc() {
        return this.zzd.zzb();
    }

    public final long zzd() {
        return this.zzd.zzc();
    }

    @Nullable
    public final zzfel zze() {
        zzffa zzffaVar = this.zzd;
        zzffaVar.zzf();
        zzi();
        LinkedList linkedList = this.zza;
        if (linkedList.isEmpty()) {
            return null;
        }
        zzfel zzfelVar = (zzfel) linkedList.remove();
        if (zzfelVar != null) {
            zzffaVar.zzh();
        }
        return zzfelVar;
    }

    public final zzfez zzf() {
        return this.zzd.zzd();
    }

    public final String zzg() {
        return this.zzd.zze();
    }

    public final boolean zzh(zzfel zzfelVar) {
        this.zzd.zzf();
        zzi();
        LinkedList linkedList = this.zza;
        if (linkedList.size() == this.zzb) {
            return false;
        }
        linkedList.add(zzfelVar);
        return true;
    }
}
