package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.mp4.Atom;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaip {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb;

    static {
        String str = zzeu.zza;
        zzb = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static int zza(int i) {
        return (i >> 24) & 255;
    }

    @Nullable
    public static zzav zzb(zzez zzezVar) {
        zzex zzexVar;
        zzfa zzb2 = zzezVar.zzb(Atom.TYPE_hdlr);
        zzfa zzb3 = zzezVar.zzb(Atom.TYPE_keys);
        zzfa zzb4 = zzezVar.zzb(Atom.TYPE_ilst);
        if (zzb2 != null && zzb3 != null && zzb4 != null && zzi(zzb2.zza) == 1835299937) {
            zzek zzekVar = zzb3.zza;
            zzekVar.zzL(12);
            int zzg = zzekVar.zzg();
            String[] strArr = new String[zzg];
            for (int i = 0; i < zzg; i++) {
                int zzg2 = zzekVar.zzg();
                zzekVar.zzM(4);
                strArr[i] = zzekVar.zzB(zzg2 - 8, StandardCharsets.UTF_8);
            }
            zzek zzekVar2 = zzb4.zza;
            zzekVar2.zzL(8);
            ArrayList arrayList = new ArrayList();
            while (zzekVar2.zza() > 8) {
                int zzc = zzekVar2.zzc() + zzekVar2.zzg();
                int zzg3 = zzekVar2.zzg() - 1;
                if (zzg3 >= 0 && zzg3 < zzg) {
                    String str = strArr[zzg3];
                    while (true) {
                        int zzc2 = zzekVar2.zzc();
                        if (zzc2 < zzc) {
                            int zzg4 = zzekVar2.zzg();
                            if (zzekVar2.zzg() == 1684108385) {
                                int zzg5 = zzekVar2.zzg();
                                int zzg6 = zzekVar2.zzg();
                                int i2 = zzg4 - 16;
                                byte[] bArr = new byte[i2];
                                zzekVar2.zzH(bArr, 0, i2);
                                zzexVar = new zzex(str, bArr, zzg6, zzg5);
                                break;
                            }
                            zzekVar2.zzL(zzc2 + zzg4);
                        } else {
                            zzexVar = null;
                            break;
                        }
                    }
                    if (zzexVar != null) {
                        arrayList.add(zzexVar);
                    }
                } else {
                    zzdx.zzf("BoxParsers", "Skipped metadata with unknown key index: " + zzg3);
                }
                zzekVar2.zzL(zzc);
            }
            if (!arrayList.isEmpty()) {
                return new zzav(arrayList);
            }
        }
        return null;
    }

    public static zzav zzc(zzfa zzfaVar) {
        int zzn;
        zzek zzekVar = zzfaVar.zza;
        zzekVar.zzL(8);
        zzav zzavVar = new zzav(-9223372036854775807L, new zzau[0]);
        while (zzekVar.zza() >= 8) {
            int zzc = zzekVar.zzc();
            int zzg = zzekVar.zzg() + zzc;
            int zzg2 = zzekVar.zzg();
            zzav zzavVar2 = null;
            if (zzg2 == 1835365473) {
                zzekVar.zzL(zzc);
                zzekVar.zzM(8);
                zzg(zzekVar);
                while (true) {
                    if (zzekVar.zzc() >= zzg) {
                        break;
                    }
                    int zzc2 = zzekVar.zzc();
                    int zzg3 = zzekVar.zzg() + zzc2;
                    if (zzekVar.zzg() == 1768715124) {
                        zzekVar.zzL(zzc2);
                        zzekVar.zzM(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzekVar.zzc() < zzg3) {
                            zzau zza2 = zzaix.zza(zzekVar);
                            if (zza2 != null) {
                                arrayList.add(zza2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            zzavVar2 = new zzav(arrayList);
                        }
                    } else {
                        zzekVar.zzL(zzg3);
                    }
                }
                zzavVar = zzavVar.zzd(zzavVar2);
            } else if (zzg2 == 1936553057) {
                zzekVar.zzL(zzc);
                zzekVar.zzM(12);
                while (true) {
                    if (zzekVar.zzc() >= zzg) {
                        break;
                    }
                    int zzc3 = zzekVar.zzc();
                    int zzg4 = zzekVar.zzg();
                    if (zzekVar.zzg() == 1935766900) {
                        if (zzg4 >= 16) {
                            zzekVar.zzM(4);
                            int i = -1;
                            int i2 = 0;
                            for (int i3 = 0; i3 < 2; i3++) {
                                int zzm = zzekVar.zzm();
                                int zzm2 = zzekVar.zzm();
                                if (zzm == 0) {
                                    i = zzm2;
                                } else if (zzm == 1) {
                                    i2 = zzm2;
                                }
                            }
                            if (i == 12) {
                                zzn = 240;
                            } else if (i == 13) {
                                zzn = 120;
                            } else {
                                if (i == 21 && zzekVar.zza() >= 8 && zzekVar.zzc() + 8 <= zzg) {
                                    int zzg5 = zzekVar.zzg();
                                    int zzg6 = zzekVar.zzg();
                                    if (zzg5 >= 12 && zzg6 == 1936877170) {
                                        zzn = zzekVar.zzn();
                                    }
                                }
                                zzn = -2147483647;
                            }
                            if (zzn != -2147483647) {
                                zzavVar2 = new zzav(-9223372036854775807L, new zzahh(zzn, i2));
                            }
                        }
                    } else {
                        zzekVar.zzL(zzc3 + zzg4);
                    }
                }
                zzavVar = zzavVar.zzd(zzavVar2);
            } else if (zzg2 == -1451722374) {
                zzavVar = zzavVar.zzd(zzl(zzekVar));
            }
            zzekVar.zzL(zzg);
        }
        return zzavVar;
    }

    public static zzfe zzd(zzek zzekVar) {
        long zzt;
        long zzt2;
        zzekVar.zzL(8);
        if (zza(zzekVar.zzg()) == 0) {
            zzt = zzekVar.zzu();
            zzt2 = zzekVar.zzu();
        } else {
            zzt = zzekVar.zzt();
            zzt2 = zzekVar.zzt();
        }
        return new zzfe(zzt, zzt2, zzekVar.zzu());
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzajk zze(com.google.android.gms.internal.ads.zzajh r52, com.google.android.gms.internal.ads.zzez r53, com.google.android.gms.internal.ads.zzaeb r54) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 1663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaip.zze(com.google.android.gms.internal.ads.zzajh, com.google.android.gms.internal.ads.zzez, com.google.android.gms.internal.ads.zzaeb):com.google.android.gms.internal.ads.zzajk");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x05eb  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x062b  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0d12  */
    /* JADX WARN: Removed duplicated region for block: B:543:0x0d14  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0d75  */
    /* JADX WARN: Removed duplicated region for block: B:557:0x0d7f  */
    /* JADX WARN: Removed duplicated region for block: B:598:0x0f04  */
    /* JADX WARN: Removed duplicated region for block: B:599:0x0f0a  */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0fc9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:626:0x024a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0216  */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* JADX WARN: Type inference failed for: r0v97, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v98 */
    /* JADX WARN: Type inference failed for: r3v62 */
    /* JADX WARN: Type inference failed for: r3v63, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v67 */
    /* JADX WARN: Type inference failed for: r3v69 */
    /* JADX WARN: Type inference failed for: r3v70, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v73 */
    /* JADX WARN: Type inference failed for: r4v118 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v40, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v71 */
    /* JADX WARN: Type inference failed for: r4v72, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v80 */
    /* JADX WARN: Type inference failed for: r4v81, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v84 */
    /* JADX WARN: Type inference failed for: r4v86 */
    /* JADX WARN: Type inference failed for: r4v87, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v92 */
    /* JADX WARN: Type inference failed for: r4v93 */
    /* JADX WARN: Type inference failed for: r4v95, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v98, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v99 */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v48, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v53 */
    /* JADX WARN: Type inference failed for: r5v54 */
    /* JADX WARN: Type inference failed for: r5v55 */
    /* JADX WARN: Type inference failed for: r5v56, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v57 */
    /* JADX WARN: Type inference failed for: r5v58 */
    /* JADX WARN: Type inference failed for: r5v59, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v61 */
    /* JADX WARN: Type inference failed for: r5v62, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v63 */
    /* JADX WARN: Type inference failed for: r5v64 */
    /* JADX WARN: Type inference failed for: r7v111 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v38 */
    /* JADX WARN: Type inference failed for: r9v39, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v47 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List zzf(com.google.android.gms.internal.ads.zzez r81, com.google.android.gms.internal.ads.zzaeb r82, long r83, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzs r85, boolean r86, boolean r87, com.google.android.gms.internal.ads.zzfur r88) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 4051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaip.zzf(com.google.android.gms.internal.ads.zzez, com.google.android.gms.internal.ads.zzaeb, long, com.google.android.gms.internal.ads.zzs, boolean, boolean, com.google.android.gms.internal.ads.zzfur):java.util.List");
    }

    public static void zzg(zzek zzekVar) {
        int zzc = zzekVar.zzc();
        zzekVar.zzM(4);
        if (zzekVar.zzg() != 1751411826) {
            zzc += 4;
        }
        zzekVar.zzL(zzc);
    }

    private static int zzh(zzek zzekVar) {
        int zzm = zzekVar.zzm();
        int i = zzm & 127;
        while ((zzm & 128) == 128) {
            zzm = zzekVar.zzm();
            i = (i << 7) | (zzm & 127);
        }
        return i;
    }

    private static int zzi(zzek zzekVar) {
        zzekVar.zzL(16);
        return zzekVar.zzg();
    }

    @Nullable
    private static Pair zzj(zzek zzekVar, int i, int i2) throws zzaz {
        boolean z;
        boolean z2;
        boolean z3;
        Integer num;
        zzaji zzajiVar;
        Pair create;
        int i3;
        int i4;
        Integer num2;
        boolean z4;
        int zzc = zzekVar.zzc();
        while (zzc - i < i2) {
            zzekVar.zzL(zzc);
            int zzg = zzekVar.zzg();
            boolean z5 = true;
            if (zzg > 0) {
                z = true;
            } else {
                z = false;
            }
            zzadr.zzb(z, "childAtomSize must be positive");
            if (zzekVar.zzg() == 1936289382) {
                int i5 = zzc + 8;
                int i6 = 0;
                int i7 = -1;
                Integer num3 = null;
                String str = null;
                while (i5 - zzc < zzg) {
                    zzekVar.zzL(i5);
                    int zzg2 = zzekVar.zzg();
                    int zzg3 = zzekVar.zzg();
                    if (zzg3 == 1718775137) {
                        num3 = Integer.valueOf(zzekVar.zzg());
                    } else if (zzg3 == 1935894637) {
                        zzekVar.zzM(4);
                        str = zzekVar.zzB(4, StandardCharsets.UTF_8);
                    } else if (zzg3 == 1935894633) {
                        i7 = i5;
                        i6 = zzg2;
                    }
                    i5 += zzg2;
                }
                byte[] bArr = null;
                if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
                    create = null;
                } else {
                    if (num3 != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzadr.zzb(z2, "frma atom is mandatory");
                    if (i7 != -1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zzadr.zzb(z3, "schi atom is mandatory");
                    int i8 = i7 + 8;
                    while (true) {
                        if (i8 - i7 < i6) {
                            zzekVar.zzL(i8);
                            int zzg4 = zzekVar.zzg();
                            if (zzekVar.zzg() == 1952804451) {
                                int zza2 = zza(zzekVar.zzg());
                                zzekVar.zzM(1);
                                if (zza2 == 0) {
                                    zzekVar.zzM(1);
                                    i4 = 0;
                                    i3 = 0;
                                } else {
                                    int zzm = zzekVar.zzm();
                                    i3 = zzm & 15;
                                    i4 = (zzm & 240) >> 4;
                                }
                                if (zzekVar.zzm() == 1) {
                                    num2 = num3;
                                    z4 = true;
                                } else {
                                    num2 = num3;
                                    z4 = false;
                                }
                                int zzm2 = zzekVar.zzm();
                                byte[] bArr2 = new byte[16];
                                zzekVar.zzH(bArr2, 0, 16);
                                if (z4 && zzm2 == 0) {
                                    int zzm3 = zzekVar.zzm();
                                    byte[] bArr3 = new byte[zzm3];
                                    zzekVar.zzH(bArr3, 0, zzm3);
                                    bArr = bArr3;
                                }
                                num = num2;
                                zzajiVar = new zzaji(z4, str, zzm2, bArr2, i4, i3, bArr);
                            } else {
                                i8 += zzg4;
                            }
                        } else {
                            num = num3;
                            zzajiVar = null;
                            break;
                        }
                    }
                    if (zzajiVar == null) {
                        z5 = false;
                    }
                    zzadr.zzb(z5, "tenc atom is mandatory");
                    String str2 = zzeu.zza;
                    create = Pair.create(num, zzajiVar);
                }
                if (create != null) {
                    return create;
                }
            }
            zzc += zzg;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0144, code lost:
        if (r6 == 1) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzk zzk(com.google.android.gms.internal.ads.zzek r15) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaip.zzk(com.google.android.gms.internal.ads.zzek):com.google.android.gms.internal.ads.zzk");
    }

    @Nullable
    private static zzav zzl(zzek zzekVar) {
        short zzE = zzekVar.zzE();
        zzekVar.zzM(2);
        String zzB = zzekVar.zzB(zzE, StandardCharsets.UTF_8);
        int max = Math.max(zzB.lastIndexOf(43), zzB.lastIndexOf(45));
        try {
            return new zzav(-9223372036854775807L, new zzfd(Float.parseFloat(zzB.substring(0, max)), Float.parseFloat(zzB.substring(max, zzB.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static zzaid zzm(zzek zzekVar, int i) {
        zzekVar.zzL(i + 8);
        zzekVar.zzM(4);
        return new zzaid(zzekVar.zzu(), zzekVar.zzu());
    }

    private static zzaif zzn(zzek zzekVar, int i) {
        long j;
        zzekVar.zzL(i + 12);
        zzekVar.zzM(1);
        zzh(zzekVar);
        zzekVar.zzM(2);
        int zzm = zzekVar.zzm();
        if ((zzm & 128) != 0) {
            zzekVar.zzM(2);
        }
        if ((zzm & 64) != 0) {
            zzekVar.zzM(zzekVar.zzm());
        }
        if ((zzm & 32) != 0) {
            zzekVar.zzM(2);
        }
        zzekVar.zzM(1);
        zzh(zzekVar);
        String zzd = zzay.zzd(zzekVar.zzm());
        if (!"audio/mpeg".equals(zzd) && !"audio/vnd.dts".equals(zzd) && !"audio/vnd.dts.hd".equals(zzd)) {
            zzekVar.zzM(4);
            long zzu = zzekVar.zzu();
            long zzu2 = zzekVar.zzu();
            zzekVar.zzM(1);
            int zzh = zzh(zzekVar);
            long j2 = zzu2;
            byte[] bArr = new byte[zzh];
            zzekVar.zzH(bArr, 0, zzh);
            if (j2 <= 0) {
                j2 = -1;
            }
            if (zzu > 0) {
                j = zzu;
            } else {
                j = -1;
            }
            return new zzaif(zzd, bArr, j2, j);
        }
        return new zzaif(zzd, null, -1L, -1L);
    }

    private static ByteBuffer zzo() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void zzp(zzek zzekVar, int i, int i2, int i3, int i4, @Nullable String str, boolean z, @Nullable zzs zzsVar, zzaik zzaikVar, int i5) throws zzaz {
        int i6;
        int i7;
        int zzn;
        int zzg;
        int i8;
        int i9;
        String str2;
        long j;
        long j2;
        long j3;
        long j4;
        int i10;
        int i11;
        int i12;
        int i13;
        byte[] bArr;
        int i14;
        boolean z2;
        int i15;
        String format;
        zzek zzekVar2 = zzekVar;
        int i16 = i;
        int i17 = i3;
        zzs zzsVar2 = zzsVar;
        zzekVar2.zzL(i2 + 16);
        if (z) {
            i6 = zzekVar2.zzq();
            zzekVar2.zzM(6);
        } else {
            zzekVar2.zzM(8);
            i6 = 0;
        }
        int i18 = 0;
        if (i6 == 0 || i6 == 1) {
            i7 = 2;
            int zzq = zzekVar2.zzq();
            zzekVar2.zzM(6);
            zzn = zzekVar2.zzn();
            zzekVar2.zzL(zzekVar2.zzc() - 4);
            zzg = zzekVar2.zzg();
            if (i6 == 1) {
                zzekVar2.zzM(16);
            }
            i8 = zzq;
            i9 = -1;
        } else if (i6 != 2) {
            return;
        } else {
            zzekVar2.zzM(16);
            zzn = (int) Math.round(Double.longBitsToDouble(zzekVar2.zzt()));
            int zzp = zzekVar2.zzp();
            zzekVar2.zzM(4);
            int zzp2 = zzekVar2.zzp();
            int zzp3 = zzekVar2.zzp();
            int i19 = zzp3 & 1;
            int i20 = zzp3 & 2;
            i7 = 2;
            if (i19 == 0) {
                if (zzp2 == 8) {
                    i9 = 3;
                } else if (zzp2 == 16) {
                    i9 = i20 != 0 ? 268435456 : 2;
                } else if (zzp2 == 24) {
                    i9 = i20 != 0 ? C.ENCODING_PCM_24BIT_BIG_ENDIAN : 21;
                } else {
                    if (zzp2 == 32) {
                        i9 = i20 != 0 ? C.ENCODING_PCM_32BIT_BIG_ENDIAN : 22;
                    }
                    i9 = -1;
                }
                zzekVar2.zzM(8);
                i8 = zzp;
                zzg = 0;
            } else {
                if (zzp2 == 32) {
                    i9 = 4;
                    zzekVar2.zzM(8);
                    i8 = zzp;
                    zzg = 0;
                }
                i9 = -1;
                zzekVar2.zzM(8);
                i8 = zzp;
                zzg = 0;
            }
        }
        if (i16 == 1767992678) {
            i8 = -1;
            zzn = -1;
        } else {
            if (i16 == 1935764850) {
                zzn = 8000;
            } else if (i16 == 1935767394) {
                zzn = 16000;
                i16 = 1935767394;
            }
            i8 = 1;
        }
        int zzc = zzekVar2.zzc();
        int i21 = Atom.TYPE_enca;
        if (i16 == 1701733217) {
            Pair zzj = zzj(zzekVar2, i2, i17);
            if (zzj != null) {
                i21 = ((Integer) zzj.first).intValue();
                zzsVar2 = zzsVar2 == null ? null : zzsVar2.zzb(((zzaji) zzj.second).zzb);
                zzaikVar.zza[i5] = (zzaji) zzj.second;
            }
            i16 = i21;
            zzekVar2.zzL(zzc);
        }
        if (i16 == 1633889587) {
            str2 = "audio/ac3";
        } else if (i16 == 1700998451) {
            str2 = "audio/eac3";
        } else if (i16 == 1633889588) {
            str2 = MimeTypes.AUDIO_AC4;
        } else if (i16 == 1685353315) {
            str2 = "audio/vnd.dts";
        } else if (i16 == 1685353320 || i16 == 1685353324) {
            str2 = "audio/vnd.dts.hd";
        } else if (i16 == 1685353317) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (i16 == 1685353336) {
            str2 = MimeTypes.AUDIO_DTS_X;
        } else if (i16 == 1935764850) {
            str2 = "audio/3gpp";
        } else if (i16 == 1935767394) {
            str2 = "audio/amr-wb";
        } else {
            if (i16 != 1936684916) {
                if (i16 == 1953984371) {
                    str2 = "audio/raw";
                    i9 = 268435456;
                } else if (i16 != 1819304813) {
                    str2 = (i16 == 778924082 || i16 == 778924083) ? "audio/mpeg" : i16 == 1835557169 ? MimeTypes.AUDIO_MPEGH_MHA1 : i16 == 1835560241 ? MimeTypes.AUDIO_MPEGH_MHM1 : i16 == 1634492771 ? "audio/alac" : i16 == 1634492791 ? "audio/g711-alaw" : i16 == 1970037111 ? "audio/g711-mlaw" : i16 == 1332770163 ? "audio/opus" : i16 == 1716281667 ? "audio/flac" : i16 == 1835823201 ? "audio/true-hd" : i16 == 1767992678 ? "audio/iamf" : null;
                } else if (i9 != -1) {
                    str2 = "audio/raw";
                }
            }
            str2 = "audio/raw";
            i9 = i7;
        }
        String str3 = null;
        List list = null;
        zzaif zzaifVar = null;
        zzaid zzaidVar = null;
        while (zzc - i2 < i17) {
            zzekVar2.zzL(zzc);
            int zzg2 = zzekVar2.zzg();
            int i22 = i9;
            zzadr.zzb(zzg2 > 0 ? 1 : i18, "childAtomSize must be positive");
            int zzg3 = zzekVar2.zzg();
            String str4 = str3;
            if (zzg3 == 1835557187) {
                zzekVar2.zzL(zzc + 8);
                zzekVar2.zzM(1);
                int zzm = zzekVar2.zzm();
                zzekVar2.zzM(1);
                if (Objects.equals(str2, MimeTypes.AUDIO_MPEGH_MHM1)) {
                    Object[] objArr = new Object[1];
                    objArr[i18] = Integer.valueOf(zzm);
                    format = String.format("mhm1.%02X", objArr);
                } else {
                    Object[] objArr2 = new Object[1];
                    objArr2[i18] = Integer.valueOf(zzm);
                    format = String.format("mha1.%02X", objArr2);
                }
                int zzq2 = zzekVar2.zzq();
                byte[] bArr2 = new byte[zzq2];
                str4 = format;
                i15 = i18;
                zzekVar2.zzH(bArr2, i15, zzq2);
                if (list == null) {
                    list = zzfyc.zzo(bArr2);
                } else {
                    list = zzfyc.zzp(bArr2, (byte[]) list.get(i15));
                }
            } else {
                if (zzg3 == 1835557200) {
                    zzekVar2.zzL(zzc + 8);
                    int zzm2 = zzekVar2.zzm();
                    if (zzm2 > 0) {
                        byte[] bArr3 = new byte[zzm2];
                        i15 = 0;
                        zzekVar2.zzH(bArr3, 0, zzm2);
                        if (list == null) {
                            list = zzfyc.zzo(bArr3);
                        } else {
                            list = zzfyc.zzp((byte[]) list.get(0), bArr3);
                            str3 = str4;
                            i10 = zzg2;
                            i13 = 0;
                            zzc += i10;
                            zzekVar2 = zzekVar;
                            i17 = i3;
                            i18 = i13;
                            i9 = i22;
                        }
                    } else {
                        i10 = zzg2;
                        i13 = 0;
                    }
                } else {
                    if (zzg3 == 1702061171) {
                        i10 = zzg2;
                        i11 = zzc;
                        i12 = -1;
                    } else if (z && zzg3 == 2002876005) {
                        int zzc2 = zzekVar2.zzc();
                        zzadr.zzb(zzc2 >= zzc, null);
                        int i23 = zzc2;
                        while (true) {
                            if (i23 - zzc >= zzg2) {
                                i10 = zzg2;
                                i11 = -1;
                                break;
                            }
                            zzekVar2.zzL(i23);
                            int zzg4 = zzekVar2.zzg();
                            if (zzg4 > 0) {
                                i10 = zzg2;
                                z2 = true;
                            } else {
                                i10 = zzg2;
                                z2 = false;
                            }
                            zzadr.zzb(z2, "childAtomSize must be positive");
                            if (zzekVar2.zzg() == 1702061171) {
                                i11 = i23;
                                break;
                            } else {
                                i23 += zzg4;
                                zzg2 = i10;
                            }
                        }
                        i12 = -1;
                    } else {
                        i10 = zzg2;
                        if (zzg3 == 1651798644) {
                            zzaidVar = zzm(zzekVar2, zzc);
                        } else {
                            if (zzg3 == 1684103987) {
                                zzekVar2.zzL(zzc + 8);
                                zzaikVar.zzb = zzacn.zzc(zzekVar2, Integer.toString(i4), str, zzsVar2);
                            } else if (zzg3 == 1684366131) {
                                zzekVar2.zzL(zzc + 8);
                                zzaikVar.zzb = zzacn.zzd(zzekVar2, Integer.toString(i4), str, zzsVar2);
                            } else if (zzg3 == 1684103988) {
                                zzekVar2.zzL(zzc + 8);
                                zzaikVar.zzb = zzacr.zza(zzekVar2, Integer.toString(i4), str, zzsVar2);
                            } else {
                                if (zzg3 != 1684892784) {
                                    if (zzg3 == 1684305011 || zzg3 == 1969517683) {
                                        zzx zzxVar = new zzx();
                                        zzxVar.zzN(i4);
                                        zzxVar.zzad(str2);
                                        zzxVar.zzB(i8);
                                        zzxVar.zzae(zzn);
                                        zzxVar.zzH(zzsVar2);
                                        zzxVar.zzS(str);
                                        zzaikVar.zzb = zzxVar.zzaj();
                                    } else if (zzg3 == 1682927731) {
                                        int i24 = i10 - 8;
                                        byte[] bArr4 = zzb;
                                        int length = bArr4.length;
                                        byte[] copyOf = Arrays.copyOf(bArr4, length + i24);
                                        zzekVar2.zzL(zzc + 8);
                                        zzekVar2.zzH(copyOf, length, i24);
                                        list = zzaei.zze(copyOf);
                                    } else if (zzg3 == 1684425825) {
                                        byte[] bArr5 = new byte[i10 - 8];
                                        bArr5[0] = 102;
                                        bArr5[1] = 76;
                                        bArr5[i7] = 97;
                                        bArr5[3] = 67;
                                        zzekVar2.zzL(zzc + 12);
                                        zzekVar2.zzH(bArr5, 4, i10 - 12);
                                        list = zzfyc.zzo(bArr5);
                                    } else if (zzg3 == 1634492771) {
                                        int i25 = i10 - 12;
                                        byte[] bArr6 = new byte[i25];
                                        zzekVar2.zzL(zzc + 12);
                                        zzekVar2.zzH(bArr6, 0, i25);
                                        int i26 = zzdh.zza;
                                        zzek zzekVar3 = new zzek(bArr6);
                                        zzekVar3.zzL(9);
                                        int zzm3 = zzekVar3.zzm();
                                        zzekVar3.zzL(20);
                                        Pair create = Pair.create(Integer.valueOf(zzekVar3.zzp()), Integer.valueOf(zzm3));
                                        int intValue = ((Integer) create.first).intValue();
                                        int intValue2 = ((Integer) create.second).intValue();
                                        list = zzfyc.zzo(bArr6);
                                        str3 = str4;
                                        i8 = intValue2;
                                        zzn = intValue;
                                    } else if (zzg3 == 1767990114) {
                                        zzekVar2.zzL(zzc + 9);
                                        int zzb2 = zzgbf.zzb(zzekVar2.zzv());
                                        byte[] bArr7 = new byte[zzb2];
                                        zzekVar2.zzH(bArr7, 0, zzb2);
                                        list = zzfyc.zzo(bArr7);
                                        str3 = str4;
                                        i13 = 0;
                                        zzc += i10;
                                        zzekVar2 = zzekVar;
                                        i17 = i3;
                                        i18 = i13;
                                        i9 = i22;
                                    }
                                    i13 = 0;
                                } else if (zzg <= 0) {
                                    throw zzaz.zza("Invalid sample rate for Dolby TrueHD MLP stream: " + zzg, null);
                                } else {
                                    str3 = str4;
                                    zzn = zzg;
                                    i8 = i7;
                                }
                                i13 = 0;
                                zzc += i10;
                                zzekVar2 = zzekVar;
                                i17 = i3;
                                i18 = i13;
                                i9 = i22;
                            }
                            i13 = 0;
                        }
                        str3 = str4;
                        i13 = 0;
                        zzc += i10;
                        zzekVar2 = zzekVar;
                        i17 = i3;
                        i18 = i13;
                        i9 = i22;
                    }
                    if (i11 != i12) {
                        zzaifVar = zzn(zzekVar2, i11);
                        str2 = zzaifVar.zza;
                        bArr = zzaifVar.zzb;
                        if (bArr != null) {
                            if ("audio/vorbis".equals(str2)) {
                                zzek zzekVar4 = new zzek(bArr);
                                int i27 = 1;
                                zzekVar4.zzM(1);
                                int i28 = 0;
                                while (true) {
                                    if (zzekVar4.zza() <= 0) {
                                        i14 = 255;
                                        break;
                                    }
                                    i14 = 255;
                                    if (zzekVar4.zzf() != 255) {
                                        break;
                                    }
                                    zzekVar4.zzM(i27);
                                    i28 += 255;
                                    i27 = 1;
                                }
                                int zzm4 = i28 + zzekVar4.zzm();
                                int i29 = 0;
                                while (zzekVar4.zza() > 0 && zzekVar4.zzf() == i14) {
                                    zzekVar4.zzM(1);
                                    i29 += i14;
                                }
                                byte[] bArr8 = new byte[zzm4];
                                int zzc3 = zzekVar4.zzc();
                                i13 = 0;
                                System.arraycopy(bArr, zzc3, bArr8, 0, zzm4);
                                int zzm5 = zzc3 + zzm4 + i29 + zzekVar4.zzm();
                                int length2 = bArr.length - zzm5;
                                byte[] bArr9 = new byte[length2];
                                System.arraycopy(bArr, zzm5, bArr9, 0, length2);
                                list = zzfyc.zzp(bArr8, bArr9);
                            } else {
                                i13 = 0;
                                if ("audio/mp4a-latm".equals(str2)) {
                                    zzaci zza2 = zzack.zza(bArr);
                                    zzn = zza2.zza;
                                    i8 = zza2.zzb;
                                    str3 = zza2.zzc;
                                } else {
                                    str3 = str4;
                                }
                                list = zzfyc.zzo(bArr);
                                zzc += i10;
                                zzekVar2 = zzekVar;
                                i17 = i3;
                                i18 = i13;
                                i9 = i22;
                            }
                        }
                    }
                    i13 = 0;
                }
                str3 = str4;
                zzc += i10;
                zzekVar2 = zzekVar;
                i17 = i3;
                i18 = i13;
                i9 = i22;
            }
            i10 = zzg2;
            i13 = i15;
            str3 = str4;
            zzc += i10;
            zzekVar2 = zzekVar;
            i17 = i3;
            i18 = i13;
            i9 = i22;
        }
        int i30 = i9;
        String str5 = str3;
        if (zzaikVar.zzb != null || str2 == null) {
            return;
        }
        zzx zzxVar2 = new zzx();
        zzxVar2.zzN(i4);
        zzxVar2.zzad(str2);
        zzxVar2.zzC(str5);
        zzxVar2.zzB(i8);
        zzxVar2.zzae(zzn);
        zzxVar2.zzX(i30);
        zzxVar2.zzP(list);
        zzxVar2.zzH(zzsVar2);
        zzxVar2.zzS(str);
        if (zzaifVar != null) {
            j3 = zzaifVar.zzc;
            zzxVar2.zzA(zzgbf.zzf(j3));
            j4 = zzaifVar.zzd;
            zzxVar2.zzY(zzgbf.zzf(j4));
        } else if (zzaidVar != null) {
            j = zzaidVar.zza;
            zzxVar2.zzA(zzgbf.zzf(j));
            j2 = zzaidVar.zzb;
            zzxVar2.zzY(zzgbf.zzf(j2));
        }
        zzaikVar.zzb = zzxVar2.zzaj();
    }
}
