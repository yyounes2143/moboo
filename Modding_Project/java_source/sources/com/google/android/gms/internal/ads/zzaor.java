package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaor implements zzadn {
    private final zzek zza = new zzek(4);
    private final zzaeo zzb = new zzaeo(-1, -1, MimeTypes.IMAGE_WEBP);

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        return this.zzb.zzb(zzadoVar, zzaejVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zzb.zze(zzadqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        this.zzb.zzf(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        zzek zzekVar = this.zza;
        zzekVar.zzI(4);
        zzadd zzaddVar = (zzadd) zzadoVar;
        zzaddVar.zzm(zzekVar.zzN(), 0, 4, false);
        if (zzekVar.zzu() == 1380533830) {
            zzaddVar.zzl(4, false);
            zzekVar.zzI(4);
            zzaddVar.zzm(zzekVar.zzN(), 0, 4, false);
            if (zzekVar.zzu() == 1464156752) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
