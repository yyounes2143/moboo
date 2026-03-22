package com.google.android.gms.internal.ads;

import androidx.core.view.ViewCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzane implements zzamr {
    private String zzf;
    private zzaet zzg;
    private boolean zzj;
    private int zzl;
    private int zzm;
    private int zzo;
    private int zzp;
    private int zzt;
    private boolean zzv;
    private final String zza = MimeTypes.VIDEO_MP2T;
    private int zze = 0;
    private final zzek zzb = new zzek(new byte[15], 2);
    private final zzej zzc = new zzej();
    private final zzek zzd = new zzek();
    private final zzanf zzq = new zzanf();
    private int zzr = C.RATE_UNSET_INT;
    private int zzs = -1;
    private long zzu = -1;
    private boolean zzk = true;
    private boolean zzn = true;
    private double zzh = -9.223372036854776E18d;
    private double zzi = -9.223372036854776E18d;

    public zzane(String str) {
    }

    private static final void zzf(zzek zzekVar, zzek zzekVar2, boolean z) {
        int zzc = zzekVar.zzc();
        int min = Math.min(zzekVar.zza(), zzekVar2.zza());
        zzekVar.zzH(zzekVar2.zzN(), zzekVar2.zzc(), min);
        zzekVar2.zzM(min);
        if (z) {
            zzekVar.zzL(zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zza(zzek zzekVar) throws zzaz {
        int i;
        int i2;
        zzdc.zzb(this.zzg);
        while (zzekVar.zza() > 0) {
            int i3 = this.zze;
            if (i3 != 0) {
                if (i3 != 1) {
                    zzanf zzanfVar = this.zzq;
                    int i4 = zzanfVar.zza;
                    if (i4 == 1 || i4 == 17) {
                        zzf(zzekVar, this.zzd, true);
                    }
                    int min = Math.min(zzekVar.zza(), zzanfVar.zzc - this.zzo);
                    this.zzg.zzr(zzekVar, min);
                    int i5 = this.zzo + min;
                    this.zzo = i5;
                    if (i5 == zzanfVar.zzc) {
                        int i6 = zzanfVar.zza;
                        if (i6 == 1) {
                            byte[] zzN = this.zzd.zzN();
                            zzang zza = zzani.zza(new zzej(zzN, zzN.length));
                            this.zzr = zza.zzb;
                            this.zzs = zza.zzc;
                            long j = this.zzu;
                            long j2 = zzanfVar.zzb;
                            if (j != j2) {
                                this.zzu = j2;
                                int i7 = zza.zza;
                                String str = "mhm1";
                                if (i7 != -1) {
                                    str = "mhm1".concat(String.format(".%02X", Integer.valueOf(i7)));
                                }
                                byte[] bArr = zza.zzd;
                                zzfyc zzfycVar = null;
                                if (bArr != null && bArr.length > 0) {
                                    zzfycVar = zzfyc.zzp(zzeu.zzb, bArr);
                                }
                                zzx zzxVar = new zzx();
                                zzxVar.zzO(this.zzf);
                                zzxVar.zzE(this.zza);
                                zzxVar.zzad(MimeTypes.AUDIO_MPEGH_MHM1);
                                zzxVar.zzae(this.zzr);
                                zzxVar.zzC(str);
                                zzxVar.zzP(zzfycVar);
                                this.zzg.zzm(zzxVar.zzaj());
                            }
                            this.zzv = true;
                        } else if (i6 == 17) {
                            byte[] zzN2 = this.zzd.zzN();
                            zzej zzejVar = new zzej(zzN2, zzN2.length);
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(2);
                                i2 = zzejVar.zzd(13);
                            } else {
                                i2 = 0;
                            }
                            this.zzt = i2;
                        } else if (i6 == 2) {
                            if (this.zzv) {
                                this.zzk = false;
                                i = 1;
                            } else {
                                i = 0;
                            }
                            int i8 = this.zzs - this.zzt;
                            double d = this.zzr;
                            long round = Math.round(this.zzh);
                            if (this.zzj) {
                                this.zzj = false;
                                this.zzh = this.zzi;
                            } else {
                                this.zzh += (i8 * 1000000.0d) / d;
                            }
                            this.zzg.zzt(round, i, this.zzp, 0, null);
                            this.zzv = false;
                            this.zzt = 0;
                            this.zzp = 0;
                        }
                        this.zze = 1;
                    }
                } else {
                    zzek zzekVar2 = this.zzb;
                    zzf(zzekVar, zzekVar2, false);
                    if (zzekVar2.zza() == 0) {
                        zzej zzejVar2 = this.zzc;
                        int zzd = zzekVar2.zzd();
                        zzejVar2.zzk(zzekVar2.zzN(), zzd);
                        zzanf zzanfVar2 = this.zzq;
                        if (zzani.zzb(zzejVar2, zzanfVar2)) {
                            this.zzo = 0;
                            this.zzp += zzanfVar2.zzc + zzd;
                            zzekVar2.zzL(0);
                            this.zzg.zzr(zzekVar2, zzekVar2.zzd());
                            zzekVar2.zzI(2);
                            this.zzd.zzI(zzanfVar2.zzc);
                            this.zzn = true;
                            this.zze = 2;
                        } else if (zzekVar2.zzd() < 15) {
                            zzekVar2.zzK(zzekVar2.zzd() + 1);
                        }
                    }
                    this.zzn = false;
                }
            } else {
                int i9 = this.zzl;
                if ((i9 & 2) == 0) {
                    zzekVar.zzL(zzekVar.zzd());
                } else {
                    if ((i9 & 4) == 0) {
                        while (zzekVar.zza() > 0) {
                            int i10 = this.zzm << 8;
                            this.zzm = i10;
                            int zzm = i10 | zzekVar.zzm();
                            this.zzm = zzm;
                            if ((zzm & ViewCompat.MEASURED_SIZE_MASK) == 12583333) {
                                zzekVar.zzL(zzekVar.zzc() - 3);
                                this.zzm = 0;
                            }
                        }
                    }
                    this.zze = 1;
                    break;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzf = zzaofVar.zzb();
        this.zzg = zzadqVar.zzw(zzaofVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzl = i;
        if (!this.zzk && (this.zzp != 0 || !this.zzn)) {
            this.zzj = true;
        }
        if (j != -9223372036854775807L) {
            double d = j;
            if (this.zzj) {
                this.zzi = d;
            } else {
                this.zzh = d;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zze = 0;
        this.zzm = 0;
        this.zzb.zzI(2);
        this.zzo = 0;
        this.zzp = 0;
        this.zzr = C.RATE_UNSET_INT;
        this.zzs = -1;
        this.zzt = 0;
        this.zzu = -1L;
        this.zzv = false;
        this.zzj = false;
        this.zzn = true;
        this.zzk = true;
        this.zzh = -9.223372036854776E18d;
        this.zzi = -9.223372036854776E18d;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
    }
}
