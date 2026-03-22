package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeiy implements zzedf {
    @Nullable
    private final zzbdq zza;
    private final zzgdj zzb;
    private final zzfgt zzc;
    private final zzejh zzd;

    public zzeiy(zzfgt zzfgtVar, zzgdj zzgdjVar, @Nullable zzbdq zzbdqVar, zzejh zzejhVar) {
        this.zzc = zzfgtVar;
        this.zzb = zzgdjVar;
        this.zza = zzbdqVar;
        this.zzd = zzejhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        zzcaf zzcafVar = new zzcaf();
        zzejd zzejdVar = new zzejd();
        zzejdVar.zzd(new zzeix(this, zzcafVar, zzfcgVar, zzfbuVar, zzejdVar));
        zzfbz zzfbzVar = zzfbuVar.zzs;
        final zzbdl zzbdlVar = new zzbdl(zzejdVar, zzfbzVar.zzb, zzfbzVar.zza);
        zzfgn zzfgnVar = zzfgn.CUSTOM_RENDER_SYN;
        return zzfgd.zzd(new zzffy() { // from class: com.google.android.gms.internal.ads.zzeiw
            @Override // com.google.android.gms.internal.ads.zzffy
            public final void zza() {
                zzeiy.this.zza.zze(zzbdlVar);
            }
        }, this.zzb, zzfgnVar, this.zzc).zzb(zzfgn.CUSTOM_RENDER_ACK).zzd(zzcafVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        zzfbz zzfbzVar;
        if (this.zza != null && (zzfbzVar = zzfbuVar.zzs) != null && zzfbzVar.zza != null) {
            return true;
        }
        return false;
    }
}
