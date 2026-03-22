package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.exoplayer.dash.DashMediaSource;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.Inflater;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzals implements zzakl {
    private final zzek zza = new zzek();
    private final zzek zzb = new zzek();
    private final zzalr zzc;
    @Nullable
    private Inflater zzd;

    public zzals(List list) {
        zzalr zzalrVar = new zzalr();
        this.zzc = zzalrVar;
        zzalrVar.zzb(new String((byte[]) list.get(0), StandardCharsets.UTF_8));
    }

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        zzfyc zzn;
        zzek zzekVar = this.zza;
        zzekVar.zzJ(bArr, i2 + i);
        zzekVar.zzL(i);
        if (this.zzd == null) {
            this.zzd = new Inflater();
        }
        zzek zzekVar2 = this.zzb;
        if (zzeu.zzO(zzekVar, zzekVar2, this.zzd)) {
            zzekVar.zzJ(zzekVar2.zzN(), zzekVar2.zzd());
        }
        zzalr zzalrVar = this.zzc;
        zzalrVar.zzd();
        int zza = zzekVar.zza();
        zzcu zzcuVar = null;
        if (zza >= 2 && zzekVar.zzq() == zza) {
            zzalrVar.zzc(zzekVar);
            zzcuVar = zzalrVar.zza(zzekVar);
        }
        if (zzcuVar != null) {
            zzn = zzfyc.zzo(zzcuVar);
        } else {
            zzn = zzfyc.zzn();
        }
        zzdkVar.zza(new zzakd(zzn, -9223372036854775807L, DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US));
    }
}
