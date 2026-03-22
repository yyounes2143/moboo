package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeit implements zzedf {
    private final Context zza;
    private final zzcpu zzb;
    @Nullable
    private final zzbdq zzc;
    private final zzgdj zzd;
    private final zzfgt zze;

    public zzeit(Context context, zzcpu zzcpuVar, zzfgt zzfgtVar, zzgdj zzgdjVar, @Nullable zzbdq zzbdqVar) {
        this.zza = context;
        this.zzb = zzcpuVar;
        this.zze = zzfgtVar;
        this.zzd = zzgdjVar;
        this.zzc = zzbdqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        zzeir zzeirVar = new zzeir(this, new View(this.zza), null, new zzcqv() { // from class: com.google.android.gms.internal.ads.zzeip
            @Override // com.google.android.gms.internal.ads.zzcqv
            public final com.google.android.gms.ads.internal.client.zzea zza() {
                return null;
            }
        }, (zzfbv) zzfbuVar.zzu.get(0));
        zzcoq zza = this.zzb.zza(new zzcrn(zzfcgVar, zzfbuVar, null), zzeirVar);
        zzeis zzm = zza.zzm();
        zzfbz zzfbzVar = zzfbuVar.zzs;
        final zzbdl zzbdlVar = new zzbdl(zzm, zzfbzVar.zzb, zzfbzVar.zza);
        zzfgn zzfgnVar = zzfgn.CUSTOM_RENDER_SYN;
        return zzfgd.zzd(new zzffy() { // from class: com.google.android.gms.internal.ads.zzeiq
            @Override // com.google.android.gms.internal.ads.zzffy
            public final void zza() {
                zzeit.this.zzc.zze(zzbdlVar);
            }
        }, this.zzd, zzfgnVar, this.zze).zzb(zzfgn.CUSTOM_RENDER_ACK).zzd(zzgcy.zzh(zza.zza())).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        zzfbz zzfbzVar;
        if (this.zzc != null && (zzfbzVar = zzfbuVar.zzs) != null && zzfbzVar.zza != null) {
            return true;
        }
        return false;
    }
}
