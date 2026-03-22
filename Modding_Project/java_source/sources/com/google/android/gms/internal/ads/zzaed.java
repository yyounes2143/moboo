package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaed {
    private final zzek zza = new zzek(10);

    @Nullable
    public final zzav zza(zzado zzadoVar, @Nullable zzagu zzaguVar) throws IOException {
        zzav zzavVar = null;
        int i = 0;
        while (true) {
            try {
                zzek zzekVar = this.zza;
                zzadoVar.zzh(zzekVar.zzN(), 0, 10);
                zzekVar.zzL(0);
                if (zzekVar.zzo() != 4801587) {
                    break;
                }
                zzekVar.zzM(3);
                int zzl = zzekVar.zzl();
                int i2 = zzl + 10;
                if (zzavVar == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(zzekVar.zzN(), 0, bArr, 0, 10);
                    zzadoVar.zzh(bArr, 10, zzl);
                    zzavVar = zzagw.zza(bArr, i2, zzaguVar, new zzagi());
                } else {
                    zzadoVar.zzg(zzl);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        zzadoVar.zzj();
        zzadoVar.zzg(i);
        return zzavVar;
    }
}
