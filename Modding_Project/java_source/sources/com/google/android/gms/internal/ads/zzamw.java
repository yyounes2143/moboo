package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamw implements zzamr {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    @Nullable
    private final zzaoi zzb;
    private zzamv zzg;
    private long zzh;
    private String zzi;
    private zzaet zzj;
    private boolean zzk;
    private final boolean[] zzd = new boolean[4];
    private final zzamu zze = new zzamu(128);
    private long zzl = -9223372036854775807L;
    @Nullable
    private final zzanj zzf = new zzanj(178, 128);
    @Nullable
    private final zzek zzc = new zzek();

    public zzamw(@Nullable zzaoi zzaoiVar, String str) {
        this.zzb = zzaoiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zza(zzek zzekVar) {
        int i;
        int i2;
        int i3 = 3;
        zzdc.zzb(this.zzg);
        zzdc.zzb(this.zzj);
        int zzc = zzekVar.zzc();
        int zzd = zzekVar.zzd();
        byte[] zzN = zzekVar.zzN();
        this.zzh += zzekVar.zza();
        this.zzj.zzr(zzekVar, zzekVar.zza());
        while (true) {
            int zza2 = zzfs.zza(zzN, zzc, zzd, this.zzd);
            if (zza2 == zzd) {
                break;
            }
            int i4 = zza2 + 3;
            int i5 = zzekVar.zzN()[i4] & 255;
            int i6 = zza2 - zzc;
            if (!this.zzk) {
                if (i6 > 0) {
                    this.zze.zza(zzN, zzc, zza2);
                }
                if (i6 < 0) {
                    i2 = -i6;
                } else {
                    i2 = 0;
                }
                zzamu zzamuVar = this.zze;
                if (zzamuVar.zzc(i5, i2)) {
                    zzaet zzaetVar = this.zzj;
                    int i7 = zzamuVar.zzb;
                    String str = this.zzi;
                    str.getClass();
                    byte[] copyOf = Arrays.copyOf(zzamuVar.zzc, zzamuVar.zza);
                    zzej zzejVar = new zzej(copyOf, copyOf.length);
                    zzejVar.zzo(i7);
                    zzejVar.zzo(4);
                    zzejVar.zzm();
                    zzejVar.zzn(8);
                    if (zzejVar.zzp()) {
                        zzejVar.zzn(4);
                        zzejVar.zzn(i3);
                    }
                    int zzd2 = zzejVar.zzd(4);
                    float f = 1.0f;
                    if (zzd2 == 15) {
                        int zzd3 = zzejVar.zzd(8);
                        int zzd4 = zzejVar.zzd(8);
                        if (zzd4 == 0) {
                            zzdx.zzf("H263Reader", "Invalid aspect ratio");
                        } else {
                            f = zzd3 / zzd4;
                        }
                    } else if (zzd2 < 7) {
                        f = zza[zzd2];
                    } else {
                        zzdx.zzf("H263Reader", "Invalid aspect ratio");
                    }
                    float f2 = f;
                    if (zzejVar.zzp()) {
                        zzejVar.zzn(2);
                        zzejVar.zzn(1);
                        if (zzejVar.zzp()) {
                            zzejVar.zzn(15);
                            zzejVar.zzm();
                            zzejVar.zzn(15);
                            zzejVar.zzm();
                            zzejVar.zzn(15);
                            zzejVar.zzm();
                            zzejVar.zzn(3);
                            zzejVar.zzn(11);
                            zzejVar.zzm();
                            zzejVar.zzn(15);
                            zzejVar.zzm();
                        }
                    }
                    if (zzejVar.zzd(2) != 0) {
                        zzdx.zzf("H263Reader", "Unhandled video object layer shape");
                    }
                    zzejVar.zzm();
                    int zzd5 = zzejVar.zzd(16);
                    zzejVar.zzm();
                    if (zzejVar.zzp()) {
                        if (zzd5 == 0) {
                            zzdx.zzf("H263Reader", "Invalid vop_increment_time_resolution");
                        } else {
                            int i8 = zzd5 - 1;
                            int i9 = 0;
                            while (i8 > 0) {
                                i8 >>= 1;
                                i9++;
                            }
                            zzejVar.zzn(i9);
                        }
                    }
                    zzejVar.zzm();
                    int zzd6 = zzejVar.zzd(13);
                    zzejVar.zzm();
                    int zzd7 = zzejVar.zzd(13);
                    zzejVar.zzm();
                    zzejVar.zzm();
                    zzx zzxVar = new zzx();
                    zzxVar.zzO(str);
                    zzxVar.zzE(MimeTypes.VIDEO_MP2T);
                    zzxVar.zzad("video/mp4v-es");
                    zzxVar.zzai(zzd6);
                    zzxVar.zzM(zzd7);
                    zzxVar.zzZ(f2);
                    zzxVar.zzP(Collections.singletonList(copyOf));
                    zzaetVar.zzm(zzxVar.zzaj());
                    this.zzk = true;
                }
            }
            this.zzg.zza(zzN, zzc, zza2);
            zzanj zzanjVar = this.zzf;
            if (i6 > 0) {
                zzanjVar.zza(zzN, zzc, zza2);
                i = 0;
            } else {
                i = -i6;
            }
            if (zzanjVar.zzd(i)) {
                int zzc2 = zzfs.zzc(zzanjVar.zza, zzanjVar.zzb);
                zzek zzekVar2 = this.zzc;
                String str2 = zzeu.zza;
                zzekVar2.zzJ(zzanjVar.zza, zzc2);
                this.zzb.zza(this.zzl, zzekVar2);
            }
            if (i5 == 178) {
                if (zzekVar.zzN()[zza2 + 2] == 1) {
                    zzanjVar.zzc(178);
                }
                i5 = 178;
            }
            int i10 = zzd - zza2;
            this.zzg.zzb(this.zzh - i10, i10, this.zzk);
            this.zzg.zzc(i5, this.zzl);
            zzc = i4;
            i3 = 3;
        }
        if (!this.zzk) {
            this.zze.zza(zzN, zzc, zzd);
        }
        this.zzg.zza(zzN, zzc, zzd);
        this.zzf.zza(zzN, zzc, zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzi = zzaofVar.zzb();
        zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 2);
        this.zzj = zzw;
        this.zzg = new zzamv(zzw);
        this.zzb.zzb(zzadqVar, zzaofVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
        zzdc.zzb(this.zzg);
        if (z) {
            this.zzg.zzb(this.zzh, 0, this.zzk);
            this.zzg.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzl = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        zzfs.zzi(this.zzd);
        this.zze.zzb();
        zzamv zzamvVar = this.zzg;
        if (zzamvVar != null) {
            zzamvVar.zzd();
        }
        this.zzf.zzb();
        this.zzh = 0L;
        this.zzl = -9223372036854775807L;
    }
}
