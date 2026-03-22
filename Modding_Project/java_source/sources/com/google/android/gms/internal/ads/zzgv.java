package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgv extends zzfz {
    @Nullable
    private RandomAccessFile zza;
    @Nullable
    private Uri zzb;
    private long zzc;
    private boolean zzd;

    public zzgv() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) throws zzgu {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzc;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.zza;
            String str = zzeu.zza;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.zzc -= read;
                zzg(read);
            }
            return read;
        } catch (IOException e) {
            throw new zzgu(e, 2000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws zzgu {
        Uri uri = zzglVar.zza;
        this.zzb = uri;
        zzi(zzglVar);
        int i = 2006;
        try {
            String path = uri.getPath();
            if (path != null) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
                this.zza = randomAccessFile;
                try {
                    long j = zzglVar.zze;
                    randomAccessFile.seek(j);
                    long j2 = zzglVar.zzf;
                    if (j2 == -1) {
                        j2 = this.zza.length() - j;
                    }
                    this.zzc = j2;
                    if (j2 >= 0) {
                        this.zzd = true;
                        zzj(zzglVar);
                        return this.zzc;
                    }
                    throw new zzgu(null, null, 2008);
                } catch (IOException e) {
                    throw new zzgu(e, 2000);
                }
            }
            throw null;
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                if (!(e2.getCause() instanceof ErrnoException) || ((ErrnoException) e2.getCause()).errno != OsConstants.EACCES) {
                    i = 2005;
                }
                throw new zzgu(e2, i);
            }
            throw new zzgu(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e2, 1004);
        } catch (SecurityException e3) {
            throw new zzgu(e3, 2006);
        } catch (RuntimeException e4) {
            throw new zzgu(e4, 2000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    @Nullable
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() throws zzgu {
        this.zzb = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.zza;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.zza = null;
                if (this.zzd) {
                    this.zzd = false;
                    zzh();
                }
            } catch (IOException e) {
                throw new zzgu(e, 2000);
            }
        } catch (Throwable th) {
            this.zza = null;
            if (this.zzd) {
                this.zzd = false;
                zzh();
            }
            throw th;
        }
    }
}
