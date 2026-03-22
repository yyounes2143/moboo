package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgn implements zzgg {
    private final Context zza;
    private final List zzb = new ArrayList();
    private final zzgg zzc;
    @Nullable
    private zzgg zzd;
    @Nullable
    private zzgg zze;
    @Nullable
    private zzgg zzf;
    @Nullable
    private zzgg zzg;
    @Nullable
    private zzgg zzh;
    @Nullable
    private zzgg zzi;
    @Nullable
    private zzgg zzj;
    @Nullable
    private zzgg zzk;

    public zzgn(Context context, zzgg zzggVar) {
        this.zza = context.getApplicationContext();
        this.zzc = zzggVar;
    }

    private final zzgg zzg() {
        if (this.zze == null) {
            zzfy zzfyVar = new zzfy(this.zza);
            this.zze = zzfyVar;
            zzh(zzfyVar);
        }
        return this.zze;
    }

    private final void zzh(zzgg zzggVar) {
        int i = 0;
        while (true) {
            List list = this.zzb;
            if (i < list.size()) {
                zzggVar.zzf((zzhg) list.get(i));
                i++;
            } else {
                return;
            }
        }
    }

    private static final void zzi(@Nullable zzgg zzggVar, zzhg zzhgVar) {
        if (zzggVar != null) {
            zzggVar.zzf(zzhgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        zzgg zzggVar = this.zzk;
        zzggVar.getClass();
        return zzggVar.zza(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final long zzb(zzgl zzglVar) throws IOException {
        boolean z;
        zzgg zzggVar;
        if (this.zzk == null) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        Uri uri = zzglVar.zza;
        String scheme = uri.getScheme();
        String str = zzeu.zza;
        String scheme2 = uri.getScheme();
        if (!TextUtils.isEmpty(scheme2) && !Objects.equals(scheme2, "file")) {
            if ("asset".equals(scheme)) {
                this.zzk = zzg();
            } else if ("content".equals(scheme)) {
                if (this.zzf == null) {
                    zzgd zzgdVar = new zzgd(this.zza);
                    this.zzf = zzgdVar;
                    zzh(zzgdVar);
                }
                this.zzk = this.zzf;
            } else if ("rtmp".equals(scheme)) {
                if (this.zzg == null) {
                    try {
                        zzgg zzggVar2 = (zzgg) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                        this.zzg = zzggVar2;
                        zzh(zzggVar2);
                    } catch (ClassNotFoundException unused) {
                        zzdx.zzf("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e) {
                        throw new RuntimeException("Error instantiating RTMP extension", e);
                    }
                    if (this.zzg == null) {
                        this.zzg = this.zzc;
                    }
                }
                this.zzk = this.zzg;
            } else if ("udp".equals(scheme)) {
                if (this.zzh == null) {
                    zzhi zzhiVar = new zzhi(2000);
                    this.zzh = zzhiVar;
                    zzh(zzhiVar);
                }
                this.zzk = this.zzh;
            } else if ("data".equals(scheme)) {
                if (this.zzi == null) {
                    zzge zzgeVar = new zzge();
                    this.zzi = zzgeVar;
                    zzh(zzgeVar);
                }
                this.zzk = this.zzi;
            } else {
                if (!"rawresource".equals(scheme) && !"android.resource".equals(scheme)) {
                    zzggVar = this.zzc;
                } else {
                    if (this.zzj == null) {
                        zzhe zzheVar = new zzhe(this.zza);
                        this.zzj = zzheVar;
                        zzh(zzheVar);
                    }
                    zzggVar = this.zzj;
                }
                this.zzk = zzggVar;
            }
        } else {
            String path = uri.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.zzk = zzg();
            } else {
                if (this.zzd == null) {
                    zzgv zzgvVar = new zzgv();
                    this.zzd = zzgvVar;
                    zzh(zzgvVar);
                }
                this.zzk = this.zzd;
            }
        }
        return this.zzk.zzb(zzglVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    @Nullable
    public final Uri zzc() {
        zzgg zzggVar = this.zzk;
        if (zzggVar == null) {
            return null;
        }
        return zzggVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzd() throws IOException {
        zzgg zzggVar = this.zzk;
        if (zzggVar != null) {
            try {
                zzggVar.zzd();
            } finally {
                this.zzk = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final Map zze() {
        zzgg zzggVar = this.zzk;
        if (zzggVar == null) {
            return Collections.EMPTY_MAP;
        }
        return zzggVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzf(zzhg zzhgVar) {
        zzhgVar.getClass();
        this.zzc.zzf(zzhgVar);
        this.zzb.add(zzhgVar);
        zzi(this.zzd, zzhgVar);
        zzi(this.zze, zzhgVar);
        zzi(this.zzf, zzhgVar);
        zzi(this.zzg, zzhgVar);
        zzi(this.zzh, zzhgVar);
        zzi(this.zzi, zzhgVar);
        zzi(this.zzj, zzhgVar);
    }
}
