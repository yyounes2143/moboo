package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zztf extends Exception {
    @Nullable
    public final String zza;
    public final boolean zzb;
    @Nullable
    public final zztc zzc;
    @Nullable
    public final String zzd;

    public zztf(zzz zzzVar, @Nullable Throwable th, boolean z, int i) {
        this("Decoder init failed: [" + i + "], " + zzzVar.toString(), th, zzzVar.zzo, false, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_" + Math.abs(i), null);
    }

    public static /* bridge */ /* synthetic */ zztf zza(zztf zztfVar, zztf zztfVar2) {
        return new zztf(zztfVar.getMessage(), zztfVar.getCause(), zztfVar.zza, false, zztfVar.zzc, zztfVar.zzd, zztfVar2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zztf(com.google.android.gms.internal.ads.zzz r11, @androidx.annotation.Nullable java.lang.Throwable r12, boolean r13, com.google.android.gms.internal.ads.zztc r14) {
        /*
            r10 = this;
            java.lang.String r13 = r14.zza
            java.lang.String r0 = r11.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Decoder init failed: "
            r1.append(r2)
            r1.append(r13)
            java.lang.String r13 = ", "
            r1.append(r13)
            r1.append(r0)
            java.lang.String r3 = r1.toString()
            java.lang.String r5 = r11.zzo
            boolean r11 = r12 instanceof android.media.MediaCodec.CodecException
            if (r11 == 0) goto L2e
            r11 = r12
            android.media.MediaCodec$CodecException r11 = (android.media.MediaCodec.CodecException) r11
            java.lang.String r11 = r11.getDiagnosticInfo()
        L2c:
            r8 = r11
            goto L30
        L2e:
            r11 = 0
            goto L2c
        L30:
            r6 = 0
            r9 = 0
            r2 = r10
            r4 = r12
            r7 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztf.<init>(com.google.android.gms.internal.ads.zzz, java.lang.Throwable, boolean, com.google.android.gms.internal.ads.zztc):void");
    }

    private zztf(@Nullable String str, @Nullable Throwable th, @Nullable String str2, boolean z, @Nullable zztc zztcVar, @Nullable String str3, @Nullable zztf zztfVar) {
        super(str, th);
        this.zza = str2;
        this.zzb = false;
        this.zzc = zztcVar;
        this.zzd = str3;
    }
}
