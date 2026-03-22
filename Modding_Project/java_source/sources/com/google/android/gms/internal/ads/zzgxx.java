package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgxx extends zzgxb {
    private static final Logger zza = Logger.getLogger(zzgxx.class.getName());
    private static final boolean zzb = zzhbp.zzA();
    public static final /* synthetic */ int zzf = 0;
    zzgxy zze;

    private zzgxx() {
        throw null;
    }

    public static int zzA(zzhad zzhadVar, zzhaw zzhawVar) {
        int zzaM = ((zzgwt) zzhadVar).zzaM(zzhawVar);
        return zzD(zzaM) + zzaM;
    }

    public static int zzB(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    public static int zzC(String str) {
        int length;
        try {
            length = zzhbu.zze(str);
        } catch (zzhbt unused) {
            length = str.getBytes(zzgzf.zza).length;
        }
        return zzD(length) + length;
    }

    public static int zzD(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzE(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    @Deprecated
    public static int zzy(int i, zzhad zzhadVar, zzhaw zzhawVar) {
        int zzD = zzD(i << 3);
        return zzD + zzD + ((zzgwt) zzhadVar).zzaM(zzhawVar);
    }

    public static int zzz(zzhad zzhadVar) {
        int zzaY = zzhadVar.zzaY();
        return zzD(zzaY) + zzaY;
    }

    public final void zzF() {
        if (zzb() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final void zzG(String str, zzhbt zzhbtVar) throws IOException {
        zza.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhbtVar);
        byte[] bytes = str.getBytes(zzgzf.zza);
        try {
            int length = bytes.length;
            zzu(length);
            zza(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgxu(e);
        }
    }

    public abstract void zzK() throws IOException;

    public abstract void zzL(byte b) throws IOException;

    public abstract void zzM(int i, boolean z) throws IOException;

    public abstract void zzN(int i, zzgxk zzgxkVar) throws IOException;

    @Override // com.google.android.gms.internal.ads.zzgxb
    public abstract void zza(byte[] bArr, int i, int i2) throws IOException;

    public abstract int zzb();

    public abstract void zzh(int i, int i2) throws IOException;

    public abstract void zzi(int i) throws IOException;

    public abstract void zzj(int i, long j) throws IOException;

    public abstract void zzk(long j) throws IOException;

    public abstract void zzl(int i, int i2) throws IOException;

    public abstract void zzm(int i) throws IOException;

    public abstract void zzn(int i, zzhad zzhadVar, zzhaw zzhawVar) throws IOException;

    public abstract void zzo(int i, zzhad zzhadVar) throws IOException;

    public abstract void zzp(int i, zzgxk zzgxkVar) throws IOException;

    public abstract void zzq(int i, String str) throws IOException;

    public abstract void zzs(int i, int i2) throws IOException;

    public abstract void zzt(int i, int i2) throws IOException;

    public abstract void zzu(int i) throws IOException;

    public abstract void zzv(int i, long j) throws IOException;

    public abstract void zzw(long j) throws IOException;

    public /* synthetic */ zzgxx(zzgxw zzgxwVar) {
    }
}
