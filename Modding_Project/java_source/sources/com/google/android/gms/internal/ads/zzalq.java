package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.common.base.Ascii;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzalq implements zzakl {
    private final zzek zza = new zzek();
    private final boolean zzb;
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final float zzf;
    private final int zzg;

    public zzalq(List list) {
        if (list.size() == 1 && (((byte[]) list.get(0)).length == 48 || ((byte[]) list.get(0)).length == 53)) {
            byte[] bArr = (byte[]) list.get(0);
            this.zzc = bArr[24];
            this.zzd = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            this.zze = true == "Serif".equals(zzeu.zzC(bArr, 43, bArr.length + (-43))) ? "serif" : "sans-serif";
            int i = bArr[25] * Ascii.DC4;
            this.zzg = i;
            boolean z = (bArr[0] & 32) != 0;
            this.zzb = z;
            if (z) {
                this.zzf = Math.max(0.0f, Math.min(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.95f));
                return;
            } else {
                this.zzf = 0.85f;
                return;
            }
        }
        this.zzc = 0;
        this.zzd = -1;
        this.zze = "sans-serif";
        this.zzb = false;
        this.zzf = 0.85f;
        this.zzg = -1;
    }

    private static void zzb(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    private static void zzc(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            int i7 = i & 1;
            int i8 = i & 2;
            boolean z = true;
            if (i7 != 0) {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                    z = false;
                }
            } else {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
                }
                z = false;
            }
            if ((i & 4) == 0) {
                if (i7 == 0 && !z) {
                    spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
                    return;
                }
                return;
            }
            spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        String zzB;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        zzek zzekVar = this.zza;
        zzekVar.zzJ(bArr, i + i2);
        zzekVar.zzL(i);
        int i13 = 1;
        int i14 = 0;
        int i15 = 2;
        zzdc.zzd(zzekVar.zza() >= 2);
        int zzq = zzekVar.zzq();
        if (zzq == 0) {
            zzB = "";
        } else {
            int zzc = zzekVar.zzc();
            Charset zzC = zzekVar.zzC();
            int zzc2 = zzekVar.zzc() - zzc;
            if (zzC == null) {
                zzC = StandardCharsets.UTF_8;
            }
            zzB = zzekVar.zzB(zzq - zzc2, zzC);
        }
        if (zzB.isEmpty()) {
            zzdkVar.zza(new zzakd(zzfyc.zzn(), -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(zzB);
        int i16 = this.zzc;
        zzc(spannableStringBuilder, i16, 0, 0, spannableStringBuilder.length(), 16711680);
        int i17 = i16;
        int i18 = this.zzd;
        zzb(spannableStringBuilder, i18, -1, 0, spannableStringBuilder.length(), 16711680);
        int i19 = i18;
        String str = this.zze;
        int length = spannableStringBuilder.length();
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f = this.zzf;
        while (zzekVar.zza() >= 8) {
            int zzc3 = zzekVar.zzc();
            int zzg = zzekVar.zzg();
            int zzg2 = zzekVar.zzg();
            if (zzg2 == 1937013100) {
                zzdc.zzd(zzekVar.zza() >= i15 ? i13 : i14);
                int zzq2 = zzekVar.zzq();
                int i20 = i14;
                while (i20 < zzq2) {
                    zzdc.zzd(zzekVar.zza() >= 12 ? i13 : i14);
                    int zzq3 = zzekVar.zzq();
                    int zzq4 = zzekVar.zzq();
                    zzekVar.zzM(i15);
                    int i21 = zzq2;
                    int zzm = zzekVar.zzm();
                    zzekVar.zzM(i13);
                    int zzg3 = zzekVar.zzg();
                    int i22 = i13;
                    if (zzq4 > spannableStringBuilder.length()) {
                        int length2 = spannableStringBuilder.length();
                        i7 = i17;
                        StringBuilder sb = new StringBuilder();
                        i8 = i19;
                        sb.append("Truncating styl end (");
                        sb.append(zzq4);
                        sb.append(") to cueText.length() (");
                        sb.append(length2);
                        sb.append(").");
                        zzdx.zzf("Tx3gParser", sb.toString());
                        zzq4 = spannableStringBuilder.length();
                    } else {
                        i7 = i17;
                        i8 = i19;
                    }
                    if (zzq3 >= zzq4) {
                        zzdx.zzf("Tx3gParser", "Ignoring styl with start (" + zzq3 + ") >= end (" + zzq4 + ").");
                        i11 = i7;
                        i10 = i20;
                        i9 = i21;
                        i12 = i8;
                    } else {
                        i9 = i21;
                        i10 = i20;
                        int i23 = i7;
                        zzc(spannableStringBuilder, zzm, i23, zzq3, zzq4, 0);
                        i11 = i23;
                        i12 = i8;
                        zzb(spannableStringBuilder, zzg3, i12, zzq3, zzq4, 0);
                    }
                    zzq2 = i9;
                    i17 = i11;
                    i19 = i12;
                    i15 = 2;
                    i13 = i22;
                    i20 = i10 + 1;
                    i14 = 0;
                }
                i3 = i13;
                i4 = i19;
                i5 = i17;
                i6 = i15;
            } else {
                i3 = i13;
                i4 = i19;
                i5 = i17;
                if (zzg2 == 1952608120 && this.zzb) {
                    i6 = 2;
                    zzdc.zzd(zzekVar.zza() >= 2 ? i3 : 0);
                    int i24 = this.zzg;
                    String str2 = zzeu.zza;
                    f = Math.max(0.0f, Math.min(zzekVar.zzq() / i24, 0.95f));
                } else {
                    i6 = 2;
                }
            }
            zzekVar.zzL(zzc3 + zzg);
            i17 = i5;
            i15 = i6;
            i19 = i4;
            i14 = 0;
            i13 = i3;
        }
        zzcs zzcsVar = new zzcs();
        zzcsVar.zzl(spannableStringBuilder);
        zzcsVar.zze(f, 0);
        zzcsVar.zzf(0);
        zzdkVar.zza(new zzakd(zzfyc.zzo(zzcsVar.zzp()), -9223372036854775807L, -9223372036854775807L));
    }
}
