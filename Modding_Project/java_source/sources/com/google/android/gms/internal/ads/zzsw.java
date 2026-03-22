package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzsw {
    public final zztc zza;
    public final MediaFormat zzb;
    public final zzz zzc;
    @Nullable
    public final Surface zzd;
    @Nullable
    public final MediaCrypto zze = null;
    @Nullable
    public final zzsv zzf;

    private zzsw(zztc zztcVar, MediaFormat mediaFormat, zzz zzzVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, @Nullable zzsv zzsvVar) {
        this.zza = zztcVar;
        this.zzb = mediaFormat;
        this.zzc = zzzVar;
        this.zzd = surface;
        this.zzf = zzsvVar;
    }

    public static zzsw zza(zztc zztcVar, MediaFormat mediaFormat, zzz zzzVar, @Nullable MediaCrypto mediaCrypto, @Nullable zzsv zzsvVar) {
        return new zzsw(zztcVar, mediaFormat, zzzVar, null, null, zzsvVar);
    }

    public static zzsw zzb(zztc zztcVar, MediaFormat mediaFormat, zzz zzzVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
        return new zzsw(zztcVar, mediaFormat, zzzVar, surface, null, null);
    }
}
