package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
@RequiresApi(23)
/* loaded from: classes4.dex */
public final class zzsj implements zzsz {
    private final MediaCodec zza;
    private final zzsp zzb;
    private final zzta zzc;
    @Nullable
    private final zzsv zzd;
    private boolean zze;
    private int zzf = 0;

    public /* synthetic */ zzsj(MediaCodec mediaCodec, HandlerThread handlerThread, zzta zztaVar, zzsv zzsvVar, zzsi zzsiVar) {
        this.zza = mediaCodec;
        this.zzb = new zzsp(handlerThread);
        this.zzc = zztaVar;
        this.zzd = zzsvVar;
    }

    public static /* synthetic */ String zzd(int i) {
        return zzt(i, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    public static /* synthetic */ String zze(int i) {
        return zzt(i, "ExoPlayer:MediaCodecQueueingThread:");
    }

    public static /* bridge */ /* synthetic */ void zzh(zzsj zzsjVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        zzsv zzsvVar;
        zzsp zzspVar = zzsjVar.zzb;
        MediaCodec mediaCodec = zzsjVar.zza;
        zzspVar.zzf(mediaCodec);
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, i);
        Trace.endSection();
        zzsjVar.zzc.zzh();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Build.VERSION.SDK_INT >= 35 && (zzsvVar = zzsjVar.zzd) != null) {
            zzsvVar.zza(mediaCodec);
        }
        zzsjVar.zzf = 1;
    }

    public static String zzt(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final int zza() {
        this.zzc.zzc();
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        this.zzc.zzc();
        return this.zzb.zzb(bufferInfo);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final MediaFormat zzc() {
        return this.zzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @Nullable
    public final ByteBuffer zzf(int i) {
        return this.zza.getInputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @Nullable
    public final ByteBuffer zzg(int i) {
        return this.zza.getOutputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @RequiresApi(35)
    public final void zzi() {
        this.zza.detachOutputSurface();
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzj() {
        this.zzc.zzb();
        MediaCodec mediaCodec = this.zza;
        mediaCodec.flush();
        this.zzb.zze();
        mediaCodec.start();
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzk(int i, int i2, int i3, long j, int i4) {
        this.zzc.zzd(i, 0, i3, j, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzl(int i, int i2, zzhm zzhmVar, long j, int i3) {
        this.zzc.zze(i, 0, zzhmVar, j, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzm() {
        zzsv zzsvVar;
        zzsv zzsvVar2;
        try {
            if (this.zzf == 1) {
                this.zzc.zzg();
                this.zzb.zzh();
            }
            this.zzf = 2;
            if (!this.zze) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 30 && i < 33) {
                    this.zza.stop();
                }
                if (i >= 35 && (zzsvVar2 = this.zzd) != null) {
                    zzsvVar2.zzc(this.zza);
                }
                this.zza.release();
                this.zze = true;
            }
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT >= 35 && (zzsvVar = this.zzd) != null) {
                zzsvVar.zzc(this.zza);
            }
            this.zza.release();
            this.zze = true;
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzn(int i, long j) {
        this.zza.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzo(int i, boolean z) {
        this.zza.releaseOutputBuffer(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzp(Surface surface) {
        this.zza.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzq(Bundle bundle) {
        this.zzc.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzr(int i) {
        this.zza.setVideoScalingMode(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final boolean zzs(zzsy zzsyVar) {
        this.zzb.zzg(zzsyVar);
        return true;
    }
}
