package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzafs implements zzadn {
    private final byte[] zza;
    private final zzek zzb;
    private final zzadt zzc;
    private zzadq zzd;
    private zzaet zze;
    private int zzf;
    @Nullable
    private zzav zzg;
    private zzady zzh;
    private int zzi;
    private int zzj;
    private zzafr zzk;
    private int zzl;
    private long zzm;

    public zzafs() {
        throw null;
    }

    private final long zza(zzek zzekVar, boolean z) {
        boolean z2;
        this.zzh.getClass();
        int zzc = zzekVar.zzc();
        while (zzc <= zzekVar.zzd() - 16) {
            zzekVar.zzL(zzc);
            zzady zzadyVar = this.zzh;
            int i = this.zzj;
            zzadt zzadtVar = this.zzc;
            if (zzadu.zzc(zzekVar, zzadyVar, i, zzadtVar)) {
                zzekVar.zzL(zzc);
                return zzadtVar.zza;
            }
            zzc++;
        }
        if (z) {
            while (zzc <= zzekVar.zzd() - this.zzi) {
                zzekVar.zzL(zzc);
                try {
                    z2 = zzadu.zzc(zzekVar, this.zzh, this.zzj, this.zzc);
                } catch (IndexOutOfBoundsException unused) {
                    z2 = false;
                }
                if (zzekVar.zzc() <= zzekVar.zzd() && z2) {
                    zzekVar.zzL(zzc);
                    return this.zzc.zza;
                }
                zzc++;
            }
            zzekVar.zzL(zzekVar.zzd());
            return -1L;
        }
        zzekVar.zzL(zzc);
        return -1L;
    }

    private final void zzg() {
        zzady zzadyVar = this.zzh;
        String str = zzeu.zza;
        this.zze.zzt((this.zzm * 1000000) / zzadyVar.zze, 1, this.zzl, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        boolean zzp;
        zzaem zzaelVar;
        int i = this.zzf;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            this.zze.getClass();
                            zzady zzadyVar = this.zzh;
                            zzadyVar.getClass();
                            zzafr zzafrVar = this.zzk;
                            if (zzafrVar != null && zzafrVar.zze()) {
                                return zzafrVar.zza(zzadoVar, zzaejVar);
                            }
                            if (this.zzm == -1) {
                                this.zzm = zzadu.zzb(zzadoVar, zzadyVar);
                                return 0;
                            }
                            zzek zzekVar = this.zzb;
                            int zzd = zzekVar.zzd();
                            if (zzd < 32768) {
                                int zza = zzadoVar.zza(zzekVar.zzN(), zzd, 32768 - zzd);
                                if (zza != -1) {
                                    z = false;
                                }
                                if (!z) {
                                    zzekVar.zzK(zzd + zza);
                                } else if (zzekVar.zza() == 0) {
                                    zzg();
                                    return -1;
                                }
                            } else {
                                z = false;
                            }
                            int zzc = zzekVar.zzc();
                            int i2 = this.zzl;
                            int i3 = this.zzi;
                            if (i2 < i3) {
                                zzekVar.zzM(Math.min(i3 - i2, zzekVar.zza()));
                            }
                            long zza2 = zza(zzekVar, z);
                            int zzc2 = zzekVar.zzc() - zzc;
                            zzekVar.zzL(zzc);
                            this.zze.zzr(zzekVar, zzc2);
                            this.zzl += zzc2;
                            if (zza2 != -1) {
                                zzg();
                                this.zzl = 0;
                                this.zzm = zza2;
                            }
                            int length = zzekVar.zzN().length - zzekVar.zzd();
                            if (zzekVar.zza() >= 16 || length >= 16) {
                                return 0;
                            }
                            int zza3 = zzekVar.zza();
                            System.arraycopy(zzekVar.zzN(), zzekVar.zzc(), zzekVar.zzN(), 0, zza3);
                            zzekVar.zzL(0);
                            zzekVar.zzK(zza3);
                            return 0;
                        }
                        zzadoVar.zzj();
                        zzek zzekVar2 = new zzek(2);
                        zzadoVar.zzh(zzekVar2.zzN(), 0, 2);
                        int zzq = zzekVar2.zzq();
                        if ((zzq >> 2) == 16382) {
                            zzadoVar.zzj();
                            this.zzj = zzq;
                            zzadq zzadqVar = this.zzd;
                            String str = zzeu.zza;
                            long zzf = zzadoVar.zzf();
                            long zzd2 = zzadoVar.zzd();
                            zzady zzadyVar2 = this.zzh;
                            zzadyVar2.getClass();
                            if (zzadyVar2.zzk != null) {
                                zzaelVar = new zzadw(zzadyVar2, zzf);
                            } else if (zzd2 != -1 && zzadyVar2.zzj > 0) {
                                zzafr zzafrVar2 = new zzafr(zzadyVar2, this.zzj, zzf, zzd2);
                                this.zzk = zzafrVar2;
                                zzaelVar = zzafrVar2.zzb();
                            } else {
                                zzaelVar = new zzael(zzadyVar2.zza(), 0L);
                            }
                            zzadqVar.zzP(zzaelVar);
                            this.zzf = 5;
                            return 0;
                        }
                        zzadoVar.zzj();
                        throw zzaz.zza("First frame does not start with sync code.", null);
                    }
                    zzady zzadyVar3 = this.zzh;
                    do {
                        zzadoVar.zzj();
                        zzej zzejVar = new zzej(new byte[4], 4);
                        zzadoVar.zzh(zzejVar.zza, 0, 4);
                        zzp = zzejVar.zzp();
                        int zzd3 = zzejVar.zzd(7);
                        int zzd4 = zzejVar.zzd(24) + 4;
                        if (zzd3 == 0) {
                            byte[] bArr = new byte[38];
                            zzadoVar.zzi(bArr, 0, 38);
                            zzadyVar3 = new zzady(bArr, 4);
                        } else if (zzadyVar3 != null) {
                            if (zzd3 == 3) {
                                zzek zzekVar3 = new zzek(zzd4);
                                zzadoVar.zzi(zzekVar3.zzN(), 0, zzd4);
                                zzadyVar3 = zzadyVar3.zzf(zzadv.zzb(zzekVar3));
                            } else if (zzd3 == 4) {
                                zzek zzekVar4 = new zzek(zzd4);
                                zzadoVar.zzi(zzekVar4.zzN(), 0, zzd4);
                                zzekVar4.zzM(4);
                                zzadyVar3 = zzadyVar3.zzg(Arrays.asList(zzaez.zzc(zzekVar4, false, false).zza));
                            } else if (zzd3 == 6) {
                                zzek zzekVar5 = new zzek(zzd4);
                                zzadoVar.zzi(zzekVar5.zzN(), 0, zzd4);
                                zzekVar5.zzM(4);
                                zzadyVar3 = zzadyVar3.zze(zzfyc.zzo(zzagl.zzb(zzekVar5)));
                            } else {
                                zzadoVar.zzk(zzd4);
                            }
                        } else {
                            throw new IllegalArgumentException();
                        }
                        String str2 = zzeu.zza;
                        this.zzh = zzadyVar3;
                    } while (!zzp);
                    zzadyVar3.getClass();
                    this.zzi = Math.max(zzadyVar3.zzc, 6);
                    zzz zzc3 = this.zzh.zzc(this.zza, this.zzg);
                    zzaet zzaetVar = this.zze;
                    zzx zzb = zzc3.zzb();
                    zzb.zzE("audio/flac");
                    zzaetVar.zzm(zzb.zzaj());
                    this.zze.zzl(this.zzh.zza());
                    this.zzf = 4;
                    return 0;
                }
                zzek zzekVar6 = new zzek(4);
                zzadoVar.zzi(zzekVar6.zzN(), 0, 4);
                if (zzekVar6.zzu() == 1716281667) {
                    this.zzf = 3;
                    return 0;
                }
                throw zzaz.zza("Failed to read FLAC stream marker.", null);
            }
            zzadoVar.zzh(this.zza, 0, 42);
            zzadoVar.zzj();
            this.zzf = 2;
            return 0;
        }
        zzadoVar.zzj();
        long zze = zzadoVar.zze();
        zzav zza4 = zzadv.zza(zzadoVar, true);
        zzadoVar.zzk((int) (zzadoVar.zze() - zze));
        this.zzg = zza4;
        this.zzf = 1;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zzd = zzadqVar;
        this.zze = zzadqVar.zzw(0, 1);
        zzadqVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        long j3 = 0;
        if (j == 0) {
            this.zzf = 0;
        } else {
            zzafr zzafrVar = this.zzk;
            if (zzafrVar != null) {
                zzafrVar.zzd(j2);
            }
        }
        if (j2 != 0) {
            j3 = -1;
        }
        this.zzm = j3;
        this.zzl = 0;
        this.zzb.zzI(0);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        zzadv.zza(zzadoVar, false);
        zzek zzekVar = new zzek(4);
        ((zzadd) zzadoVar).zzm(zzekVar.zzN(), 0, 4, false);
        if (zzekVar.zzu() != 1716281667) {
            return false;
        }
        return true;
    }

    public zzafs(int i) {
        this.zza = new byte[42];
        this.zzb = new zzek(new byte[32768], 0);
        this.zzc = new zzadt();
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
