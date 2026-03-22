package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzard implements zzare {
    private static final Logger zzb = Logger.getLogger(zzard.class.getName());
    final ThreadLocal zza = new zzarc(this);

    public abstract zzarh zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzare
    public final zzarh zzb(zzhfh zzhfhVar, zzari zzariVar) throws IOException {
        int zza;
        long j;
        String str;
        long zzb2 = zzhfhVar.zzb();
        ThreadLocal threadLocal = this.zza;
        ((ByteBuffer) threadLocal.get()).rewind().limit(8);
        do {
            zza = zzhfhVar.zza((ByteBuffer) threadLocal.get());
            if (zza == 8) {
                ((ByteBuffer) threadLocal.get()).rewind();
                long zze = zzarg.zze((ByteBuffer) threadLocal.get());
                byte[] bArr = null;
                if (zze < 8 && zze > 1) {
                    Logger logger = zzb;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(zze);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) threadLocal.get()).get(bArr2);
                try {
                    String str2 = new String(bArr2, "ISO-8859-1");
                    if (zze == 1) {
                        ThreadLocal threadLocal2 = this.zza;
                        ((ByteBuffer) threadLocal2.get()).limit(16);
                        zzhfhVar.zza((ByteBuffer) threadLocal2.get());
                        ((ByteBuffer) threadLocal2.get()).position(8);
                        j = zzarg.zzf((ByteBuffer) threadLocal2.get()) - 16;
                    } else if (zze == 0) {
                        j = zzhfhVar.zzc() - zzhfhVar.zzb();
                    } else {
                        j = zze - 8;
                    }
                    if ("uuid".equals(str2)) {
                        ThreadLocal threadLocal3 = this.zza;
                        ((ByteBuffer) threadLocal3.get()).limit(((ByteBuffer) threadLocal3.get()).limit() + 16);
                        zzhfhVar.zza((ByteBuffer) threadLocal3.get());
                        bArr = new byte[16];
                        for (int position = ((ByteBuffer) threadLocal3.get()).position() - 16; position < ((ByteBuffer) threadLocal3.get()).position(); position++) {
                            bArr[position - (((ByteBuffer) threadLocal3.get()).position() - 16)] = ((ByteBuffer) threadLocal3.get()).get(position);
                        }
                        j -= 16;
                    }
                    long j2 = j;
                    if (zzariVar instanceof zzarh) {
                        str = ((zzarh) zzariVar).zza();
                    } else {
                        str = "";
                    }
                    zzarh zza2 = zza(str2, bArr, str);
                    ThreadLocal threadLocal4 = this.zza;
                    ((ByteBuffer) threadLocal4.get()).rewind();
                    zza2.zzb(zzhfhVar, (ByteBuffer) threadLocal4.get(), j2, this);
                    return zza2;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (zza >= 0);
        zzhfhVar.zze(zzb2);
        throw new EOFException();
    }
}
