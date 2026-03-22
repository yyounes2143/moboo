package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import j$.util.Objects;
import java.io.IOException;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzahq implements zzadn {
    private static final byte[] zza = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzb;
    private static final byte[] zzc;
    private static final byte[] zzd;
    private static final UUID zze;
    private static final Map zzf;
    private long zzA;
    private boolean zzB;
    @Nullable
    private zzaho zzC;
    private boolean zzD;
    private int zzE;
    private long zzF;
    private boolean zzG;
    private long zzH;
    private long zzI;
    private long zzJ;
    @Nullable
    private zzdy zzK;
    @Nullable
    private zzdy zzL;
    private boolean zzM;
    private boolean zzN;
    private int zzO;
    private long zzP;
    private long zzQ;
    private int zzR;
    private int zzS;
    private int[] zzT;
    private int zzU;
    private int zzV;
    private int zzW;
    private int zzX;
    private boolean zzY;
    private long zzZ;
    private int zzaa;
    private int zzab;
    private int zzac;
    private boolean zzad;
    private boolean zzae;
    private boolean zzaf;
    private int zzag;
    private byte zzah;
    private boolean zzai;
    private zzadq zzaj;
    private final zzahl zzak;
    private final zzahs zzg;
    private final SparseArray zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final zzakj zzk;
    private final zzek zzl;
    private final zzek zzm;
    private final zzek zzn;
    private final zzek zzo;
    private final zzek zzp;
    private final zzek zzq;
    private final zzek zzr;
    private final zzek zzs;
    private final zzek zzt;
    private final zzek zzu;
    private ByteBuffer zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    static {
        String str = zzeu.zza;
        zzb = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        zzc = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        zzd = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        zze = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        zzf = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public zzahq() {
        this(new zzahl(), 2, zzakj.zza);
    }

    @RequiresNonNull
    private final int zzp(zzado zzadoVar, zzaho zzahoVar, int i, boolean z) throws IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(zzahoVar.zzc)) {
            zzx(zzadoVar, zza, i);
            int i3 = this.zzab;
            zzw();
            return i3;
        } else if ("S_TEXT/ASS".equals(zzahoVar.zzc)) {
            zzx(zzadoVar, zzc, i);
            int i4 = this.zzab;
            zzw();
            return i4;
        } else if ("S_TEXT/WEBVTT".equals(zzahoVar.zzc)) {
            zzx(zzadoVar, zzd, i);
            int i5 = this.zzab;
            zzw();
            return i5;
        } else {
            zzaet zzaetVar = zzahoVar.zzX;
            boolean z2 = true;
            if (!this.zzad) {
                if (zzahoVar.zzh) {
                    this.zzW &= -1073741825;
                    int i6 = 128;
                    if (!this.zzae) {
                        zzek zzekVar = this.zzn;
                        zzadoVar.zzi(zzekVar.zzN(), 0, 1);
                        this.zzaa++;
                        if ((zzekVar.zzN()[0] & 128) != 128) {
                            this.zzah = zzekVar.zzN()[0];
                            this.zzae = true;
                        } else {
                            throw zzaz.zza("Extension bit is set in signal byte", null);
                        }
                    }
                    byte b = this.zzah;
                    if ((b & 1) == 1) {
                        int i7 = b & 2;
                        this.zzW |= 1073741824;
                        if (!this.zzai) {
                            zzek zzekVar2 = this.zzs;
                            zzadoVar.zzi(zzekVar2.zzN(), 0, 8);
                            this.zzaa += 8;
                            this.zzai = true;
                            zzek zzekVar3 = this.zzn;
                            if (i7 != 2) {
                                i6 = 0;
                            }
                            zzekVar3.zzN()[0] = (byte) (i6 | 8);
                            zzekVar3.zzL(0);
                            zzaetVar.zzs(zzekVar3, 1, 1);
                            this.zzab++;
                            zzekVar2.zzL(0);
                            zzaetVar.zzs(zzekVar2, 8, 1);
                            this.zzab += 8;
                        }
                        if (i7 == 2) {
                            if (!this.zzaf) {
                                zzek zzekVar4 = this.zzn;
                                zzadoVar.zzi(zzekVar4.zzN(), 0, 1);
                                this.zzaa++;
                                zzekVar4.zzL(0);
                                this.zzag = zzekVar4.zzm();
                                this.zzaf = true;
                            }
                            int i8 = this.zzag * 4;
                            zzek zzekVar5 = this.zzn;
                            zzekVar5.zzI(i8);
                            zzadoVar.zzi(zzekVar5.zzN(), 0, i8);
                            this.zzaa += i8;
                            int i9 = (this.zzag >> 1) + 1;
                            int i10 = (i9 * 6) + 2;
                            ByteBuffer byteBuffer = this.zzv;
                            if (byteBuffer == null || byteBuffer.capacity() < i10) {
                                this.zzv = ByteBuffer.allocate(i10);
                            }
                            this.zzv.position(0);
                            this.zzv.putShort((short) i9);
                            int i11 = 0;
                            int i12 = 0;
                            while (true) {
                                i2 = this.zzag;
                                if (i11 >= i2) {
                                    break;
                                }
                                int zzp = zzekVar5.zzp();
                                int i13 = zzp - i12;
                                if (i11 % 2 == 0) {
                                    this.zzv.putShort((short) i13);
                                } else {
                                    this.zzv.putInt(i13);
                                }
                                i11++;
                                i12 = zzp;
                            }
                            int i14 = (i - this.zzaa) - i12;
                            if ((i2 & 1) == 1) {
                                this.zzv.putInt(i14);
                            } else {
                                this.zzv.putShort((short) i14);
                                this.zzv.putInt(0);
                            }
                            zzek zzekVar6 = this.zzt;
                            zzekVar6.zzJ(this.zzv.array(), i10);
                            zzaetVar.zzs(zzekVar6, i10, 1);
                            this.zzab += i10;
                        }
                    }
                } else {
                    byte[] bArr = zzahoVar.zzi;
                    if (bArr != null) {
                        this.zzq.zzJ(bArr, bArr.length);
                    }
                }
                if (!"A_OPUS".equals(zzahoVar.zzc) ? zzahoVar.zzg > 0 : z) {
                    this.zzW |= 268435456;
                    this.zzu.zzI(0);
                    int zzd2 = (this.zzq.zzd() + i) - this.zzaa;
                    zzek zzekVar7 = this.zzn;
                    zzekVar7.zzI(4);
                    zzekVar7.zzN()[0] = (byte) ((zzd2 >> 24) & 255);
                    zzekVar7.zzN()[1] = (byte) ((zzd2 >> 16) & 255);
                    zzekVar7.zzN()[2] = (byte) ((zzd2 >> 8) & 255);
                    zzekVar7.zzN()[3] = (byte) (zzd2 & 255);
                    zzaetVar.zzs(zzekVar7, 4, 2);
                    this.zzab += 4;
                }
                this.zzad = true;
            }
            zzek zzekVar8 = this.zzq;
            int zzd3 = i + zzekVar8.zzd();
            if (!"V_MPEG4/ISO/AVC".equals(zzahoVar.zzc) && !"V_MPEGH/ISO/HEVC".equals(zzahoVar.zzc)) {
                if (zzahoVar.zzU != null) {
                    if (zzekVar8.zzd() != 0) {
                        z2 = false;
                    }
                    zzdc.zzf(z2);
                    zzahoVar.zzU.zzd(zzadoVar);
                }
                while (true) {
                    int i15 = this.zzaa;
                    if (i15 >= zzd3) {
                        break;
                    }
                    int zzq = zzq(zzadoVar, zzaetVar, zzd3 - i15);
                    this.zzaa += zzq;
                    this.zzab += zzq;
                }
            } else {
                zzek zzekVar9 = this.zzm;
                byte[] zzN = zzekVar9.zzN();
                zzN[0] = 0;
                zzN[1] = 0;
                zzN[2] = 0;
                int i16 = zzahoVar.zzY;
                int i17 = 4 - i16;
                while (this.zzaa < zzd3) {
                    int i18 = this.zzac;
                    if (i18 == 0) {
                        int min = Math.min(i16, zzekVar8.zza());
                        zzadoVar.zzi(zzN, i17 + min, i16 - min);
                        if (min > 0) {
                            zzekVar8.zzH(zzN, i17, min);
                        }
                        this.zzaa += i16;
                        zzekVar9.zzL(0);
                        this.zzac = zzekVar9.zzp();
                        zzek zzekVar10 = this.zzl;
                        zzekVar10.zzL(0);
                        zzaetVar.zzr(zzekVar10, 4);
                        this.zzab += 4;
                    } else {
                        int zzq2 = zzq(zzadoVar, zzaetVar, i18);
                        this.zzaa += zzq2;
                        this.zzab += zzq2;
                        this.zzac -= zzq2;
                    }
                }
            }
            if ("A_VORBIS".equals(zzahoVar.zzc)) {
                zzek zzekVar11 = this.zzo;
                zzekVar11.zzL(0);
                zzaetVar.zzr(zzekVar11, 4);
                this.zzab += 4;
            }
            int i19 = this.zzab;
            zzw();
            return i19;
        }
    }

    private final int zzq(zzado zzadoVar, zzaet zzaetVar, int i) throws IOException {
        zzek zzekVar = this.zzq;
        int zza2 = zzekVar.zza();
        if (zza2 > 0) {
            int min = Math.min(i, zza2);
            zzaetVar.zzr(zzekVar, min);
            return min;
        }
        return zzaetVar.zzf(zzadoVar, i, false);
    }

    private final long zzr(long j) throws zzaz {
        long j2 = this.zzy;
        if (j2 != -9223372036854775807L) {
            return zzeu.zzu(j, j2, 1000L, RoundingMode.DOWN);
        }
        throw zzaz.zza("Can't scale timecode prior to timecodeScale being set.", null);
    }

    @EnsuresNonNull
    private final void zzs(int i) throws zzaz {
        if (this.zzK != null && this.zzL != null) {
            return;
        }
        throw zzaz.zza("Element " + i + " must be in a Cues", null);
    }

    @EnsuresNonNull
    private final void zzt(int i) throws zzaz {
        if (this.zzC != null) {
            return;
        }
        throw zzaz.zza("Element " + i + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d8 A[EDGE_INSN: B:61:0x00d8->B:51:0x00d8 ?: BREAK  , SYNTHETIC] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzu(com.google.android.gms.internal.ads.zzaho r18, long r19, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahq.zzu(com.google.android.gms.internal.ads.zzaho, long, int, int, int):void");
    }

    private final void zzv(zzado zzadoVar, int i) throws IOException {
        zzek zzekVar = this.zzn;
        if (zzekVar.zzd() >= i) {
            return;
        }
        if (zzekVar.zzb() < i) {
            int zzb2 = zzekVar.zzb();
            zzekVar.zzF(Math.max(zzb2 + zzb2, i));
        }
        zzadoVar.zzi(zzekVar.zzN(), zzekVar.zzd(), i - zzekVar.zzd());
        zzekVar.zzK(i);
    }

    private final void zzw() {
        this.zzaa = 0;
        this.zzab = 0;
        this.zzac = 0;
        this.zzad = false;
        this.zzae = false;
        this.zzaf = false;
        this.zzag = 0;
        this.zzah = (byte) 0;
        this.zzai = false;
        this.zzq.zzI(0);
    }

    private final void zzx(zzado zzadoVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length;
        int i2 = length + i;
        zzek zzekVar = this.zzr;
        if (zzekVar.zzb() < i2) {
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            zzekVar.zzJ(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, zzekVar.zzN(), 0, length);
        }
        zzadoVar.zzi(zzekVar.zzN(), length, i);
        zzekVar.zzL(0);
        zzekVar.zzK(i2);
    }

    private static byte[] zzy(long j, String str, long j2) {
        boolean z;
        if (j != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        Locale locale = Locale.US;
        int i = (int) (j / 3600000000L);
        Integer valueOf = Integer.valueOf(i);
        long j3 = j - (i * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        Integer valueOf2 = Integer.valueOf(i2);
        long j4 = j3 - (i2 * 60000000);
        int i3 = (int) (j4 / 1000000);
        String format = String.format(locale, str, valueOf, valueOf2, Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2)));
        String str2 = zzeu.zza;
        return format.getBytes(StandardCharsets.UTF_8);
    }

    private static int[] zzz(@Nullable int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        if (length >= i) {
            return iArr;
        }
        return new int[Math.max(length + length, i)];
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        int i = 0;
        this.zzN = false;
        while (!this.zzN) {
            if (this.zzak.zzc(zzadoVar)) {
                long zzf2 = zzadoVar.zzf();
                if (this.zzG) {
                    this.zzI = zzf2;
                    zzaejVar.zza = this.zzH;
                    this.zzG = false;
                    return 1;
                } else if (this.zzD) {
                    long j = this.zzI;
                    if (j != -1) {
                        zzaejVar.zza = j;
                        this.zzI = -1L;
                        return 1;
                    }
                }
            } else {
                while (true) {
                    SparseArray sparseArray = this.zzh;
                    if (i < sparseArray.size()) {
                        zzaho zzahoVar = (zzaho) sparseArray.valueAt(i);
                        zzaho.zzd(zzahoVar);
                        zzaeu zzaeuVar = zzahoVar.zzU;
                        if (zzaeuVar != null) {
                            zzaeuVar.zza(zzahoVar.zzX, zzahoVar.zzj);
                        }
                        i++;
                    } else {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        if (this.zzj) {
            zzadqVar = new zzakm(zzadqVar, this.zzk);
        }
        this.zzaj = zzadqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    @CallSuper
    public final void zzf(long j, long j2) {
        this.zzJ = -9223372036854775807L;
        int i = 0;
        this.zzO = 0;
        this.zzak.zzb();
        this.zzg.zze();
        zzw();
        while (true) {
            SparseArray sparseArray = this.zzh;
            if (i < sparseArray.size()) {
                zzaeu zzaeuVar = ((zzaho) sparseArray.valueAt(i)).zzU;
                if (zzaeuVar != null) {
                    zzaeuVar.zzb();
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0262, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("EBML lacing sample size out of range.", null);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02b2  */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(int r26, int r27, com.google.android.gms.internal.ads.zzado r28) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahq.zzh(int, int, com.google.android.gms.internal.ads.zzado):void");
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        return new zzahr().zza(zzadoVar);
    }

    @CallSuper
    public final void zzj(int i) throws zzaz {
        int i2;
        zzaem zzaelVar;
        int i3;
        char c = 65535;
        int i4 = 0;
        zzdc.zzb(this.zzaj);
        if (i != 160) {
            if (i != 174) {
                if (i != 19899) {
                    if (i != 25152) {
                        if (i != 28032) {
                            if (i != 357149030) {
                                if (i != 374648427) {
                                    if (i == 475249515) {
                                        if (!this.zzD) {
                                            zzadq zzadqVar = this.zzaj;
                                            zzdy zzdyVar = this.zzK;
                                            zzdy zzdyVar2 = this.zzL;
                                            if (this.zzx != -1 && this.zzA != -9223372036854775807L && zzdyVar != null && zzdyVar.zza() != 0 && zzdyVar2 != null && zzdyVar2.zza() == zzdyVar.zza()) {
                                                int zza2 = zzdyVar.zza();
                                                int[] iArr = new int[zza2];
                                                long[] jArr = new long[zza2];
                                                long[] jArr2 = new long[zza2];
                                                long[] jArr3 = new long[zza2];
                                                for (int i5 = 0; i5 < zza2; i5++) {
                                                    jArr3[i5] = zzdyVar.zzb(i5);
                                                    jArr[i5] = this.zzx + zzdyVar2.zzb(i5);
                                                }
                                                while (true) {
                                                    i3 = zza2 - 1;
                                                    if (i4 >= i3) {
                                                        break;
                                                    }
                                                    int i6 = i4 + 1;
                                                    iArr[i4] = (int) (jArr[i6] - jArr[i4]);
                                                    jArr2[i4] = jArr3[i6] - jArr3[i4];
                                                    i4 = i6;
                                                }
                                                int i7 = i3;
                                                while (i7 > 0 && jArr3[i7] > this.zzA) {
                                                    i7--;
                                                }
                                                iArr[i7] = (int) ((this.zzx + this.zzw) - jArr[i7]);
                                                jArr2[i7] = this.zzA - jArr3[i7];
                                                if (i7 < i3) {
                                                    zzdx.zzf("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration");
                                                    int i8 = i7 + 1;
                                                    iArr = Arrays.copyOf(iArr, i8);
                                                    jArr = Arrays.copyOf(jArr, i8);
                                                    jArr2 = Arrays.copyOf(jArr2, i8);
                                                    jArr3 = Arrays.copyOf(jArr3, i8);
                                                }
                                                zzaelVar = new zzadb(iArr, jArr, jArr2, jArr3);
                                            } else {
                                                zzaelVar = new zzael(this.zzA, 0L);
                                            }
                                            zzadqVar.zzP(zzaelVar);
                                            this.zzD = true;
                                        }
                                        this.zzK = null;
                                        this.zzL = null;
                                        return;
                                    }
                                    return;
                                } else if (this.zzh.size() != 0) {
                                    this.zzaj.zzG();
                                    return;
                                } else {
                                    throw zzaz.zza("No valid tracks were found", null);
                                }
                            }
                            if (this.zzy == -9223372036854775807L) {
                                this.zzy = 1000000L;
                            }
                            long j = this.zzz;
                            if (j != -9223372036854775807L) {
                                this.zzA = zzr(j);
                                return;
                            }
                            return;
                        }
                        zzt(i);
                        zzaho zzahoVar = this.zzC;
                        if (zzahoVar.zzh && zzahoVar.zzi != null) {
                            throw zzaz.zza("Combining encryption and compression is not supported", null);
                        }
                        return;
                    }
                    zzt(i);
                    zzaho zzahoVar2 = this.zzC;
                    if (zzahoVar2.zzh) {
                        if (zzahoVar2.zzj != null) {
                            zzahoVar2.zzl = new zzs(null, new zzr(zzh.zza, null, "video/webm", this.zzC.zzj.zzb));
                            return;
                        }
                        throw zzaz.zza("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    return;
                }
                int i9 = this.zzE;
                if (i9 != -1) {
                    long j2 = this.zzF;
                    if (j2 != -1) {
                        if (i9 == 475249515) {
                            this.zzH = j2;
                            return;
                        }
                        return;
                    }
                }
                throw zzaz.zza("Mandatory element SeekID or SeekPosition not found", null);
            }
            zzaho zzahoVar3 = this.zzC;
            zzdc.zzb(zzahoVar3);
            String str = zzahoVar3.zzc;
            if (str != null) {
                switch (str.hashCode()) {
                    case -2095576542:
                        if (str.equals("V_MPEG4/ISO/AP")) {
                            c = 6;
                            break;
                        }
                        break;
                    case -2095575984:
                        if (str.equals("V_MPEG4/ISO/SP")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1985379776:
                        if (str.equals("A_MS/ACM")) {
                            c = 23;
                            break;
                        }
                        break;
                    case -1784763192:
                        if (str.equals("A_TRUEHD")) {
                            c = 18;
                            break;
                        }
                        break;
                    case -1730367663:
                        if (str.equals("A_VORBIS")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case -1482641358:
                        if (str.equals("A_MPEG/L2")) {
                            c = 14;
                            break;
                        }
                        break;
                    case -1482641357:
                        if (str.equals("A_MPEG/L3")) {
                            c = 15;
                            break;
                        }
                        break;
                    case -1373388978:
                        if (str.equals("V_MS/VFW/FOURCC")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -933872740:
                        if (str.equals("S_DVBSUB")) {
                            c = ' ';
                            break;
                        }
                        break;
                    case -538363189:
                        if (str.equals("V_MPEG4/ISO/ASP")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -538363109:
                        if (str.equals("V_MPEG4/ISO/AVC")) {
                            c = 7;
                            break;
                        }
                        break;
                    case -425012669:
                        if (str.equals("S_VOBSUB")) {
                            c = 30;
                            break;
                        }
                        break;
                    case -356037306:
                        if (str.equals("A_DTS/LOSSLESS")) {
                            c = 21;
                            break;
                        }
                        break;
                    case 62923557:
                        if (str.equals("A_AAC")) {
                            c = '\r';
                            break;
                        }
                        break;
                    case 62923603:
                        if (str.equals("A_AC3")) {
                            c = 16;
                            break;
                        }
                        break;
                    case 62927045:
                        if (str.equals("A_DTS")) {
                            c = 19;
                            break;
                        }
                        break;
                    case 82318131:
                        if (str.equals("V_AV1")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 82338133:
                        if (str.equals("V_VP8")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 82338134:
                        if (str.equals("V_VP9")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 99146302:
                        if (str.equals("S_HDMV/PGS")) {
                            c = 31;
                            break;
                        }
                        break;
                    case 444813526:
                        if (str.equals("V_THEORA")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 542569478:
                        if (str.equals("A_DTS/EXPRESS")) {
                            c = 20;
                            break;
                        }
                        break;
                    case 635596514:
                        if (str.equals("A_PCM/FLOAT/IEEE")) {
                            c = 26;
                            break;
                        }
                        break;
                    case 725948237:
                        if (str.equals("A_PCM/INT/BIG")) {
                            c = 25;
                            break;
                        }
                        break;
                    case 725957860:
                        if (str.equals("A_PCM/INT/LIT")) {
                            c = 24;
                            break;
                        }
                        break;
                    case 738597099:
                        if (str.equals("S_TEXT/ASS")) {
                            c = 28;
                            break;
                        }
                        break;
                    case 855502857:
                        if (str.equals("V_MPEGH/ISO/HEVC")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1045209816:
                        if (str.equals("S_TEXT/WEBVTT")) {
                            c = 29;
                            break;
                        }
                        break;
                    case 1422270023:
                        if (str.equals("S_TEXT/UTF8")) {
                            c = 27;
                            break;
                        }
                        break;
                    case 1809237540:
                        if (str.equals("V_MPEG2")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1950749482:
                        if (str.equals("A_EAC3")) {
                            c = 17;
                            break;
                        }
                        break;
                    case 1950789798:
                        if (str.equals("A_FLAC")) {
                            c = 22;
                            break;
                        }
                        break;
                    case 1951062397:
                        if (str.equals("A_OPUS")) {
                            c = 11;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case '\b':
                    case '\t':
                    case '\n':
                    case 11:
                    case '\f':
                    case '\r':
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case ' ':
                        zzahoVar3.zze(this.zzaj, zzahoVar3.zzd);
                        this.zzh.put(zzahoVar3.zzd, zzahoVar3);
                        break;
                }
                this.zzC = null;
                return;
            }
            throw zzaz.zza("CodecId is missing in TrackEntry element", null);
        } else if (this.zzO == 2) {
            zzaho zzahoVar4 = (zzaho) this.zzh.get(this.zzU);
            zzaho.zzd(zzahoVar4);
            if (this.zzZ > 0 && "A_OPUS".equals(zzahoVar4.zzc)) {
                zzek zzekVar = this.zzu;
                byte[] array = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.zzZ).array();
                zzekVar.zzJ(array, array.length);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.zzS; i11++) {
                i10 += this.zzT[i11];
            }
            int i12 = 0;
            while (i12 < this.zzS) {
                long j3 = this.zzP + ((zzahoVar4.zzf * i12) / 1000);
                int i13 = this.zzW;
                if (i12 == 0) {
                    if (!this.zzY) {
                        i13 |= 1;
                    }
                    i2 = 0;
                } else {
                    i2 = i12;
                }
                int i14 = this.zzT[i2];
                int i15 = i10 - i14;
                zzu(zzahoVar4, j3, i13, i14, i15);
                i12 = i2 + 1;
                i10 = i15;
            }
            this.zzO = 0;
        }
    }

    @CallSuper
    public final void zzk(int i, double d) throws zzaz {
        if (i != 181) {
            if (i != 17545) {
                switch (i) {
                    case 21969:
                        zzt(i);
                        this.zzC.zzE = (float) d;
                        return;
                    case 21970:
                        zzt(i);
                        this.zzC.zzF = (float) d;
                        return;
                    case 21971:
                        zzt(i);
                        this.zzC.zzG = (float) d;
                        return;
                    case 21972:
                        zzt(i);
                        this.zzC.zzH = (float) d;
                        return;
                    case 21973:
                        zzt(i);
                        this.zzC.zzI = (float) d;
                        return;
                    case 21974:
                        zzt(i);
                        this.zzC.zzJ = (float) d;
                        return;
                    case 21975:
                        zzt(i);
                        this.zzC.zzK = (float) d;
                        return;
                    case 21976:
                        zzt(i);
                        this.zzC.zzL = (float) d;
                        return;
                    case 21977:
                        zzt(i);
                        this.zzC.zzM = (float) d;
                        return;
                    case 21978:
                        zzt(i);
                        this.zzC.zzN = (float) d;
                        return;
                    default:
                        switch (i) {
                            case 30323:
                                zzt(i);
                                this.zzC.zzt = (float) d;
                                return;
                            case 30324:
                                zzt(i);
                                this.zzC.zzu = (float) d;
                                return;
                            case 30325:
                                zzt(i);
                                this.zzC.zzv = (float) d;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.zzz = (long) d;
            return;
        }
        zzt(i);
        this.zzC.zzR = (int) d;
    }

    @CallSuper
    public final void zzl(int i, long j) throws zzaz {
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                switch (i) {
                    case 131:
                        zzt(i);
                        this.zzC.zze = (int) j;
                        return;
                    case 136:
                        if (j == 1) {
                            z = true;
                        }
                        zzt(i);
                        this.zzC.zzW = z;
                        return;
                    case ModuleDescriptor.MODULE_VERSION /* 155 */:
                        this.zzQ = zzr(j);
                        return;
                    case 159:
                        zzt(i);
                        this.zzC.zzP = (int) j;
                        return;
                    case 176:
                        zzt(i);
                        this.zzC.zzm = (int) j;
                        return;
                    case 179:
                        zzs(i);
                        this.zzK.zzc(zzr(j));
                        return;
                    case 186:
                        zzt(i);
                        this.zzC.zzn = (int) j;
                        return;
                    case 215:
                        zzt(i);
                        this.zzC.zzd = (int) j;
                        return;
                    case 231:
                        this.zzJ = zzr(j);
                        return;
                    case 238:
                        this.zzX = (int) j;
                        return;
                    case 241:
                        if (!this.zzM) {
                            zzs(i);
                            this.zzL.zzc(j);
                            this.zzM = true;
                            return;
                        }
                        return;
                    case 251:
                        this.zzY = true;
                        return;
                    case 16871:
                        zzt(i);
                        zzaho.zzb(this.zzC, (int) j);
                        return;
                    case 16980:
                        if (j != 3) {
                            throw zzaz.zza("ContentCompAlgo " + j + " not supported", null);
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            throw zzaz.zza("DocTypeReadVersion " + j + " not supported", null);
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            throw zzaz.zza("EBMLReadVersion " + j + " not supported", null);
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            throw zzaz.zza("ContentEncAlgo " + j + " not supported", null);
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            throw zzaz.zza("AESSettingsCipherMode " + j + " not supported", null);
                        }
                        return;
                    case 21420:
                        this.zzF = j + this.zzx;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        zzt(i);
                        if (i2 != 0) {
                            if (i2 != 1) {
                                if (i2 != 3) {
                                    if (i2 == 15) {
                                        this.zzC.zzx = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.zzC.zzx = 1;
                                return;
                            }
                            this.zzC.zzx = 2;
                            return;
                        }
                        this.zzC.zzx = 0;
                        return;
                    case 21680:
                        zzt(i);
                        this.zzC.zzp = (int) j;
                        return;
                    case 21682:
                        zzt(i);
                        this.zzC.zzr = (int) j;
                        return;
                    case 21690:
                        zzt(i);
                        this.zzC.zzq = (int) j;
                        return;
                    case 21930:
                        if (j == 1) {
                            z = true;
                        }
                        zzt(i);
                        this.zzC.zzV = z;
                        return;
                    case 21938:
                        zzt(i);
                        zzaho zzahoVar = this.zzC;
                        zzahoVar.zzy = true;
                        zzahoVar.zzo = (int) j;
                        return;
                    case 21998:
                        zzt(i);
                        this.zzC.zzg = (int) j;
                        return;
                    case 22186:
                        zzt(i);
                        this.zzC.zzS = j;
                        return;
                    case 22203:
                        zzt(i);
                        this.zzC.zzT = j;
                        return;
                    case 25188:
                        zzt(i);
                        this.zzC.zzQ = (int) j;
                        return;
                    case 30114:
                        this.zzZ = j;
                        return;
                    case 30321:
                        int i3 = (int) j;
                        zzt(i);
                        if (i3 != 0) {
                            if (i3 != 1) {
                                if (i3 != 2) {
                                    if (i3 == 3) {
                                        this.zzC.zzs = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.zzC.zzs = 2;
                                return;
                            }
                            this.zzC.zzs = 1;
                            return;
                        }
                        this.zzC.zzs = 0;
                        return;
                    case 2352003:
                        zzt(i);
                        this.zzC.zzf = (int) j;
                        return;
                    case 2807729:
                        this.zzy = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i4 = (int) j;
                                zzt(i);
                                if (i4 != 1) {
                                    if (i4 == 2) {
                                        this.zzC.zzB = 1;
                                        return;
                                    }
                                    return;
                                }
                                this.zzC.zzB = 2;
                                return;
                            case 21946:
                                zzt(i);
                                int zzb2 = zzk.zzb((int) j);
                                if (zzb2 != -1) {
                                    this.zzC.zzA = zzb2;
                                    return;
                                }
                                return;
                            case 21947:
                                zzt(i);
                                this.zzC.zzy = true;
                                int zza2 = zzk.zza((int) j);
                                if (zza2 != -1) {
                                    this.zzC.zzz = zza2;
                                    return;
                                }
                                return;
                            case 21948:
                                zzt(i);
                                this.zzC.zzC = (int) j;
                                return;
                            case 21949:
                                zzt(i);
                                this.zzC.zzD = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j != 1) {
                throw zzaz.zza("ContentEncodingScope " + j + " not supported", null);
            }
        } else if (j == 0) {
        } else {
            throw zzaz.zza("ContentEncodingOrder " + j + " not supported", null);
        }
    }

    @CallSuper
    public final void zzm(int i, long j, long j2) throws zzaz {
        zzdc.zzb(this.zzaj);
        if (i != 160) {
            if (i != 174) {
                if (i != 187) {
                    if (i != 19899) {
                        if (i != 20533) {
                            if (i != 21968) {
                                if (i != 408125543) {
                                    if (i != 475249515) {
                                        if (i == 524531317 && !this.zzD) {
                                            if (this.zzi && this.zzH != -1) {
                                                this.zzG = true;
                                                return;
                                            }
                                            this.zzaj.zzP(new zzael(this.zzA, 0L));
                                            this.zzD = true;
                                            return;
                                        }
                                        return;
                                    }
                                    this.zzK = new zzdy(32);
                                    this.zzL = new zzdy(32);
                                    return;
                                }
                                long j3 = this.zzx;
                                if (j3 != -1 && j3 != j) {
                                    throw zzaz.zza("Multiple Segment elements not supported", null);
                                }
                                this.zzx = j;
                                this.zzw = j2;
                                return;
                            }
                            zzt(i);
                            this.zzC.zzy = true;
                            return;
                        }
                        zzt(i);
                        this.zzC.zzh = true;
                        return;
                    }
                    this.zzE = -1;
                    this.zzF = -1L;
                    return;
                }
                this.zzM = false;
                return;
            }
            zzaho zzahoVar = new zzaho();
            this.zzC = zzahoVar;
            zzahoVar.zza = this.zzB;
            return;
        }
        this.zzY = false;
        this.zzZ = 0L;
    }

    @CallSuper
    public final void zzn(int i, String str) throws zzaz {
        if (i != 134) {
            if (i != 17026) {
                if (i != 21358) {
                    if (i != 2274716) {
                        return;
                    }
                    zzt(i);
                    zzaho.zzc(this.zzC, str);
                    return;
                }
                zzt(i);
                this.zzC.zzb = str;
                return;
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw zzaz.zza("DocType " + str + " not supported", null);
            } else {
                this.zzB = Objects.equals(str, "webm");
                return;
            }
        }
        zzt(i);
        this.zzC.zzc = str;
    }

    public zzahq(zzahl zzahlVar, int i, zzakj zzakjVar) {
        this.zzx = -1L;
        this.zzy = -9223372036854775807L;
        this.zzz = -9223372036854775807L;
        this.zzA = -9223372036854775807L;
        this.zzH = -1L;
        this.zzI = -1L;
        this.zzJ = -9223372036854775807L;
        this.zzak = zzahlVar;
        zzahlVar.zza(new zzahn(this, null));
        this.zzk = zzakjVar;
        this.zzi = 1 == ((i & 1) ^ 1);
        this.zzj = (i & 2) == 0;
        this.zzg = new zzahs();
        this.zzh = new SparseArray();
        this.zzn = new zzek(4);
        this.zzo = new zzek(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzp = new zzek(4);
        this.zzl = new zzek(zzfs.zza);
        this.zzm = new zzek(4);
        this.zzq = new zzek();
        this.zzr = new zzek();
        this.zzs = new zzek(8);
        this.zzt = new zzek();
        this.zzu = new zzek();
        this.zzT = new int[1];
    }

    public zzahq(zzakj zzakjVar, int i) {
        this(new zzahl(), 0, zzakjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
