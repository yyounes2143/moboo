package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.IOException;
import java.math.RoundingMode;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgao extends zzgap {
    private volatile zzgap zza;
    final zzgak zzb;
    final Character zzc;

    public zzgao(zzgak zzgakVar, Character ch) {
        this.zzb = zzgakVar;
        boolean z = true;
        if (ch != null && zzgakVar.zze('=')) {
            z = false;
        }
        zzfvc.zzi(z, "Padding character %s was already in alphabet", ch);
        this.zzc = ch;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgao) {
            zzgao zzgaoVar = (zzgao) obj;
            if (this.zzb.equals(zzgaoVar.zzb) && Objects.equals(this.zzc, zzgaoVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Character ch = this.zzc;
        return Objects.hashCode(ch) ^ this.zzb.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        zzgak zzgakVar = this.zzb;
        sb.append(zzgakVar);
        if (8 % zzgakVar.zzb != 0) {
            Character ch = this.zzc;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public int zza(byte[] bArr, CharSequence charSequence) throws zzgan {
        int i;
        CharSequence zzg = zzg(charSequence);
        int length = zzg.length();
        zzgak zzgakVar = this.zzb;
        if (zzgakVar.zzd(length)) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < zzg.length()) {
                long j = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    i = zzgakVar.zzc;
                    if (i4 >= i) {
                        break;
                    }
                    j <<= zzgakVar.zzb;
                    if (i2 + i4 < zzg.length()) {
                        j |= zzgakVar.zzb(zzg.charAt(i5 + i2));
                        i5++;
                    }
                    i4++;
                }
                int i6 = zzgakVar.zzd;
                int i7 = i5 * zzgakVar.zzb;
                int i8 = (i6 - 1) * 8;
                while (i8 >= (i6 * 8) - i7) {
                    bArr[i3] = (byte) ((j >>> i8) & 255);
                    i8 -= 8;
                    i3++;
                }
                i2 += i;
            }
            return i3;
        }
        throw new zzgan("Invalid input length " + zzg.length());
    }

    public zzgap zzb(zzgak zzgakVar, Character ch) {
        return new zzgao(zzgakVar, ch);
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public void zzc(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        zzfvc.zzk(0, i2, bArr.length);
        while (i3 < i2) {
            int i4 = this.zzb.zzd;
            zzh(appendable, bArr, i3, Math.min(i4, i2 - i3));
            i3 += i4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public final int zzd(int i) {
        return (int) (((this.zzb.zzb * i) + 7) / 8);
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public final int zze(int i) {
        zzgak zzgakVar = this.zzb;
        return zzgakVar.zzc * zzgay.zzb(i, zzgakVar.zzd, RoundingMode.CEILING);
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public final zzgap zzf() {
        zzgap zzgapVar = this.zza;
        if (zzgapVar == null) {
            zzgak zzgakVar = this.zzb;
            zzgak zzc = zzgakVar.zzc();
            if (zzc == zzgakVar) {
                zzgapVar = this;
            } else {
                zzgapVar = zzb(zzc, this.zzc);
            }
            this.zza = zzgapVar;
        }
        return zzgapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgap
    public final CharSequence zzg(CharSequence charSequence) {
        charSequence.getClass();
        if (this.zzc == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    public final void zzh(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        boolean z;
        zzfvc.zzk(i, i + i2, bArr.length);
        zzgak zzgakVar = this.zzb;
        int i3 = zzgakVar.zzd;
        int i4 = 0;
        if (i2 <= i3) {
            z = true;
        } else {
            z = false;
        }
        zzfvc.zze(z);
        long j = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            j = (j | (bArr[i + i5] & 255)) << 8;
        }
        int i6 = (i2 + 1) * 8;
        int i7 = zzgakVar.zzb;
        while (i4 < i2 * 8) {
            appendable.append(zzgakVar.zza(zzgakVar.zza & ((int) (j >>> ((i6 - i7) - i4)))));
            i4 += i7;
        }
        if (this.zzc != null) {
            while (i4 < i3 * 8) {
                appendable.append('=');
                i4 += i7;
            }
        }
    }

    public zzgao(String str, String str2, Character ch) {
        this(new zzgak(str, str2.toCharArray()), ch);
    }
}
