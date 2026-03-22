package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzakb extends zzajz {
    @Nullable
    private zzaka zza;
    private int zzb;
    private boolean zzc;
    @Nullable
    private zzaey zzd;
    @Nullable
    private zzaew zze;

    @Override // com.google.android.gms.internal.ads.zzajz
    public final long zza(zzek zzekVar) {
        int i;
        int i2 = 0;
        if ((zzekVar.zzN()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzekVar.zzN()[0];
        zzaka zzakaVar = this.zza;
        zzdc.zzb(zzakaVar);
        if (!zzakaVar.zzd[(b >> 1) & (255 >>> (8 - zzakaVar.zze))].zza) {
            i = zzakaVar.zza.zze;
        } else {
            i = zzakaVar.zza.zzf;
        }
        if (this.zzc) {
            i2 = (this.zzb + i) / 4;
        }
        if (zzekVar.zzb() < zzekVar.zzd() + 4) {
            byte[] copyOf = Arrays.copyOf(zzekVar.zzN(), zzekVar.zzd() + 4);
            zzekVar.zzJ(copyOf, copyOf.length);
        } else {
            zzekVar.zzK(zzekVar.zzd() + 4);
        }
        long j = i2;
        byte[] zzN = zzekVar.zzN();
        zzN[zzekVar.zzd() - 4] = (byte) (j & 255);
        zzN[zzekVar.zzd() - 3] = (byte) ((j >>> 8) & 255);
        zzN[zzekVar.zzd() - 2] = (byte) ((j >>> 16) & 255);
        zzN[zzekVar.zzd() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    @EnsuresNonNullIf
    public final boolean zzc(zzek zzekVar, long j, zzajw zzajwVar) throws IOException {
        zzaka zzakaVar;
        int i;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        long j2;
        int i6;
        int i7;
        int i8;
        boolean z;
        if (this.zza != null) {
            zzajwVar.zza.getClass();
            return false;
        }
        zzaey zzaeyVar = this.zzd;
        int i9 = 1;
        if (zzaeyVar == null) {
            zzaez.zzd(1, zzekVar, false);
            int zzj = zzekVar.zzj();
            int zzm = zzekVar.zzm();
            int zzj2 = zzekVar.zzj();
            int zzi = zzekVar.zzi();
            if (zzi <= 0) {
                i6 = -1;
            } else {
                i6 = zzi;
            }
            int zzi2 = zzekVar.zzi();
            if (zzi2 <= 0) {
                i7 = -1;
            } else {
                i7 = zzi2;
            }
            int zzi3 = zzekVar.zzi();
            if (zzi3 <= 0) {
                i8 = -1;
            } else {
                i8 = zzi3;
            }
            int zzm2 = zzekVar.zzm();
            int pow = (int) Math.pow(2.0d, zzm2 & 15);
            int pow2 = (int) Math.pow(2.0d, (zzm2 & 240) >> 4);
            if (1 != (zzekVar.zzm() & 1)) {
                z = false;
            } else {
                z = true;
            }
            this.zzd = new zzaey(zzj, zzm, zzj2, i6, i7, i8, pow, pow2, z, Arrays.copyOf(zzekVar.zzN(), zzekVar.zzd()));
        } else {
            int i10 = 4;
            zzaew zzaewVar = this.zze;
            if (zzaewVar == null) {
                this.zze = zzaez.zzc(zzekVar, true, true);
            } else {
                byte[] bArr = new byte[zzekVar.zzd()];
                System.arraycopy(zzekVar.zzN(), 0, bArr, 0, zzekVar.zzd());
                int i11 = zzaeyVar.zza;
                int i12 = 5;
                zzaez.zzd(5, zzekVar, false);
                int zzm3 = zzekVar.zzm() + 1;
                zzaev zzaevVar = new zzaev(zzekVar.zzN());
                zzaevVar.zzc(zzekVar.zzc() * 8);
                int i13 = 0;
                while (true) {
                    int i14 = 2;
                    int i15 = 16;
                    if (i13 < zzm3) {
                        if (zzaevVar.zzb(24) == 5653314) {
                            int zzb = zzaevVar.zzb(16);
                            int zzb2 = zzaevVar.zzb(24);
                            if (!zzaevVar.zzd()) {
                                boolean zzd = zzaevVar.zzd();
                                for (int i16 = 0; i16 < zzb2; i16++) {
                                    if (zzd) {
                                        if (zzaevVar.zzd()) {
                                            zzaevVar.zzc(i12);
                                        }
                                    } else {
                                        zzaevVar.zzc(i12);
                                    }
                                }
                            } else {
                                zzaevVar.zzc(i12);
                                for (int i17 = 0; i17 < zzb2; i17 += zzaevVar.zzb(zzaez.zza(zzb2 - i17))) {
                                }
                            }
                            int i18 = i10;
                            int zzb3 = zzaevVar.zzb(i18);
                            if (zzb3 <= 2) {
                                if (zzb3 != i9) {
                                    if (zzb3 != 2) {
                                        i5 = i9;
                                        i13++;
                                        i9 = i5;
                                        i10 = 4;
                                        i12 = 5;
                                    }
                                } else {
                                    i14 = zzb3;
                                }
                                zzaevVar.zzc(32);
                                zzaevVar.zzc(32);
                                int zzb4 = zzaevVar.zzb(i18) + i9;
                                zzaevVar.zzc(i9);
                                if (i14 == i9) {
                                    if (zzb != 0) {
                                        i5 = i9;
                                        j2 = (long) Math.floor(Math.pow(zzb2, 1.0d / zzb));
                                    } else {
                                        i5 = i9;
                                        j2 = 0;
                                    }
                                } else {
                                    i5 = i9;
                                    j2 = zzb * zzb2;
                                }
                                zzaevVar.zzc((int) (j2 * zzb4));
                                i13++;
                                i9 = i5;
                                i10 = 4;
                                i12 = 5;
                            } else {
                                throw zzaz.zza("lookup type greater than 2 not decodable: " + zzb3, null);
                            }
                        } else {
                            throw zzaz.zza("expected code book to start with [0x56, 0x43, 0x42] at " + zzaevVar.zza(), null);
                        }
                    } else {
                        int i19 = i9;
                        int i20 = 6;
                        int zzb5 = zzaevVar.zzb(6) + i19;
                        for (int i21 = 0; i21 < zzb5; i21++) {
                            if (zzaevVar.zzb(16) != 0) {
                                throw zzaz.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int zzb6 = zzaevVar.zzb(6) + i19;
                        int i22 = 0;
                        while (true) {
                            int i23 = 3;
                            if (i22 < zzb6) {
                                int zzb7 = zzaevVar.zzb(i15);
                                if (zzb7 != 0) {
                                    if (zzb7 == i19) {
                                        int zzb8 = zzaevVar.zzb(5);
                                        int[] iArr2 = new int[zzb8];
                                        int i24 = -1;
                                        for (int i25 = 0; i25 < zzb8; i25++) {
                                            int zzb9 = zzaevVar.zzb(4);
                                            iArr2[i25] = zzb9;
                                            if (zzb9 > i24) {
                                                i24 = zzb9;
                                            }
                                        }
                                        int i26 = i24 + 1;
                                        int[] iArr3 = new int[i26];
                                        int i27 = 0;
                                        while (i27 < i26) {
                                            int i28 = 1;
                                            iArr3[i27] = zzaevVar.zzb(i23) + 1;
                                            int zzb10 = zzaevVar.zzb(2);
                                            if (zzb10 > 0) {
                                                i4 = 8;
                                                zzaevVar.zzc(8);
                                            } else {
                                                i4 = 8;
                                            }
                                            int i29 = i26;
                                            int i30 = 0;
                                            while (true) {
                                                int i31 = i28 << zzb10;
                                                iArr = iArr2;
                                                if (i30 < i31) {
                                                    zzaevVar.zzc(i4);
                                                    i30++;
                                                    iArr2 = iArr;
                                                    i4 = 8;
                                                    i28 = 1;
                                                }
                                            }
                                            i27++;
                                            iArr2 = iArr;
                                            i26 = i29;
                                            i23 = 3;
                                        }
                                        int[] iArr4 = iArr2;
                                        zzaevVar.zzc(2);
                                        int zzb11 = zzaevVar.zzb(4);
                                        int i32 = 0;
                                        int i33 = 0;
                                        for (int i34 = 0; i34 < zzb8; i34++) {
                                            i32 += iArr3[iArr4[i34]];
                                            while (i33 < i32) {
                                                zzaevVar.zzc(zzb11);
                                                i33++;
                                            }
                                        }
                                    } else {
                                        throw zzaz.zza("floor type greater than 1 not decodable: " + zzb7, null);
                                    }
                                } else {
                                    int i35 = 8;
                                    zzaevVar.zzc(8);
                                    zzaevVar.zzc(16);
                                    zzaevVar.zzc(16);
                                    zzaevVar.zzc(6);
                                    zzaevVar.zzc(8);
                                    int zzb12 = zzaevVar.zzb(4) + 1;
                                    int i36 = 0;
                                    while (i36 < zzb12) {
                                        zzaevVar.zzc(i35);
                                        i36++;
                                        i35 = 8;
                                    }
                                }
                                i22++;
                                i20 = 6;
                                i15 = 16;
                                i19 = 1;
                            } else {
                                int i37 = 1;
                                int zzb13 = zzaevVar.zzb(i20) + 1;
                                int i38 = 0;
                                while (i38 < zzb13) {
                                    if (zzaevVar.zzb(16) <= 2) {
                                        zzaevVar.zzc(24);
                                        zzaevVar.zzc(24);
                                        zzaevVar.zzc(24);
                                        int zzb14 = zzaevVar.zzb(i20) + i37;
                                        int i39 = 8;
                                        zzaevVar.zzc(8);
                                        int[] iArr5 = new int[zzb14];
                                        for (int i40 = 0; i40 < zzb14; i40++) {
                                            int zzb15 = zzaevVar.zzb(3);
                                            if (zzaevVar.zzd()) {
                                                i3 = zzaevVar.zzb(5);
                                            } else {
                                                i3 = 0;
                                            }
                                            iArr5[i40] = (i3 * 8) + zzb15;
                                        }
                                        int i41 = 0;
                                        while (i41 < zzb14) {
                                            int i42 = 0;
                                            while (i42 < i39) {
                                                if ((iArr5[i41] & (1 << i42)) != 0) {
                                                    zzaevVar.zzc(i39);
                                                }
                                                i42++;
                                                i39 = 8;
                                            }
                                            i41++;
                                            i39 = 8;
                                        }
                                        i38++;
                                        i20 = 6;
                                        i37 = 1;
                                    } else {
                                        throw zzaz.zza("residueType greater than 2 is not decodable", null);
                                    }
                                }
                                int zzb16 = zzaevVar.zzb(i20) + 1;
                                for (int i43 = 0; i43 < zzb16; i43++) {
                                    int zzb17 = zzaevVar.zzb(16);
                                    if (zzb17 != 0) {
                                        zzdx.zzc("VorbisUtil", "mapping type other than 0 not supported: " + zzb17);
                                    } else {
                                        if (zzaevVar.zzd()) {
                                            i = 1;
                                            i2 = zzaevVar.zzb(4) + 1;
                                        } else {
                                            i = 1;
                                            i2 = 1;
                                        }
                                        if (zzaevVar.zzd()) {
                                            int zzb18 = zzaevVar.zzb(8) + i;
                                            for (int i44 = 0; i44 < zzb18; i44++) {
                                                int i45 = i11 - 1;
                                                zzaevVar.zzc(zzaez.zza(i45));
                                                zzaevVar.zzc(zzaez.zza(i45));
                                            }
                                        }
                                        if (zzaevVar.zzb(2) == 0) {
                                            if (i2 > 1) {
                                                for (int i46 = 0; i46 < i11; i46++) {
                                                    zzaevVar.zzc(4);
                                                }
                                            }
                                            for (int i47 = 0; i47 < i2; i47++) {
                                                zzaevVar.zzc(8);
                                                zzaevVar.zzc(8);
                                                zzaevVar.zzc(8);
                                            }
                                        } else {
                                            throw zzaz.zza("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                    }
                                }
                                int zzb19 = zzaevVar.zzb(6);
                                int i48 = zzb19 + 1;
                                zzaex[] zzaexVarArr = new zzaex[i48];
                                for (int i49 = 0; i49 < i48; i49++) {
                                    zzaexVarArr[i49] = new zzaex(zzaevVar.zzd(), zzaevVar.zzb(16), zzaevVar.zzb(16), zzaevVar.zzb(8));
                                }
                                if (zzaevVar.zzd()) {
                                    zzakaVar = new zzaka(zzaeyVar, zzaewVar, bArr, zzaexVarArr, zzaez.zza(zzb19));
                                } else {
                                    throw zzaz.zza("framing bit after modes not set as expected", null);
                                }
                            }
                        }
                    }
                }
            }
        }
        zzakaVar = null;
        this.zza = zzakaVar;
        if (zzakaVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzaey zzaeyVar2 = zzakaVar.zza;
        arrayList.add(zzaeyVar2.zzg);
        arrayList.add(zzakaVar.zzc);
        zzav zzb20 = zzaez.zzb(zzfyc.zzm(zzakaVar.zzb.zza));
        zzx zzxVar = new zzx();
        zzxVar.zzE(MimeTypes.AUDIO_OGG);
        zzxVar.zzad("audio/vorbis");
        zzxVar.zzA(zzaeyVar2.zzd);
        zzxVar.zzY(zzaeyVar2.zzc);
        zzxVar.zzB(zzaeyVar2.zza);
        zzxVar.zzae(zzaeyVar2.zzb);
        zzxVar.zzP(arrayList);
        zzxVar.zzW(zzb20);
        zzajwVar.zza = zzxVar.zzaj();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    public final void zzi(long j) {
        boolean z;
        super.zzi(j);
        int i = 0;
        if (j != 0) {
            z = true;
        } else {
            z = false;
        }
        this.zzc = z;
        zzaey zzaeyVar = this.zzd;
        if (zzaeyVar != null) {
            i = zzaeyVar.zze;
        }
        this.zzb = i;
    }
}
