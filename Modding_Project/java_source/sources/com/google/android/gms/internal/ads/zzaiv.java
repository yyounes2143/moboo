package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaiv implements zzadn {
    private static final byte[] zza = {-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzz zzb;
    private long zzA;
    @Nullable
    private zzaiu zzB;
    private int zzC;
    private int zzD;
    private int zzE;
    private boolean zzF;
    private boolean zzG;
    private zzadq zzH;
    private zzaet[] zzI;
    private zzaet[] zzJ;
    private boolean zzK;
    private final zzakj zzc;
    private final int zzd;
    private final List zze;
    private final SparseArray zzf;
    private final zzek zzg;
    private final zzek zzh;
    private final zzek zzi;
    private final byte[] zzj;
    private final zzek zzk;
    private final zzagk zzl;
    private final zzek zzm;
    private final ArrayDeque zzn;
    private final ArrayDeque zzo;
    private final zzfw zzp;
    private zzfyc zzq;
    private int zzr;
    private int zzs;
    private long zzt;
    private int zzu;
    @Nullable
    private zzek zzv;
    private long zzw;
    private int zzx;
    private long zzy;
    private long zzz;

    static {
        zzx zzxVar = new zzx();
        zzxVar.zzad("application/x-emsg");
        zzb = zzxVar.zzaj();
    }

    @Deprecated
    public zzaiv() {
        this(zzakj.zza, 32, null, null, zzfyc.zzn(), null);
    }

    private static int zzg(int i) throws zzaz {
        if (i >= 0) {
            return i;
        }
        throw zzaz.zza("Unexpected negative value: " + i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011b  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzs zzh(java.util.List r19) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiv.zzh(java.util.List):com.google.android.gms.internal.ads.zzs");
    }

    private final void zzj() {
        this.zzr = 0;
        this.zzu = 0;
    }

    private static void zzk(zzek zzekVar, int i, zzajj zzajjVar) throws zzaz {
        zzekVar.zzL(i + 8);
        int zzg = zzekVar.zzg();
        int i2 = zzaip.zza;
        boolean z = true;
        if ((zzg & 1) == 0) {
            if ((zzg & 2) == 0) {
                z = false;
            }
            int zzp = zzekVar.zzp();
            if (zzp == 0) {
                Arrays.fill(zzajjVar.zzl, 0, zzajjVar.zze, false);
                return;
            }
            int i3 = zzajjVar.zze;
            if (zzp == i3) {
                Arrays.fill(zzajjVar.zzl, 0, zzp, z);
                zzajjVar.zza(zzekVar.zza());
                zzek zzekVar2 = zzajjVar.zzn;
                zzekVar.zzH(zzekVar2.zzN(), 0, zzekVar2.zzd());
                zzekVar2.zzL(0);
                zzajjVar.zzo = false;
                return;
            }
            throw zzaz.zza("Senc sample count " + zzp + " is different from fragment sample count" + i3, null);
        }
        throw zzaz.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02bc, code lost:
        r12 = (com.google.android.gms.internal.ads.zzfa) r2.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02c4, code lost:
        if (r12.zzd != r4) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02c6, code lost:
        r14 = r7 + 1;
        r12 = r12.zza;
        r12.zzL(8);
        r4 = r12.zzg();
        r32 = r6;
        r6 = r15.zzd.zza;
        r33 = r7;
        r7 = r1.zza;
        r34 = com.google.android.gms.internal.ads.zzeu.zza;
        r34 = r10;
        r1.zzg[r33] = r12.zzp();
        r10 = r1.zzf;
        r35 = r11;
        r10 = r1.zzb;
        r10[r33] = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02f9, code lost:
        if ((r4 & 1) == 0) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x02fb, code lost:
        r10[r33] = r10 + r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0308, code lost:
        if ((r4 & 4) == 0) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x030a, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x030c, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x030d, code lost:
        r11 = r7.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x030f, code lost:
        if (r10 == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0311, code lost:
        r36 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0316, code lost:
        r36 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0318, code lost:
        r37 = r10;
        r10 = r4 & 256;
        r10 = r4 & 512;
        r10 = r4 & 1024;
        r4 = r4 & 2048;
        r4 = r6.zzi;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x032a, code lost:
        if (r4 == null) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x032c, code lost:
        r41 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0332, code lost:
        if (r4.length != 1) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0334, code lost:
        r4 = r6.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0336, code lost:
        if (r4 != null) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0338, code lost:
        r42 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x033b, code lost:
        r43 = r4[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0341, code lost:
        if (r43 != 0) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0343, code lost:
        r42 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0346, code lost:
        r42 = r11;
        r10 = r6.zzd;
        r49 = java.math.RoundingMode.DOWN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x036e, code lost:
        if ((com.google.android.gms.internal.ads.zzeu.zzu(r43, 1000000, r10, r49) + com.google.android.gms.internal.ads.zzeu.zzu(r4[0], 1000000, r6.zzc, r49)) >= r6.zze) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0371, code lost:
        r29 = r4[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0374, code lost:
        r41 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0377, code lost:
        r4 = r1.zzh;
        r10 = r1.zzi;
        r11 = r1.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0385, code lost:
        if (r6.zzb != r19) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x038b, code lost:
        if ((r26 & 1) == 0) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x038d, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x038f, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0390, code lost:
        r10 = r35 + r1.zzg[r33];
        r11 = r6.zzc;
        r11 = r1.zzp;
        r6 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x03a2, code lost:
        if (r6 >= r10) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x03a4, code lost:
        if (r10 == 0) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03a6, code lost:
        r54 = r4;
        r4 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x03af, code lost:
        r54 = r4;
        r4 = r7.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03b3, code lost:
        zzg(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03b6, code lost:
        if (r10 == 0) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03b8, code lost:
        r33 = r6;
        r6 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03c3, code lost:
        r33 = r6;
        r6 = r7.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03c7, code lost:
        zzg(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03ca, code lost:
        if (r41 == 0) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03cc, code lost:
        r35 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x03d1, code lost:
        if (r33 != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x03d3, code lost:
        if (r37 == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03d5, code lost:
        r35 = r36;
        r33 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x03da, code lost:
        r33 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03dc, code lost:
        r35 = r42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03de, code lost:
        if (r4 == 0) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03e0, code lost:
        r55 = r6;
        r6 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x03e8, code lost:
        r56 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x03eb, code lost:
        r55 = r6;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x03ef, code lost:
        r6 = com.google.android.gms.internal.ads.zzeu.zzu((r6 + r11) - r29, 1000000, r11, java.math.RoundingMode.DOWN);
        r10[r33] = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0402, code lost:
        if (r1.zzq != false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0404, code lost:
        r10[r33] = r6 + r15.zzd.zzh;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x040c, code lost:
        r4[r33] = r55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0414, code lost:
        if (((r35 >> 16) & 1) != 0) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0416, code lost:
        if (r54 == false) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0418, code lost:
        if (r33 != 0) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x041a, code lost:
        r6 = true;
        r33 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x041f, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0421, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0423, code lost:
        r11[r33] = r6;
        r11 = r11 + r4;
        r6 = r33 + 1;
        r4 = r54;
        r7 = r56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x042f, code lost:
        r1.zzp = r11;
        r11 = r10;
        r7 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0436, code lost:
        r32 = r6;
        r34 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0440, code lost:
        r6 = r32 + 1;
        r10 = r34;
        r4 = androidx.media3.extractor.mp4.Atom.TYPE_trun;
        r19 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x044b, code lost:
        r4 = r15.zzd.zza;
        r6 = r1.zza;
        r6.getClass();
        r4 = r4.zzb(r6.zza);
        r6 = r9.zzb(androidx.media3.extractor.mp4.Atom.TYPE_saiz);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0461, code lost:
        if (r6 == null) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0463, code lost:
        r4.getClass();
        r7 = r4.zzd;
        r6 = r6.zza;
        r6.zzL(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0475, code lost:
        if ((r6.zzg() & 1) != 1) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0477, code lost:
        r6.zzM(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x047a, code lost:
        r10 = r6.zzm();
        r11 = r6.zzp();
        r12 = r1.zze;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0484, code lost:
        if (r11 > r12) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0486, code lost:
        if (r10 != 0) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0488, code lost:
        r10 = r1.zzl;
        r12 = 0;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x048c, code lost:
        if (r12 >= r11) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x048e, code lost:
        r15 = r6.zzm();
        r14 = r14 + r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0493, code lost:
        if (r15 <= r7) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0495, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0497, code lost:
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0498, code lost:
        r10[r12] = r15;
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x049f, code lost:
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x04a1, code lost:
        if (r10 <= r7) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x04a3, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x04a5, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x04a6, code lost:
        r14 = r10 * r11;
        r10 = false;
        java.util.Arrays.fill(r1.zzl, 0, r11, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x04ae, code lost:
        java.util.Arrays.fill(r1.zzl, r11, r1.zze, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x04b5, code lost:
        if (r14 <= 0) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x04b7, code lost:
        r1.zza(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x04d9, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("Saiz sample count " + r11 + " is greater than fragment sample count" + r12, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x04da, code lost:
        r6 = r9.zzb(androidx.media3.extractor.mp4.Atom.TYPE_saio);
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x04e1, code lost:
        if (r6 == null) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x04e3, code lost:
        r6 = r6.zza;
        r6.zzL(8);
        r7 = r6.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x04f1, code lost:
        if ((r7 & 1) != 1) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x04f3, code lost:
        r6.zzM(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x04f6, code lost:
        r10 = r6.zzp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x04fa, code lost:
        if (r10 != 1) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x04fc, code lost:
        r7 = com.google.android.gms.internal.ads.zzaip.zza(r7);
        r10 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0502, code lost:
        if (r7 != 0) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0504, code lost:
        r6 = r6.zzu();
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0509, code lost:
        r6 = r6.zzw();
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x050d, code lost:
        r1.zzc = r10 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0528, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("Unexpected saio entry count: " + r10, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0529, code lost:
        r7 = r9.zzb(androidx.media3.extractor.mp4.Atom.TYPE_senc);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0530, code lost:
        if (r7 == null) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0532, code lost:
        zzk(r7.zza, 0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0538, code lost:
        if (r4 == null) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x053a, code lost:
        r33 = r4.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x053f, code lost:
        r33 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0541, code lost:
        r4 = null;
        r7 = null;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0548, code lost:
        if (r9 >= r2.size()) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x054a, code lost:
        r10 = (com.google.android.gms.internal.ads.zzfa) r2.get(r9);
        r11 = r10.zza;
        r10 = r10.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x055a, code lost:
        if (r10 != 1935828848) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x055c, code lost:
        r11.zzL(12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0565, code lost:
        if (r11.zzg() != 1936025959) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0567, code lost:
        r4 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x056f, code lost:
        if (r10 != 1936158820) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0571, code lost:
        r11.zzL(12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0578, code lost:
        if (r11.zzg() != 1936025959) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x057a, code lost:
        r7 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x057c, code lost:
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0581, code lost:
        if (r4 == null) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0583, code lost:
        if (r7 != null) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0585, code lost:
        r14 = r18;
        r10 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x058a, code lost:
        r4.zzL(8);
        r11 = com.google.android.gms.internal.ads.zzaip.zza(r4.zzg());
        r14 = r18;
        r4.zzM(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x059c, code lost:
        if (r11 != 1) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x059e, code lost:
        r4.zzM(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x05a5, code lost:
        if (r4.zzg() != 1) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x05a7, code lost:
        r7.zzL(8);
        r4 = com.google.android.gms.internal.ads.zzaip.zza(r7.zzg());
        r7.zzM(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x05b5, code lost:
        if (r4 != 1) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x05bd, code lost:
        if (r7.zzu() == 0) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x05bf, code lost:
        r10 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x05c7, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zzc("Variable length description in sgpd found (unsupported)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x05c8, code lost:
        r10 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x05c9, code lost:
        if (r4 < 2) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x05cb, code lost:
        r7.zzM(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x05d6, code lost:
        if (r7.zzu() != 1) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x05d8, code lost:
        r7.zzM(1);
        r9 = r7.zzm();
        r36 = (r9 & 240) >> 4;
        r37 = r9 & 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x05ea, code lost:
        if (r7.zzm() != 1) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x05ec, code lost:
        r34 = r7.zzm();
        r9 = r16;
        r11 = new byte[r9];
        r7.zzH(r11, 0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x05f8, code lost:
        if (r34 != 0) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x05fa, code lost:
        r6 = r7.zzm();
        r9 = new byte[r6];
        r7.zzH(r9, 0, r6);
        r38 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0606, code lost:
        r38 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0608, code lost:
        r1.zzk = true;
        r1.zzm = new com.google.android.gms.internal.ads.zzaji(true, r33, r34, r11, r36, r37, r38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x061e, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zzc("Entry count in sgpd != 1 (unsupported).");
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0625, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zzc("Entry count in sbgp != 1 (unsupported).");
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0626, code lost:
        r4 = r2.size();
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x062b, code lost:
        if (r6 >= r4) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x062d, code lost:
        r7 = (com.google.android.gms.internal.ads.zzfa) r2.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0638, code lost:
        if (r7.zzd != 1970628964) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x063a, code lost:
        r7 = r7.zza;
        r7.zzL(8);
        r7.zzH(r5, 0, 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x064d, code lost:
        if (java.util.Arrays.equals(r5, com.google.android.gms.internal.ads.zzaiv.zza) == false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x064f, code lost:
        zzk(r7, 16, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0659, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x065c, code lost:
        r11 = 16;
        r15 = 0;
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0662, code lost:
        r15 = r1;
        r26 = r4;
        r28 = r6;
        r27 = r7;
        r11 = r16;
        r14 = r18;
        r10 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0676, code lost:
        r13 = r13 + 1;
        r19 = r10;
        r16 = r11;
        r18 = r14;
        r1 = r15;
        r4 = r26;
        r7 = r27;
        r6 = r28;
        r2 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0689, code lost:
        r15 = r1;
        r1 = zzh(r8.zzb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x069b, code lost:
        if (r1 == null) goto L324;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x069d, code lost:
        r2 = r3.size();
        r13 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x06a2, code lost:
        if (r13 >= r2) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x06a4, code lost:
        ((com.google.android.gms.internal.ads.zzaiu) r3.valueAt(r13)).zzj(r1);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x06b6, code lost:
        if (r58.zzy == (-9223372036854775807L)) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x06b8, code lost:
        r1 = r3.size();
        r13 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x06bd, code lost:
        if (r13 >= r1) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x06bf, code lost:
        r2 = (com.google.android.gms.internal.ads.zzaiu) r3.valueAt(r13);
        r4 = r58.zzy;
        r6 = r2.zzf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x06c9, code lost:
        r7 = r2.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x06cd, code lost:
        if (r6 >= r7.zze) goto L345;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x06d5, code lost:
        if (r7.zzi[r6] > r4) goto L343;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x06db, code lost:
        if (r7.zzj[r6] == false) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x06dd, code lost:
        r2.zzi = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x06df, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x06e4, code lost:
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x06e9, code lost:
        r58.zzy = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x06ff, code lost:
        if (r6.isEmpty() != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0701, code lost:
        ((com.google.android.gms.internal.ads.zzez) r6.peek()).zzc(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x070c, code lost:
        zzj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x070f, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0158, code lost:
        r1 = 0;
        r16 = 16;
        r18 = 4;
        r19 = 2;
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0164, code lost:
        if (r7 != 1836019558) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0166, code lost:
        r3 = r58.zzf;
        r4 = r58.zzd;
        r5 = r58.zzj;
        r6 = r8.zzc;
        r7 = r6.size();
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0173, code lost:
        if (r13 >= r7) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0175, code lost:
        r9 = (com.google.android.gms.internal.ads.zzez) r6.get(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0180, code lost:
        if (r9.zzd != 1953653094) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0182, code lost:
        r12 = r9.zzb(androidx.media3.extractor.mp4.Atom.TYPE_tfhd);
        r12.getClass();
        r12 = r12.zza;
        r12.zzL(r2);
        r14 = r12.zzg();
        r15 = com.google.android.gms.internal.ads.zzaip.zza;
        r15 = (com.google.android.gms.internal.ads.zzaiu) r3.get(r12.zzg());
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01a6, code lost:
        if (r15 != null) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01a8, code lost:
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01ac, code lost:
        if ((r14 & 1) == 0) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ae, code lost:
        r10 = r12.zzw();
        r1 = r15.zzb;
        r1.zzb = r10;
        r1.zzc = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01b8, code lost:
        r1 = r15.zze;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01bc, code lost:
        if ((r14 & 2) == 0) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01be, code lost:
        r10 = r12.zzg() - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01c5, code lost:
        r10 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01c9, code lost:
        if ((r14 & 8) == 0) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01cb, code lost:
        r11 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01d0, code lost:
        r11 = r1.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d4, code lost:
        if ((r14 & 16) == 0) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01d6, code lost:
        r2 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01dd, code lost:
        r2 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01e1, code lost:
        if ((r14 & 32) == 0) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01e3, code lost:
        r1 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e8, code lost:
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ea, code lost:
        r15.zzb.zza = new com.google.android.gms.internal.ads.zzaiq(r10, r11, r2, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01f3, code lost:
        if (r15 != null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f5, code lost:
        r26 = r4;
        r28 = r6;
        r27 = r7;
        r11 = r16;
        r14 = r18;
        r10 = r19;
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0206, code lost:
        r1 = r15.zzb;
        r10 = r1.zzp;
        r2 = r1.zzq;
        r15.zzi();
        r12 = r21;
        r15.zzm = true;
        r14 = r9.zzb(androidx.media3.extractor.mp4.Atom.TYPE_tfdt);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x021b, code lost:
        if (r14 == null) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x021f, code lost:
        if ((r4 & 2) != 0) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0221, code lost:
        r2 = r14.zza;
        r2.zzL(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0230, code lost:
        if (com.google.android.gms.internal.ads.zzaip.zza(r2.zzg()) != r12) goto L293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0232, code lost:
        r10 = r2.zzw();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0237, code lost:
        r10 = r2.zzu();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x023b, code lost:
        r1.zzp = r10;
        r1.zzq = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0240, code lost:
        r1.zzp = r10;
        r1.zzq = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0244, code lost:
        r2 = r9.zzb;
        r10 = r2.size();
        r26 = r4;
        r11 = 0;
        r12 = 0;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x024f, code lost:
        r4 = androidx.media3.extractor.mp4.Atom.TYPE_trun;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0252, code lost:
        if (r11 >= r10) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0254, code lost:
        r28 = r6;
        r6 = (com.google.android.gms.internal.ads.zzfa) r2.get(r11);
        r27 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0262, code lost:
        if (r6.zzd != 1953658222) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0264, code lost:
        r4 = r6.zza;
        r4.zzL(12);
        r4 = r4.zzp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x026f, code lost:
        if (r4 <= 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0271, code lost:
        r14 = r14 + r4;
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0279, code lost:
        r11 = r11 + 1;
        r7 = r27;
        r6 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0280, code lost:
        r28 = r6;
        r27 = r7;
        r15.zzh = 0;
        r15.zzg = 0;
        r15.zzf = 0;
        r1.zzd = r12;
        r1.zze = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0292, code lost:
        if (r1.zzg.length >= r12) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0294, code lost:
        r1.zzf = new long[r12];
        r1.zzg = new int[r12];
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x029f, code lost:
        if (r1.zzh.length >= r14) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02a1, code lost:
        r14 = (r14 * 125) / 100;
        r1.zzh = new int[r14];
        r1.zzi = new long[r14];
        r1.zzj = new boolean[r14];
        r1.zzl = new boolean[r14];
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02b5, code lost:
        r6 = 0;
        r7 = 0;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02b8, code lost:
        r29 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02ba, code lost:
        if (r6 >= r10) goto L176;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzl(long r59) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 1808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiv.zzl(long):void");
    }

    private static final zzaiq zzm(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (zzaiq) sparseArray.valueAt(0);
        }
        zzaiq zzaiqVar = (zzaiq) sparseArray.get(i);
        zzaiqVar.getClass();
        return zzaiqVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f2, code lost:
        if ((r20 & com.google.common.base.Ascii.US) == 6) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f8, code lost:
        if (j$.util.Objects.equals(r5, "video/hevc") != false) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0200, code lost:
        if (com.google.android.gms.internal.ads.zzay.zzg(r11.zzk, "video/hevc") == false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0203, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x020b, code lost:
        if (((r20 & 126) >> 1) != 39) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x020d, code lost:
        r4 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0210, code lost:
        r28 = r4;
        r21 = r7;
        r7 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0216, code lost:
        r31.zzG = r4;
        r8.zzr(r12, r3);
        r31.zzD += r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0220, code lost:
        if (r3 <= 0) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0224, code lost:
        if (r31.zzF != false) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x022d, code lost:
        if (com.google.android.gms.internal.ads.zzfs.zzj(r13, 4, r3, r2.zzg) == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x022f, code lost:
        r31.zzF = r26;
        r7 = r21;
        r4 = r28;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x023b, code lost:
        r7 = r21;
        r4 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0240, code lost:
        r11 = 0;
        r26 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x024c, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x024d, code lost:
        r28 = r4;
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0254, code lost:
        if (r31.zzG == false) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0256, code lost:
        r4 = r31.zzi;
        r4.zzI(r3);
        r32.zzi(r4.zzN(), 0, r31.zzE);
        r8.zzr(r4, r31.zzE);
        r3 = r31.zzE;
        r5 = com.google.android.gms.internal.ads.zzfs.zzc(r4.zzN(), r4.zzd());
        r4.zzL(0);
        r4.zzK(r5);
        r5 = r2.zzg.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0283, code lost:
        if (r5 != (-1)) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0285, code lost:
        r5 = r31.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x028b, code lost:
        if (r5.zza() == 0) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x028d, code lost:
        r5.zze(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0291, code lost:
        r7 = r31.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0297, code lost:
        if (r7.zza() == r5) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0299, code lost:
        r7.zze(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x029c, code lost:
        r5 = r31.zzp;
        r5.zzb(r14, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02a9, code lost:
        if ((r28.zza() & 4) == 0) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02ab, code lost:
        r5.zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02af, code lost:
        r3 = r8.zzf(r32, r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02b4, code lost:
        r31.zzD += r3;
        r31.zzE -= r3;
        r7 = r21;
        r4 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02c5, code lost:
        r1 = r28.zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02cb, code lost:
        if (r31.zzF != false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02cd, code lost:
        r1 = r1 | androidx.core.view.accessibility.AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02d0, code lost:
        r22 = r1;
        r1 = r28.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02d6, code lost:
        if (r1 == null) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02d8, code lost:
        r25 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x02dd, code lost:
        r25 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02df, code lost:
        r8.zzt(r14, r22, r31.zzC, 0, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02ec, code lost:
        r1 = r31.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02f2, code lost:
        if (r1.isEmpty() != false) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02f4, code lost:
        r1 = (com.google.android.gms.internal.ads.zzait) r1.removeFirst();
        r2 = r31.zzx;
        r7 = r1.zzc;
        r31.zzx = r2 - r7;
        r2 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0305, code lost:
        if (r1.zzb == false) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0307, code lost:
        r2 = r2 + r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0309, code lost:
        r4 = r2;
        r1 = r31.zzI;
        r2 = r1.length;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x030e, code lost:
        if (r10 >= r2) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0310, code lost:
        r1[r10].zzt(r4, 1, r7, r31.zzx, null);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0322, code lost:
        if (r28.zzl() != false) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0324, code lost:
        r31.zzB = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0327, code lost:
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0328, code lost:
        r31.zzr = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x032c, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009c, code lost:
        r7 = "video/avc";
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a3, code lost:
        if (r31.zzr != 3) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a5, code lost:
        r31.zzC = r4.zzb();
        r2 = r4.zzd.zza.zzg.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b7, code lost:
        if (j$.util.Objects.equals(r2, "video/avc") != false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b9, code lost:
        j$.util.Objects.equals(r2, "video/hevc");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bc, code lost:
        r31.zzF = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c2, code lost:
        if (r4.zzf >= r4.zzi) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c4, code lost:
        r32.zzk(r31.zzC);
        r1 = r4.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cd, code lost:
        if (r1 != null) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d0, code lost:
        r2 = r4.zzb;
        r3 = r2.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d6, code lost:
        if (r1 == 0) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d8, code lost:
        r3.zzM(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e1, code lost:
        if (r2.zzb(r4.zzf) == false) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e3, code lost:
        r3.zzM(r3.zzq() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ef, code lost:
        if (r4.zzl() != false) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f1, code lost:
        r31.zzB = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f3, code lost:
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fc, code lost:
        if (r4.zzd.zza.zzh != r3) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00fe, code lost:
        r31.zzC -= 8;
        r32.zzk(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0115, code lost:
        if (androidx.media3.common.MimeTypes.AUDIO_AC4.equals(r4.zzd.zza.zzg.zzo) == false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0117, code lost:
        r31.zzD = r4.zzc(r31.zzC, 7);
        r2 = r31.zzC;
        r9 = r31.zzk;
        com.google.android.gms.internal.ads.zzacr.zzc(r2, r9);
        r4.zza.zzr(r9, 7);
        r2 = r31.zzD + 7;
        r31.zzD = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0132, code lost:
        r2 = r4.zzc(r31.zzC, 0);
        r31.zzD = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x013a, code lost:
        r31.zzC += r2;
        r31.zzr = 4;
        r31.zzE = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0144, code lost:
        r2 = r4.zzd.zza;
        r8 = r4.zza;
        r14 = r4.zze();
        r9 = r2.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0150, code lost:
        if (r9 != 0) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0152, code lost:
        r2 = r31.zzD;
        r5 = r31.zzC;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0156, code lost:
        if (r2 >= r5) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0158, code lost:
        r31.zzD += r8.zzf(r32, r5 - r2, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0163, code lost:
        r28 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0167, code lost:
        r12 = r31.zzh;
        r13 = r12.zzN();
        r13[0] = 0;
        r13[r3 ? 1 : 0] = 0;
        r13[r33] = 0;
        r10 = 4 - r9;
        r26 = r3 ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017d, code lost:
        if (r31.zzD >= r31.zzC) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x017f, code lost:
        r3 = r31.zzE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0181, code lost:
        if (r3 != 0) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0186, code lost:
        if (r31.zzJ.length > 0) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018a, code lost:
        if (r31.zzF != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x018d, code lost:
        r3 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x018f, code lost:
        r3 = com.google.android.gms.internal.ads.zzfs.zzb(r2.zzg);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x019e, code lost:
        if ((r9 + r3) <= (r31.zzC - r31.zzD)) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a0, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a2, code lost:
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a4, code lost:
        r32.zzi(r13, r10, r9 + r3);
        r12.zzL(0);
        r11 = r12.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01b1, code lost:
        if (r11 < 0) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b3, code lost:
        r31.zzE = r11 - r3;
        r11 = r31.zzg;
        r11.zzL(0);
        r8.zzr(r11, 4);
        r31.zzD += 4;
        r31.zzC += r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01cc, code lost:
        if (r31.zzJ.length <= 0) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01ce, code lost:
        if (r3 <= 0) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d0, code lost:
        r11 = r2.zzg;
        r20 = r13[4];
        r5 = com.google.android.gms.internal.ads.zzfs.zza;
        r5 = r11.zzo;
        r28 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01de, code lost:
        if (j$.util.Objects.equals(r5, r7) != false) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01e6, code lost:
        if (com.google.android.gms.internal.ads.zzay.zzg(r11.zzk, r7) == false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e9, code lost:
        r21 = r7;
        r7 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ed, code lost:
        r21 = r7;
        r7 = 6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzadn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzado r32, com.google.android.gms.internal.ads.zzaej r33) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1995
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiv.zzb(com.google.android.gms.internal.ads.zzado, com.google.android.gms.internal.ads.zzaej):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        int i;
        int i2 = this.zzd;
        if ((i2 & 32) == 0) {
            zzadqVar = new zzakm(zzadqVar, this.zzc);
        }
        this.zzH = zzadqVar;
        zzj();
        zzaet[] zzaetVarArr = new zzaet[2];
        this.zzI = zzaetVarArr;
        int i3 = 100;
        int i4 = 0;
        if ((i2 & 4) != 0) {
            zzaetVarArr[0] = this.zzH.zzw(100, 5);
            i = 1;
            i3 = 101;
        } else {
            i = 0;
        }
        zzaet[] zzaetVarArr2 = (zzaet[]) zzeu.zzQ(this.zzI, i);
        this.zzI = zzaetVarArr2;
        for (zzaet zzaetVar : zzaetVarArr2) {
            zzaetVar.zzm(zzb);
        }
        List list = this.zze;
        this.zzJ = new zzaet[list.size()];
        while (i4 < this.zzJ.length) {
            zzaet zzw = this.zzH.zzw(i3, 3);
            zzw.zzm((zzz) list.get(i4));
            this.zzJ[i4] = zzw;
            i4++;
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        SparseArray sparseArray = this.zzf;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            ((zzaiu) sparseArray.valueAt(i)).zzi();
        }
        this.zzo.clear();
        this.zzx = 0;
        this.zzp.zzc();
        this.zzy = j2;
        this.zzn.clear();
        zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        zzfyc zzn;
        zzaeq zza2 = zzajg.zza(zzadoVar);
        if (zza2 != null) {
            zzn = zzfyc.zzo(zza2);
        } else {
            zzn = zzfyc.zzn();
        }
        this.zzq = zzn;
        if (zza2 == null) {
            return true;
        }
        return false;
    }

    public zzaiv(zzakj zzakjVar, int i, @Nullable zzer zzerVar, @Nullable zzajh zzajhVar, List list, @Nullable zzaet zzaetVar) {
        this.zzc = zzakjVar;
        this.zzd = i;
        this.zze = Collections.unmodifiableList(list);
        this.zzl = new zzagk();
        this.zzm = new zzek(16);
        this.zzg = new zzek(zzfs.zza);
        this.zzh = new zzek(6);
        this.zzi = new zzek();
        byte[] bArr = new byte[16];
        this.zzj = bArr;
        this.zzk = new zzek(bArr);
        this.zzn = new ArrayDeque();
        this.zzo = new ArrayDeque();
        this.zzf = new SparseArray();
        this.zzq = zzfyc.zzn();
        this.zzz = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzA = -9223372036854775807L;
        this.zzH = zzadq.zza;
        this.zzI = new zzaet[0];
        this.zzJ = new zzaet[0];
        this.zzp = new zzfw(new zzfv() { // from class: com.google.android.gms.internal.ads.zzais
            @Override // com.google.android.gms.internal.ads.zzfv
            public final void zza(long j, zzek zzekVar) {
                zzada.zza(j, zzekVar, zzaiv.this.zzJ);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
