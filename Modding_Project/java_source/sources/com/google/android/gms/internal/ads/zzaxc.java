package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxc extends zzayb {
    private static final zzayc zzh = new zzayc();
    private final zzasg zzi;
    private final Context zzj;
    private final zzaug zzk;

    public zzaxc(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, Context context, zzarx zzarxVar, zzasg zzasgVar, zzaug zzaugVar) {
        super(zzawoVar, "5l2BxulTXy+0Wovy9T0xreNvMgccuxz9Mfzqj2nIzDWreku9cf/hyHYbFP2gke7n", "rfz55QLsxMWzB2XqDjYWCElC2tXCWyMh5Hq3cP2KfWk=", zzaskVar, i, 27);
        this.zzj = context;
        this.zzi = zzasgVar;
        this.zzk = zzaugVar;
    }

    private final zzaud zzc() throws IllegalAccessException, InvocationTargetException {
        int zza;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcW)).booleanValue()) {
            zza = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdb)).intValue();
        } else {
            zza = this.zzi.zza();
        }
        zzaud zzaudVar = new zzaud((String) this.zze.invoke(null, this.zzj, Boolean.FALSE, ""));
        zzaug zzaugVar = this.zzk;
        if (zzaugVar != null && zzaugVar.zza() != null) {
            try {
                str = (String) zzaugVar.zza().get(zza, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            }
            zzaudVar.zza = str;
            return zzaudVar;
        }
        str = ExifInterface.LONGITUDE_EAST;
        zzaudVar.zza = str;
        return zzaudVar;
    }

    private final String zzd() {
        try {
            zzawo zzawoVar = this.zza;
            if (zzawoVar.zzk() != null) {
                zzawoVar.zzk().get();
            }
            zzath zzc = zzawoVar.zzc();
            if (zzc != null && zzc.zzaf()) {
                return zzc.zzg();
            }
            return null;
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        int i;
        boolean z;
        String str;
        zzaud zzaudVar;
        zzaud zzaudVar2;
        zzayc zzaycVar = zzh;
        Context context = this.zzj;
        AtomicReference zza = zzaycVar.zza(context.getPackageName());
        synchronized (zza) {
            try {
                zzaud zzaudVar3 = (zzaud) zza.get();
                if (zzaudVar3 != null) {
                    if (!zzawr.zzd(zzaudVar3.zza)) {
                        if (!zzaudVar3.zza.equals(ExifInterface.LONGITUDE_EAST)) {
                            if (zzaudVar3.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                            }
                            zzaudVar2 = (zzaud) zza.get();
                        }
                    }
                }
                if (!zzawr.zzd(null)) {
                    i = 5;
                } else {
                    zzawr.zzd(null);
                    i = 3;
                }
                if (this.zzk != null) {
                    zzaudVar = zzc();
                } else {
                    if (i == 3 && !this.zzi.zzd()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Boolean valueOf = Boolean.valueOf(z);
                    Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcK);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcJ)).booleanValue()) {
                        str = zzb();
                    } else {
                        str = null;
                    }
                    if (bool.booleanValue() && this.zza.zzo() && zzawr.zzd(str)) {
                        str = zzd();
                    }
                    zzaud zzaudVar4 = new zzaud((String) this.zze.invoke(null, context, valueOf, str));
                    if (zzawr.zzd(zzaudVar4.zza) || zzaudVar4.zza.equals(ExifInterface.LONGITUDE_EAST)) {
                        int i2 = i - 1;
                        if (i2 != 3) {
                            if (i2 == 4) {
                                throw null;
                            }
                        } else {
                            String zzd = zzd();
                            if (!zzawr.zzd(zzd)) {
                                zzaudVar4.zza = zzd;
                            }
                        }
                    }
                    zzaudVar = zzaudVar4;
                }
                zza.set(zzaudVar);
                zzaudVar2 = (zzaud) zza.get();
            } finally {
            }
        }
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            if (zzaudVar2 != null) {
                try {
                    zzaskVar.zzv(zzaudVar2.zza);
                    zzaskVar.zzV(zzaudVar2.zzb);
                    zzaskVar.zzX(zzaudVar2.zzc);
                    zzaskVar.zzi(zzaudVar2.zzd);
                    zzaskVar.zzu(zzaudVar2.zze);
                } finally {
                }
            }
        }
    }

    public final String zzb() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
            byte[] zzf = zzawr.zzf((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcL));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzf)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzawr.zzf((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcM)))));
            }
            Context context = this.zzj;
            String packageName = context.getPackageName();
            this.zza.zzj();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals(ExifInterface.LATITUDE_SOUTH)) {
                return null;
            }
            final zzgds zze = zzgds.zze();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager$OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzayd
                public final void onChecksumsReady(List list) {
                    int type;
                    byte[] value;
                    zzgds zzgdsVar = zzgds.this;
                    if (list == null) {
                        zzgdsVar.zzc(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i));
                            type = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getType();
                            if (type == 8) {
                                value = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getValue();
                                zzgdsVar.zzc(zzawr.zzb(value));
                                return;
                            }
                        }
                        zzgdsVar.zzc(null);
                    } catch (Throwable unused) {
                        zzgdsVar.zzc(null);
                    }
                }
            });
            return (String) zze.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
