package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfpr {
    private static final Object zza = new Object();
    private final Context zzb;
    private final SharedPreferences zzc;
    private final String zzd;
    private final zzfoy zze;
    private boolean zzf;

    public zzfpr(@NonNull Context context, @NonNull int i, @NonNull zzfoy zzfoyVar, boolean z) {
        this.zzf = false;
        this.zzb = context;
        this.zzd = Integer.toString(i - 1);
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        this.zze = zzfoyVar;
        this.zzf = z;
    }

    private final File zze(@NonNull String str) {
        return new File(new File(this.zzb.getDir("pccache", 0), this.zzd), str);
    }

    private static String zzf(@NonNull zzayg zzaygVar) {
        zzayh zzd = zzayj.zzd();
        zzd.zze(zzaygVar.zzc().zzk());
        zzd.zza(zzaygVar.zzc().zzj());
        zzd.zzb(zzaygVar.zzc().zza());
        zzd.zzd(zzaygVar.zzc().zzc());
        zzd.zzc(zzaygVar.zzc().zzb());
        return Hex.bytesToStringLowercase(((zzayj) zzd.zzbr()).zzaV());
    }

    private final String zzg() {
        return "FBAMTD".concat(String.valueOf(this.zzd));
    }

    private final String zzh() {
        return "LATMTD".concat(String.valueOf(this.zzd));
    }

    private final void zzi(int i, long j) {
        this.zze.zza(i, j);
    }

    private final void zzj(int i, long j, String str) {
        this.zze.zzb(i, j, str);
    }

    @Nullable
    private final zzayj zzk(int i) {
        String string;
        zzgyc zzb;
        if (i == 1) {
            string = this.zzc.getString(zzh(), null);
        } else {
            string = this.zzc.getString(zzg(), null);
        }
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            byte[] stringToBytes = Hex.stringToBytes(string);
            zzgxk zzgxkVar = zzgxk.zzb;
            zzgxk zzv = zzgxk.zzv(stringToBytes, 0, stringToBytes.length);
            if (this.zzf) {
                zzb = zzgyc.zza();
            } else {
                zzb = zzgyc.zzb();
            }
            return zzayj.zzi(zzv, zzb);
        } catch (zzgzh unused) {
            return null;
        } catch (NullPointerException unused2) {
            zzi(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            zzi(2032, currentTimeMillis);
            return null;
        }
    }

    public final boolean zza(@NonNull zzayg zzaygVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                if (!zzfpl.zze(new File(zze(zzaygVar.zzc().zzk()), "pcbc"), zzaygVar.zzd().zzA())) {
                    zzi(4020, currentTimeMillis);
                    return false;
                }
                String zzf = zzf(zzaygVar);
                SharedPreferences.Editor edit = this.zzc.edit();
                edit.putString(zzh(), zzf);
                boolean commit = edit.commit();
                if (commit) {
                    zzi(5015, currentTimeMillis);
                } else {
                    zzi(4021, currentTimeMillis);
                }
                return commit;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzb(@NonNull zzayg zzaygVar, @Nullable zzfpq zzfpqVar) {
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzayj zzk = zzk(1);
                String zzk2 = zzaygVar.zzc().zzk();
                if (zzk != null && zzk.zzk().equals(zzk2)) {
                    zzi(4014, currentTimeMillis);
                    return false;
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                File zze = zze(zzk2);
                if (zze.exists()) {
                    String str = "1";
                    if (true != zze.isDirectory()) {
                        str = "0";
                    }
                    String str2 = "1";
                    if (true != zze.isFile()) {
                        str2 = "0";
                    }
                    zzj(4023, currentTimeMillis2, "d:" + str + ",f:" + str2);
                    zzi(4015, currentTimeMillis2);
                } else if (!zze.mkdirs()) {
                    String str3 = "1";
                    if (true != zze.canWrite()) {
                        str3 = "0";
                    }
                    zzj(4024, currentTimeMillis2, "cw:".concat(str3));
                    zzi(4015, currentTimeMillis2);
                    return false;
                }
                File zze2 = zze(zzk2);
                File file = new File(zze2, "pcam.jar");
                File file2 = new File(zze2, "pcbc");
                if (!zzfpl.zze(file, zzaygVar.zzf().zzA())) {
                    zzi(4016, currentTimeMillis);
                    return false;
                } else if (!zzfpl.zze(file2, zzaygVar.zzd().zzA())) {
                    zzi(4017, currentTimeMillis);
                    return false;
                } else if (zzfpqVar != null && !zzfpqVar.zza(file)) {
                    zzi(4018, currentTimeMillis);
                    zzfpl.zzd(zze2);
                    return false;
                } else {
                    String zzf = zzf(zzaygVar);
                    long currentTimeMillis3 = System.currentTimeMillis();
                    SharedPreferences sharedPreferences = this.zzc;
                    String string = sharedPreferences.getString(zzh(), null);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(zzh(), zzf);
                    if (string != null) {
                        edit.putString(zzg(), string);
                    }
                    if (!edit.commit()) {
                        zzi(4019, currentTimeMillis3);
                        return false;
                    }
                    HashSet hashSet = new HashSet();
                    zzayj zzk3 = zzk(1);
                    if (zzk3 != null) {
                        hashSet.add(zzk3.zzk());
                    }
                    zzayj zzk4 = zzk(2);
                    if (zzk4 != null) {
                        hashSet.add(zzk4.zzk());
                    }
                    for (File file3 : new File(this.zzb.getDir("pccache", 0), this.zzd).listFiles()) {
                        if (!hashSet.contains(file3.getName())) {
                            zzfpl.zzd(file3);
                        }
                    }
                    zzi(5014, currentTimeMillis);
                    return true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final zzfpj zzc(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzayj zzk = zzk(1);
                if (zzk == null) {
                    zzi(4022, currentTimeMillis);
                    return null;
                }
                File zze = zze(zzk.zzk());
                File file = new File(zze, "pcam.jar");
                if (!file.exists()) {
                    file = new File(zze, "pcam");
                }
                File file2 = new File(zze, "pcbc");
                File file3 = new File(zze, "pcopt");
                zzi(5016, currentTimeMillis);
                return new zzfpj(zzk, file, file2, file3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzayj zzk = zzk(1);
                if (zzk == null) {
                    zzi(4025, currentTimeMillis);
                    return false;
                }
                File zze = zze(zzk.zzk());
                if (!new File(zze, "pcam.jar").exists()) {
                    zzi(4026, currentTimeMillis);
                    return false;
                } else if (!new File(zze, "pcbc").exists()) {
                    zzi(4027, currentTimeMillis);
                    return false;
                } else {
                    zzi(5019, currentTimeMillis);
                    return true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
