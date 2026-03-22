package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.extractor.mp4.Atom;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzajb implements zzadn, zzaem {
    private long zzA;
    private int zzB;
    @Nullable
    private zzahe zzC;
    private final zzakj zza;
    private final int zzb;
    private final zzek zzc;
    private final zzek zzd;
    private final zzek zze;
    private final zzek zzf;
    private final ArrayDeque zzg;
    private final zzajf zzh;
    private final List zzi;
    private zzfyc zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private int zzn;
    @Nullable
    private zzek zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private long zzv;
    private zzadq zzw;
    private zzaja[] zzx;
    private long[][] zzy;
    private int zzz;

    @Deprecated
    public zzajb() {
        this(zzakj.zza, 16);
    }

    private static int zzj(int i) {
        if (i != 1751476579) {
            if (i != 1903435808) {
                return 0;
            }
            return 1;
        }
        return 2;
    }

    private static int zzk(zzajk zzajkVar, long j) {
        int zza = zzajkVar.zza(j);
        if (zza == -1) {
            return zzajkVar.zzb(j);
        }
        return zza;
    }

    private static long zzl(zzajk zzajkVar, long j, long j2) {
        int zzk = zzk(zzajkVar, j);
        if (zzk == -1) {
            return j2;
        }
        return Math.min(zzajkVar.zzc[zzk], j2);
    }

    private final void zzm() {
        this.zzk = 0;
        this.zzn = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzn(long j) throws zzaz {
        int i;
        int i2;
        zzav zzavVar;
        boolean z;
        zzav zzavVar2;
        boolean z2;
        int i3;
        ArrayDeque arrayDeque;
        List list;
        int i4;
        zzav zzavVar3;
        zzav[] zzavVarArr;
        long j2;
        zzav zzavVar4;
        ArrayList arrayList;
        int i5;
        int i6;
        int i7 = 0;
        int i8 = 1;
        while (true) {
            ArrayDeque arrayDeque2 = this.zzg;
            if (arrayDeque2.isEmpty() || ((zzez) arrayDeque2.peek()).zza != j) {
                break;
            }
            zzez zzezVar = (zzez) arrayDeque2.pop();
            if (zzezVar.zzd == 1836019574) {
                zzez zza = zzezVar.zza(Atom.TYPE_meta);
                new ArrayList();
                if (zza != null) {
                    zzavVar = zzaip.zzb(zza);
                } else {
                    zzavVar = null;
                }
                ArrayList arrayList2 = new ArrayList();
                if (this.zzB == i8) {
                    z = i8;
                } else {
                    z = i7;
                }
                zzaeb zzaebVar = new zzaeb();
                zzfa zzb = zzezVar.zzb(Atom.TYPE_udta);
                if (zzb != null) {
                    zzav zzc = zzaip.zzc(zzb);
                    zzaebVar.zzb(zzc);
                    zzavVar2 = zzc;
                } else {
                    zzavVar2 = null;
                }
                zzfa zzb2 = zzezVar.zzb(Atom.TYPE_mvhd);
                zzb2.getClass();
                zzau[] zzauVarArr = new zzau[i8];
                zzauVarArr[i7] = zzaip.zzd(zzb2.zza);
                zzav zzavVar5 = new zzav(-9223372036854775807L, zzauVarArr);
                int i9 = this.zzb;
                if (i8 != (i9 & 1)) {
                    z2 = i7;
                } else {
                    z2 = i8;
                }
                ArrayList arrayList3 = arrayList2;
                List zzf = zzaip.zzf(zzezVar, zzaebVar, -9223372036854775807L, null, z2, z, new zzfur() { // from class: com.google.android.gms.internal.ads.zzaiz
                    @Override // com.google.android.gms.internal.ads.zzfur
                    public final Object apply(Object obj) {
                        return (zzajh) obj;
                    }
                });
                String zza2 = zzaiy.zza(zzf);
                long j3 = -9223372036854775807L;
                long j4 = -9223372036854775807L;
                int i10 = i7;
                int i11 = i10;
                int i12 = -1;
                while (i10 < zzf.size()) {
                    zzajk zzajkVar = (zzajk) zzf.get(i10);
                    if (zzajkVar.zzb == 0) {
                        list = zzf;
                        i3 = i11;
                        arrayList = arrayList3;
                        arrayDeque = arrayDeque2;
                    } else {
                        zzajh zzajhVar = zzajkVar.zza;
                        int i13 = i7;
                        int i14 = i8;
                        zzadq zzadqVar = this.zzw;
                        i3 = i11 + 1;
                        int i15 = zzajhVar.zzb;
                        zzaja zzajaVar = new zzaja(zzajhVar, zzajkVar, zzadqVar.zzw(i11, i15));
                        arrayDeque = arrayDeque2;
                        long j5 = zzajhVar.zze;
                        if (j5 == j4) {
                            j5 = zzajkVar.zzh;
                        }
                        list = zzf;
                        zzaet zzaetVar = zzajaVar.zzc;
                        zzaetVar.zzl(j5);
                        long max = Math.max(j3, j5);
                        zzz zzzVar = zzajhVar.zzg;
                        if ("audio/true-hd".equals(zzzVar.zzo)) {
                            i4 = zzajkVar.zze * 16;
                        } else {
                            i4 = zzajkVar.zze + 30;
                        }
                        zzx zzb3 = zzzVar.zzb();
                        zzb3.zzT(i4);
                        if (i15 == 2) {
                            int i16 = zzzVar.zzf;
                            if ((i9 & 8) != 0) {
                                if (i12 == -1) {
                                    i6 = i14;
                                } else {
                                    i6 = 2;
                                }
                                i16 |= i6;
                            }
                            zzb3.zzab(i16);
                            i15 = 2;
                        }
                        if (i15 == i14 && zzaebVar.zza()) {
                            zzb3.zzI(zzaebVar.zza);
                            zzb3.zzJ(zzaebVar.zzb);
                        }
                        zzav zzavVar6 = zzzVar.zzl;
                        List list2 = this.zzi;
                        if (list2.isEmpty()) {
                            zzavVar3 = null;
                        } else {
                            zzavVar3 = new zzav(list2);
                        }
                        zzav[] zzavVarArr2 = new zzav[3];
                        zzavVarArr2[i13] = zzavVar3;
                        zzavVarArr2[1] = zzavVar2;
                        zzavVarArr2[2] = zzavVar5;
                        if (zzavVar6 != null) {
                            zzavVarArr = zzavVarArr2;
                            zzavVar4 = zzavVar6;
                            j2 = max;
                        } else {
                            zzavVarArr = zzavVarArr2;
                            j2 = max;
                            zzavVar4 = new zzav(j4, new zzau[i13]);
                        }
                        if (zzavVar != null) {
                            int i17 = 0;
                            while (i17 < zzavVar.zza()) {
                                zzau zzb4 = zzavVar.zzb(i17);
                                if (zzb4 instanceof zzex) {
                                    zzex zzexVar = (zzex) zzb4;
                                    if (zzexVar.zza.equals(MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS)) {
                                        if (i15 == 2) {
                                            i5 = 1;
                                            zzavVar4 = zzavVar4.zzc(zzexVar);
                                        }
                                    } else {
                                        i5 = 1;
                                        zzavVar4 = zzavVar4.zzc(zzexVar);
                                    }
                                    i17 += i5;
                                }
                                i5 = 1;
                                i17 += i5;
                            }
                        }
                        for (int i18 = 0; i18 < 3; i18++) {
                            zzavVar4 = zzavVar4.zzd(zzavVarArr[i18]);
                        }
                        if (zzavVar4.zza() > 0) {
                            zzb3.zzW(zzavVar4);
                        }
                        zzb3.zzE(zza2);
                        zzaetVar.zzm(zzb3.zzaj());
                        if (i15 == 2 && i12 == -1) {
                            i12 = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(zzajaVar);
                        j3 = j2;
                    }
                    i10++;
                    arrayList3 = arrayList;
                    arrayDeque2 = arrayDeque;
                    i11 = i3;
                    zzf = list;
                    i7 = 0;
                    i8 = 1;
                    j4 = -9223372036854775807L;
                }
                ArrayDeque arrayDeque3 = arrayDeque2;
                int i19 = -1;
                this.zzz = i12;
                this.zzA = j3;
                zzaja[] zzajaVarArr = (zzaja[]) arrayList3.toArray(new zzaja[0]);
                this.zzx = zzajaVarArr;
                int length = zzajaVarArr.length;
                long[][] jArr = new long[length];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i20 = 0; i20 < zzajaVarArr.length; i20++) {
                    jArr[i20] = new long[zzajaVarArr[i20].zzb.zzb];
                    jArr2[i20] = zzajaVarArr[i20].zzb.zzf[0];
                }
                i = 0;
                long j6 = 0;
                int i21 = 0;
                while (i21 < zzajaVarArr.length) {
                    long j7 = Long.MAX_VALUE;
                    int i22 = i19;
                    for (int i23 = 0; i23 < zzajaVarArr.length; i23++) {
                        if (!zArr[i23]) {
                            long j8 = jArr2[i23];
                            if (j8 <= j7) {
                                i22 = i23;
                                j7 = j8;
                            }
                        }
                    }
                    int i24 = iArr[i22];
                    long[] jArr3 = jArr[i22];
                    jArr3[i24] = j6;
                    zzajk zzajkVar2 = zzajaVarArr[i22].zzb;
                    int[] iArr2 = iArr;
                    j6 += zzajkVar2.zzd[i24];
                    int i25 = i24 + 1;
                    iArr2[i22] = i25;
                    if (i25 < jArr3.length) {
                        jArr2[i22] = zzajkVar2.zzf[i25];
                    } else {
                        zArr[i22] = true;
                        i21++;
                    }
                    iArr = iArr2;
                    i19 = -1;
                }
                i2 = 1;
                this.zzy = jArr;
                this.zzw.zzG();
                this.zzw.zzP(this);
                arrayDeque3.clear();
                this.zzk = 2;
            } else {
                i = i7;
                i2 = i8;
                if (!arrayDeque2.isEmpty()) {
                    ((zzez) arrayDeque2.peek()).zzc(zzezVar);
                }
            }
            i7 = i;
            i8 = i2;
        }
        if (this.zzk != 2) {
            zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zzA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01df, code lost:
        if (r2 >= r3) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01e1, code lost:
        r2 = r9.zzf(r38, r3 - r2, false);
        r37.zzq += r2;
        r37.zzr += r2;
        r37.zzs -= r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f8, code lost:
        r16 = r15.zzf[r11];
        r1 = r15.zzg[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0202, code lost:
        if (r37.zzt != false) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0204, code lost:
        r1 = r1 | androidx.core.view.accessibility.AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0207, code lost:
        if (r14 == null) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0209, code lost:
        r15 = r9;
        r14.zzc(r15, r16, r1, r18, 0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x021e, code lost:
        if ((r11 + 1) != r15.zzb) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0220, code lost:
        r14.zza(r15, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0225, code lost:
        r9.zzt(r16, r1, r18, 0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
        zzm();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0233, code lost:
        r10.zze++;
        r37.zzp = -1;
        r37.zzq = 0;
        r37.zzr = 0;
        r37.zzs = 0;
        r37.zzt = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0245, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0246, code lost:
        r39.zza = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0248, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0249, code lost:
        r3 = r37.zzm - r37.zzn;
        r5 = r38.zzf() + r3;
        r7 = r37.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x025c, code lost:
        if (r7 == null) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x025e, code lost:
        r38.zzi(r7.zzN(), r37.zzn, (int) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x026a, code lost:
        if (r37.zzl != 1718909296) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x026c, code lost:
        r37.zzu = true;
        r7.zzL(8);
        r3 = zzj(r7.zzg());
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x027a, code lost:
        if (r3 == 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x027d, code lost:
        r7.zzM(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0285, code lost:
        if (r7.zza() <= 0) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0287, code lost:
        r3 = zzj(r7.zzg());
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x028f, code lost:
        if (r3 == 0) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0292, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0293, code lost:
        r37.zzB = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0295, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        r7 = r38.zzf();
        r14 = r37.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0297, code lost:
        r3 = r37.zzg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x029d, code lost:
        if (r3.isEmpty() != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x029f, code lost:
        ((com.google.android.gms.internal.ads.zzez) r3.peek()).zzd(new com.google.android.gms.internal.ads.zzfa(r37.zzl, r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02b2, code lost:
        if (r37.zzu != false) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02b9, code lost:
        if (r37.zzl != 1835295092) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02bb, code lost:
        r37.zzB = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02c0, code lost:
        if (r3 >= 262144) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        if (r14 != (-1)) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02c2, code lost:
        r38.zzk((int) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02c7, code lost:
        r39.zza = r38.zzf() + r3;
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02cf, code lost:
        zzn(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x02d2, code lost:
        if (r3 == false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02d8, code lost:
        if (r37.zzk == 2) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02da, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        r21 = r6;
        r28 = r21;
        r26 = -1;
        r27 = -1;
        r19 = Long.MAX_VALUE;
        r22 = Long.MAX_VALUE;
        r24 = Long.MAX_VALUE;
        r14 = 0;
        r29 = 262144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        r15 = r37.zzx;
        r31 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        if (r14 >= r15.length) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
        r10 = r15[r14];
        r11 = r10.zze;
        r10 = r10.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
        if (r11 != r10.zzb) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        r15 = r10.zzc[r11];
        r10 = r37.zzy;
        r33 = com.google.android.gms.internal.ads.zzeu.zza;
        r33 = r10[r14][r11];
        r15 = r15 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
        if (r15 < r31) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0456, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
        if (r15 < 262144) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        r10 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0072, code lost:
        if (r10 != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
        if (r28 != false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0076, code lost:
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0078, code lost:
        r11 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007a, code lost:
        if (r10 != r11) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
        if (r15 >= r24) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0080, code lost:
        r28 = r10;
        r27 = r14;
        r24 = r15;
        r22 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0089, code lost:
        r28 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008d, code lost:
        if (r33 >= r19) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008f, code lost:
        r21 = r10;
        r26 = r14;
        r19 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0095, code lost:
        r14 = r14 + r6;
        r10 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009b, code lost:
        if (r19 == Long.MAX_VALUE) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009d, code lost:
        if (r21 == false) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a6, code lost:
        if (r22 < (r19 + 10485760)) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a8, code lost:
        r14 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ab, code lost:
        r14 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ad, code lost:
        r37.zzp = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00af, code lost:
        if (r14 != (-1)) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b1, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b2, code lost:
        r31 = 0;
        r29 = 262144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b7, code lost:
        r10 = r37.zzx[r14];
        r14 = r10.zzc;
        r11 = r10.zze;
        r15 = r10.zzb;
        r19 = r14;
        r13 = r15.zzc[r11] + r37.zzv;
        r12 = r15.zzd;
        r17 = r12[r11];
        r23 = 0;
        r14 = r10.zzd;
        r20 = 4;
        r7 = (r13 - r7) + r37.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e0, code lost:
        if (r7 < r31) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e4, code lost:
        if (r7 < r29) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ea, code lost:
        r2 = r10.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ef, code lost:
        if (r2.zzh != 1) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f1, code lost:
        r7 = r7 + 8;
        r17 = r17 - 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f6, code lost:
        r3 = r17;
        r38.zzk((int) r7);
        r4 = r2.zzg;
        r5 = r4.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0106, code lost:
        if (j$.util.Objects.equals(r5, "video/avc") != false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0108, code lost:
        j$.util.Objects.equals(r5, "video/hevc");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x010d, code lost:
        r37.zzt = true;
        r2 = r2.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0112, code lost:
        if (r2 == 0) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0114, code lost:
        r5 = r37.zzd;
        r7 = r5.zzN();
        r7[0] = 0;
        r7[1] = 0;
        r7[2] = 0;
        r6 = 4 - r2;
        r3 = r3 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0125, code lost:
        if (r37.zzr >= r3) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0127, code lost:
        r8 = r37.zzs;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0129, code lost:
        if (r8 != 0) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x012d, code lost:
        if (r37.zzt != false) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
        if (r7 == r6) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0139, code lost:
        if ((com.google.android.gms.internal.ads.zzfs.zzb(r4) + r2) > (r12[r11] - r37.zzq)) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x013b, code lost:
        r8 = com.google.android.gms.internal.ads.zzfs.zzb(r4);
        r9 = r2 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0142, code lost:
        r9 = r2;
        r8 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0145, code lost:
        r38.zzi(r7, r6, r9);
        r37.zzq += r9;
        r9 = r23;
        r5.zzL(r9);
        r13 = r5.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0156, code lost:
        if (r13 < 0) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0158, code lost:
        r37.zzs = r13 - r8;
        r13 = r37.zzc;
        r13.zzL(r9);
        r17 = r2;
        r9 = r19;
        r2 = r20;
        r9.zzr(r13, r2);
        r37.zzr += r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016e, code lost:
        if (r8 <= 0) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0170, code lost:
        r9.zzr(r5, r8);
        r37.zzr += r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x017c, code lost:
        if (com.google.android.gms.internal.ads.zzfs.zzj(r7, r2, r8, r4) == false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
        if (r7 == 2) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x017e, code lost:
        r37.zzt = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0181, code lost:
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0183, code lost:
        r2 = r17;
        r20 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0187, code lost:
        r23 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x018a, code lost:
        r20 = r2;
        r19 = r9;
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0198, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0199, code lost:
        r17 = r2;
        r8 = r19.zzf(r38, r8, r23);
        r37.zzq += r8;
        r37.zzr += r8;
        r37.zzs -= r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01b3, code lost:
        r9 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01b5, code lost:
        r18 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        r37.zzh.zza(r38, r39, r37.zzi);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b8, code lost:
        r9 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c0, code lost:
        if (androidx.media3.common.MimeTypes.AUDIO_AC4.equals(r5) == false) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01c4, code lost:
        if (r37.zzr != 0) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c6, code lost:
        r2 = r37.zze;
        com.google.android.gms.internal.ads.zzacr.zzc(r3, r2);
        r13 = 7;
        r9.zzr(r2, 7);
        r37.zzr += 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d5, code lost:
        r13 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01d6, code lost:
        r3 = r3 + r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01d8, code lost:
        if (r14 == null) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01da, code lost:
        r14.zzd(r38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01dd, code lost:
        r2 = r37.zzr;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (r39.zza != 0) goto L197;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // com.google.android.gms.internal.ads.zzadn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzado r38, com.google.android.gms.internal.ads.zzaej r39) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajb.zzb(com.google.android.gms.internal.ads.zzado, com.google.android.gms.internal.ads.zzaej):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        if ((this.zzb & 16) == 0) {
            zzadqVar = new zzakm(zzadqVar, this.zza);
        }
        this.zzw = zzadqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        zzaja[] zzajaVarArr;
        this.zzg.clear();
        this.zzn = 0;
        this.zzp = -1;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = false;
        if (j == 0) {
            if (this.zzk != 3) {
                zzm();
                return;
            }
            this.zzh.zzb();
            this.zzi.clear();
            return;
        }
        for (zzaja zzajaVar : this.zzx) {
            zzajk zzajkVar = zzajaVar.zzb;
            int zza = zzajkVar.zza(j2);
            if (zza == -1) {
                zza = zzajkVar.zzb(j2);
            }
            zzajaVar.zze = zza;
            zzaeu zzaeuVar = zzajaVar.zzd;
            if (zzaeuVar != null) {
                zzaeuVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        int zzb;
        long j6 = j;
        zzaja[] zzajaVarArr = this.zzx;
        if (zzajaVarArr.length == 0) {
            zzaen zzaenVar = zzaen.zza;
            return new zzaek(zzaenVar, zzaenVar);
        }
        int i = this.zzz;
        if (i != -1) {
            zzajk zzajkVar = zzajaVarArr[i].zzb;
            int zzk = zzk(zzajkVar, j6);
            if (zzk == -1) {
                zzaen zzaenVar2 = zzaen.zza;
                return new zzaek(zzaenVar2, zzaenVar2);
            }
            long[] jArr = zzajkVar.zzf;
            long j7 = jArr[zzk];
            long[] jArr2 = zzajkVar.zzc;
            j2 = jArr2[zzk];
            if (j7 < j6 && zzk < zzajkVar.zzb - 1 && (zzb = zzajkVar.zzb(j6)) != -1 && zzb != zzk) {
                j5 = jArr[zzb];
                j4 = jArr2[zzb];
            } else {
                j5 = -9223372036854775807L;
                j4 = -1;
            }
            j3 = j5;
            j6 = j7;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
            j4 = -1;
        }
        int i2 = 0;
        while (true) {
            zzaja[] zzajaVarArr2 = this.zzx;
            if (i2 >= zzajaVarArr2.length) {
                break;
            }
            if (i2 != this.zzz) {
                zzajk zzajkVar2 = zzajaVarArr2[i2].zzb;
                long zzl = zzl(zzajkVar2, j6, j2);
                if (j3 != -9223372036854775807L) {
                    j4 = zzl(zzajkVar2, j3, j4);
                }
                j2 = zzl;
            }
            i2++;
        }
        zzaen zzaenVar3 = new zzaen(j6, j2);
        if (j3 == -9223372036854775807L) {
            return new zzaek(zzaenVar3, zzaenVar3);
        }
        return new zzaek(zzaenVar3, new zzaen(j3, j4));
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        boolean z;
        zzfyc zzn;
        if ((this.zzb & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        zzaeq zzb = zzajg.zzb(zzadoVar, z);
        if (zzb != null) {
            zzn = zzfyc.zzo(zzb);
        } else {
            zzn = zzfyc.zzn();
        }
        this.zzj = zzn;
        if (zzb != null) {
            return false;
        }
        return true;
    }

    public zzajb(zzakj zzakjVar, int i) {
        this.zza = zzakjVar;
        this.zzb = i;
        this.zzj = zzfyc.zzn();
        this.zzk = (i & 4) != 0 ? 3 : 0;
        this.zzh = new zzajf();
        this.zzi = new ArrayList();
        this.zzf = new zzek(16);
        this.zzg = new ArrayDeque();
        this.zzc = new zzek(zzfs.zza);
        this.zzd = new zzek(6);
        this.zze = new zzek();
        this.zzp = -1;
        this.zzw = zzadq.zza;
        this.zzx = new zzaja[0];
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
