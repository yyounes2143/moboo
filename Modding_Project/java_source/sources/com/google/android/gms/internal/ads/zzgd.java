package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgd extends zzfz {
    private final ContentResolver zza;
    @Nullable
    private Uri zzb;
    @Nullable
    private AssetFileDescriptor zzc;
    @Nullable
    private FileInputStream zzd;
    private long zze;
    private boolean zzf;

    public zzgd(Context context) {
        super(false);
        this.zza = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) throws zzgc {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zze;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzgc(e, 2000);
            }
        }
        FileInputStream fileInputStream = this.zzd;
        String str = zzeu.zza;
        int read = fileInputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws zzgc {
        int i;
        int i2;
        AssetFileDescriptor openAssetFileDescriptor;
        long j;
        long min;
        try {
            try {
                Uri normalizeScheme = zzglVar.zza.normalizeScheme();
                this.zzb = normalizeScheme;
                zzi(zzglVar);
                if (Objects.equals(normalizeScheme.getScheme(), "content")) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = this.zza.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = this.zza.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.zzc = openAssetFileDescriptor;
                if (openAssetFileDescriptor != null) {
                    long length = openAssetFileDescriptor.getLength();
                    FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                    this.zzd = fileInputStream;
                    int i3 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                    if (i3 != 0 && zzglVar.zze > length) {
                        throw new zzgc(null, 2008);
                    }
                    long startOffset = openAssetFileDescriptor.getStartOffset();
                    long j2 = zzglVar.zze;
                    long skip = fileInputStream.skip(startOffset + j2) - startOffset;
                    if (skip == j2) {
                        if (i3 == 0) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size == 0) {
                                this.zze = -1L;
                                j = -1;
                            } else {
                                j = size - channel.position();
                                this.zze = j;
                                if (j < 0) {
                                    throw new zzgc(null, 2008);
                                }
                            }
                        } else {
                            j = length - skip;
                            this.zze = j;
                            if (j < 0) {
                                throw new zzgc(null, 2008);
                            }
                        }
                        long j3 = zzglVar.zzf;
                        int i4 = (j3 > (-1L) ? 1 : (j3 == (-1L) ? 0 : -1));
                        if (i4 != 0) {
                            if (j == -1) {
                                min = j3;
                            } else {
                                min = Math.min(j, j3);
                            }
                            this.zze = min;
                        }
                        this.zzf = true;
                        zzj(zzglVar);
                        if (i4 != 0) {
                            return j3;
                        }
                        return this.zze;
                    }
                    throw new zzgc(null, 2008);
                }
                i = 2000;
                try {
                    throw new zzgc(new IOException("Could not open file descriptor for: " + String.valueOf(normalizeScheme)), 2000);
                } catch (IOException e) {
                    e = e;
                    if (true != (e instanceof FileNotFoundException)) {
                        i2 = i;
                    } else {
                        i2 = 2005;
                    }
                    throw new zzgc(e, i2);
                }
            } catch (zzgc e2) {
                throw e2;
            }
        } catch (IOException e3) {
            e = e3;
            i = 2000;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    @Nullable
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() throws zzgc {
        this.zzb = null;
        try {
            try {
                FileInputStream fileInputStream = this.zzd;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor = this.zzc;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                } catch (IOException e) {
                    throw new zzgc(e, 2000);
                }
            } finally {
                this.zzc = null;
                if (this.zzf) {
                    this.zzf = false;
                    zzh();
                }
            }
        } catch (IOException e2) {
            throw new zzgc(e2, 2000);
        }
    }
}
