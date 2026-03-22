package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import org.checkerframework.dataflow.qual.Pure;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzadr {
    public static int zza(zzado zzadoVar, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int zzb = zzadoVar.zzb(bArr, i + i3, i2 - i3);
            if (zzb == -1) {
                break;
            }
            i3 += zzb;
        }
        return i3;
    }

    @Pure
    public static void zzb(boolean z, @Nullable String str) throws zzaz {
        if (z) {
            return;
        }
        throw zzaz.zza(str, null);
    }

    public static boolean zzc(zzado zzadoVar, byte[] bArr, int i, int i2, boolean z) throws IOException {
        try {
            return zzadoVar.zzm(bArr, 0, i2, z);
        } catch (EOFException e) {
            if (z) {
                return false;
            }
            throw e;
        }
    }

    public static boolean zzd(zzado zzadoVar, byte[] bArr, int i, int i2) throws IOException {
        try {
            zzadoVar.zzi(bArr, i, i2);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean zze(zzado zzadoVar, int i) throws IOException {
        try {
            zzadoVar.zzk(i);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
