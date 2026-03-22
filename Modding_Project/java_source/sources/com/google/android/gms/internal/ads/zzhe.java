package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhe extends zzfz {
    private final Context zza;
    @Nullable
    private zzgl zzb;
    @Nullable
    private AssetFileDescriptor zzc;
    @Nullable
    private InputStream zzd;
    private long zze;
    private boolean zzf;

    public zzhe(Context context) {
        super(false);
        this.zza = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    private static int zzk(String str) throws zzhd {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new zzhd("Resource identifier must be an integer.", null, 1004);
        }
    }

    private static AssetFileDescriptor zzl(Context context, zzgl zzglVar) throws zzhd {
        String host;
        Resources resourcesForApplication;
        int identifier;
        Uri normalizeScheme = zzglVar.zza.normalizeScheme();
        if (TextUtils.equals("rawresource", normalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() == 1) {
                identifier = zzk(pathSegments.get(0));
            } else {
                int size = pathSegments.size();
                throw new zzhd("rawresource:// URI must have exactly one path element, found " + size);
            }
        } else if (TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            if (TextUtils.isEmpty(normalizeScheme.getHost())) {
                host = context.getPackageName();
            } else {
                host = normalizeScheme.getHost();
            }
            if (host.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(host);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new zzhd("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e, 2005);
                }
            }
            if (path.matches("\\d+")) {
                identifier = zzk(path);
            } else {
                identifier = resourcesForApplication.getIdentifier(host + ":" + path, "raw", null);
                if (identifier == 0) {
                    throw new zzhd("Resource not found.", null, 2005);
                }
            }
        } else {
            String scheme = normalizeScheme.getScheme();
            throw new zzhd("Unsupported URI scheme (" + scheme + "). Only android.resource is supported.", null, 1004);
        }
        try {
            AssetFileDescriptor openRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (openRawResourceFd != null) {
                return openRawResourceFd;
            }
            throw new zzhd("Resource is compressed: ".concat(String.valueOf(normalizeScheme)), null, 2000);
        } catch (Resources.NotFoundException e2) {
            throw new zzhd(null, e2, 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) throws zzhd {
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
                throw new zzhd(null, e, 2000);
            }
        }
        InputStream inputStream = this.zzd;
        String str = zzeu.zza;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            if (this.zze == -1) {
                return -1;
            }
            throw new zzhd("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws zzhd {
        long j;
        long min;
        this.zzb = zzglVar;
        zzi(zzglVar);
        AssetFileDescriptor zzl = zzl(this.zza, zzglVar);
        this.zzc = zzl;
        long length = zzl.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.zzc.getFileDescriptor());
        this.zzd = fileInputStream;
        int i = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i != 0) {
            try {
                if (zzglVar.zze > length) {
                    throw new zzhd(null, null, 2008);
                }
            } catch (zzhd e) {
                throw e;
            } catch (IOException e2) {
                throw new zzhd(null, e2, 2000);
            }
        }
        long startOffset = this.zzc.getStartOffset();
        long j2 = zzglVar.zze;
        long skip = fileInputStream.skip(startOffset + j2) - startOffset;
        if (skip == j2) {
            if (i == 0) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.zze = -1L;
                    j = -1;
                } else {
                    j = channel.size() - channel.position();
                    this.zze = j;
                    if (j < 0) {
                        throw new zzhd(null, null, 2008);
                    }
                }
            } else {
                long j3 = length - skip;
                this.zze = j3;
                if (j3 >= 0) {
                    j = j3;
                } else {
                    throw new zzgh(2008);
                }
            }
            long j4 = zzglVar.zzf;
            int i2 = (j4 > (-1L) ? 1 : (j4 == (-1L) ? 0 : -1));
            if (i2 != 0) {
                if (j == -1) {
                    min = j4;
                } else {
                    min = Math.min(j, j4);
                }
                this.zze = min;
            }
            this.zzf = true;
            zzj(zzglVar);
            if (i2 != 0) {
                return j4;
            }
            return this.zze;
        }
        throw new zzhd(null, null, 2008);
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    @Nullable
    public final Uri zzc() {
        zzgl zzglVar = this.zzb;
        if (zzglVar != null) {
            return zzglVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() throws zzhd {
        this.zzb = null;
        try {
            try {
                InputStream inputStream = this.zzd;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor = this.zzc;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                } catch (IOException e) {
                    throw new zzhd(null, e, 2000);
                }
            } finally {
                this.zzc = null;
                if (this.zzf) {
                    this.zzf = false;
                    zzh();
                }
            }
        } catch (IOException e2) {
            throw new zzhd(null, e2, 2000);
        }
    }
}
