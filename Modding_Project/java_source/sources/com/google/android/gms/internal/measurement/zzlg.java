package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzlg extends zzlf {
    protected final byte[] zza;

    public zzlg(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzlh) || zzc() != ((zzlh) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (obj instanceof zzlg) {
            zzlg zzlgVar = (zzlg) obj;
            int zzi = zzi();
            int zzi2 = zzlgVar.zzi();
            if (zzi != 0 && zzi2 != 0 && zzi != zzi2) {
                return false;
            }
            int zzc = zzc();
            if (zzc <= zzlgVar.zzc()) {
                if (zzc <= zzlgVar.zzc()) {
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzlgVar.zza;
                    zzlgVar.zzd();
                    int i = 0;
                    int i2 = 0;
                    while (i < zzc) {
                        if (bArr[i] != bArr2[i2]) {
                            return false;
                        }
                        i++;
                        i2++;
                    }
                    return true;
                }
                int zzc2 = zzlgVar.zzc();
                StringBuilder sb = new StringBuilder(String.valueOf(zzc).length() + 27 + String.valueOf(zzc2).length());
                sb.append("Ran off end of other: 0, ");
                sb.append(zzc);
                sb.append(", ");
                sb.append(zzc2);
                throw new IllegalArgumentException(sb.toString());
            }
            int zzc3 = zzc();
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzc).length() + 18 + String.valueOf(zzc3).length());
            sb2.append("Length too large: ");
            sb2.append(zzc);
            sb2.append(zzc3);
            throw new IllegalArgumentException(sb2.toString());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public int zzc() {
        return this.zza.length;
    }

    public int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlh zze(int i, int i2) {
        int zzj = zzlh.zzj(0, i2, zzc());
        if (zzj == 0) {
            return zzlh.zzb;
        }
        return new zzlc(this.zza, 0, zzj);
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final void zzf(zzkz zzkzVar) throws IOException {
        ((zzlk) zzkzVar).zzv(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final int zzg(int i, int i2, int i3) {
        return zzmp.zzc(i, this.zza, 0, i3);
    }
}
