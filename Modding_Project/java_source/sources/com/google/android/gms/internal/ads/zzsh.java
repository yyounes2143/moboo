package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzsh implements zzsx {
    private final zzfvu zza;
    private final zzfvu zzb;

    public zzsh(int i) {
        zzsf zzsfVar = new zzsf(i);
        zzsg zzsgVar = new zzsg(i);
        this.zza = zzsfVar;
        this.zzb = zzsgVar;
    }

    public static /* synthetic */ HandlerThread zza(int i) {
        String zzt;
        zzt = zzsj.zzt(i, "ExoPlayer:MediaCodecAsyncAdapter:");
        return new HandlerThread(zzt);
    }

    public static /* synthetic */ HandlerThread zzb(int i) {
        String zzt;
        zzt = zzsj.zzt(i, "ExoPlayer:MediaCodecQueueingThread:");
        return new HandlerThread(zzt);
    }

    public final zzsj zzc(zzsw zzswVar) throws IOException {
        Exception exc;
        MediaCodec mediaCodec;
        zzsj zzsjVar;
        zztc zztcVar = zzswVar.zza;
        String str = zztcVar.zza;
        zzsj zzsjVar2 = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
                zzsjVar = new zzsj(mediaCodec, zza(((zzsf) this.zza).zza), new zzsn(mediaCodec, zzb(((zzsg) this.zzb).zza)), zzswVar.zzf, null);
            } catch (Exception e) {
                exc = e;
            }
            try {
                Trace.endSection();
                Surface surface = zzswVar.zzd;
                int i = 0;
                if (surface == null && zztcVar.zzh && Build.VERSION.SDK_INT >= 35) {
                    i = 8;
                }
                zzsj.zzh(zzsjVar, zzswVar.zzb, surface, null, i);
                return zzsjVar;
            } catch (Exception e2) {
                exc = e2;
                zzsjVar2 = zzsjVar;
                if (zzsjVar2 == null) {
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                } else {
                    zzsjVar2.zzm();
                }
                throw exc;
            }
        } catch (Exception e3) {
            exc = e3;
            mediaCodec = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsx
    public final /* bridge */ /* synthetic */ zzsz zzd(zzsw zzswVar) throws IOException {
        throw null;
    }
}
