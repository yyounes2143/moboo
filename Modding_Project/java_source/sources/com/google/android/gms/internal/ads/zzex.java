package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.container.MdtaMetadataEntry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzex implements zzau {
    public final String zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzex(String str, byte[] bArr, int i, int i2) {
        char c;
        byte b;
        switch (str.hashCode()) {
            case -1949883051:
                if (str.equals(MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -269399509:
                if (str.equals("auxiliary.tracks.interleaved")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1011693540:
                if (str.equals("auxiliary.tracks.length")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1098277265:
                if (str.equals("auxiliary.tracks.offset")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2002123038:
                if (str.equals("auxiliary.tracks.map")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1 && c != 2) {
                if (c != 3) {
                    if (c == 4) {
                        if (i2 == 75) {
                            if (bArr.length == 1 && ((b = bArr[0]) == 0 || b == 1)) {
                                i2 = 75;
                                zzdc.zzd(r4);
                            } else {
                                i2 = 75;
                            }
                        }
                        r4 = false;
                        zzdc.zzd(r4);
                    }
                } else {
                    zzdc.zzd(i2 == 0);
                }
            } else {
                if (i2 == 78) {
                    if (bArr.length == 8) {
                        i2 = 78;
                        zzdc.zzd(r4);
                    } else {
                        i2 = 78;
                    }
                }
                r4 = false;
                zzdc.zzd(r4);
            }
        } else {
            if (i2 == 23) {
                if (bArr.length == 4) {
                    i2 = 23;
                    zzdc.zzd(r4);
                } else {
                    i2 = 23;
                }
            }
            r4 = false;
            zzdc.zzd(r4);
        }
        this.zza = str;
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzex.class == obj.getClass()) {
            zzex zzexVar = (zzex) obj;
            if (this.zza.equals(zzexVar.zza) && Arrays.equals(this.zzb, zzexVar.zzb) && this.zzc == zzexVar.zzc && this.zzd == zzexVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.zza.hashCode() + 527) * 31) + Arrays.hashCode(this.zzb)) * 31) + this.zzc) * 31) + this.zzd;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0087 A[LOOP:0: B:23:0x0084->B:25:0x0087, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r6 = this;
            r0 = 1
            int r1 = r6.zzd
            r2 = 0
            if (r1 == 0) goto L57
            if (r1 == r0) goto L50
            r3 = 23
            if (r1 == r3) goto L41
            r3 = 67
            if (r1 == r3) goto L36
            r3 = 75
            if (r1 == r3) goto L2a
            r3 = 78
            if (r1 == r3) goto L19
            goto L79
        L19:
            byte[] r0 = r6.zzb
            com.google.android.gms.internal.ads.zzek r1 = new com.google.android.gms.internal.ads.zzek
            r1.<init>(r0)
            long r0 = r1.zzw()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto La7
        L2a:
            byte[] r0 = r6.zzb
            r0 = r0[r2]
            r0 = r0 & 255(0xff, float:3.57E-43)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto La7
        L36:
            byte[] r0 = r6.zzb
            int r0 = com.google.android.gms.internal.ads.zzgbf.zzd(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto La7
        L41:
            byte[] r0 = r6.zzb
            int r0 = com.google.android.gms.internal.ads.zzgbf.zzd(r0)
            float r0 = java.lang.Float.intBitsToFloat(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto La7
        L50:
            byte[] r0 = r6.zzb
            java.lang.String r0 = com.google.android.gms.internal.ads.zzeu.zzB(r0)
            goto La7
        L57:
            java.lang.String r1 = r6.zza
            java.lang.String r3 = "auxiliary.tracks.map"
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L79
            java.util.List r0 = r6.zzb()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "track types = "
            r1.append(r2)
            java.lang.String r2 = ","
            com.google.android.gms.internal.ads.zzfuu.zzb(r1, r0, r2)
            java.lang.String r0 = r1.toString()
            goto La7
        L79:
            byte[] r1 = r6.zzb
            java.lang.String r3 = com.google.android.gms.internal.ads.zzeu.zza
            int r3 = r1.length
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r3 = r3 + r3
            r4.<init>(r3)
        L84:
            int r3 = r1.length
            if (r2 >= r3) goto La3
            r3 = r1[r2]
            int r3 = r3 >> 4
            r3 = r3 & 15
            r5 = 16
            char r3 = java.lang.Character.forDigit(r3, r5)
            r4.append(r3)
            r3 = r1[r2]
            r3 = r3 & 15
            char r3 = java.lang.Character.forDigit(r3, r5)
            r4.append(r3)
            int r2 = r2 + r0
            goto L84
        La3:
            java.lang.String r0 = r4.toString()
        La7:
            java.lang.String r1 = r6.zza
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "mdta: key="
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ", value="
            r2.append(r1)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzex.toString():java.lang.String");
    }

    public final List zzb() {
        zzdc.zzg(this.zza.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte[] bArr = this.zzb;
        byte b = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b; i++) {
            arrayList.add(Integer.valueOf(bArr[i + 2]));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
