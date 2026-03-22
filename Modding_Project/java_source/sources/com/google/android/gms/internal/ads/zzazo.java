package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzazo {
    private final Object zza = new Object();
    private zzazm zzb = null;
    private boolean zzc = false;

    @Nullable
    public final Activity zza() {
        synchronized (this.zza) {
            try {
                zzazm zzazmVar = this.zzb;
                if (zzazmVar != null) {
                    return zzazmVar.zza();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final Context zzb() {
        synchronized (this.zza) {
            try {
                zzazm zzazmVar = this.zzb;
                if (zzazmVar != null) {
                    return zzazmVar.zzb();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc(zzazn zzaznVar) {
        synchronized (this.zza) {
            try {
                if (this.zzb == null) {
                    this.zzb = new zzazm();
                }
                this.zzb.zzf(zzaznVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(Context context) {
        Application application;
        synchronized (this.zza) {
            try {
                if (!this.zzc) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    if (applicationContext instanceof Application) {
                        application = (Application) applicationContext;
                    } else {
                        application = null;
                    }
                    if (application == null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Can not cast Context to Application");
                        return;
                    }
                    if (this.zzb == null) {
                        this.zzb = new zzazm();
                    }
                    this.zzb.zzg(application, context);
                    this.zzc = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze(zzazn zzaznVar) {
        synchronized (this.zza) {
            try {
                zzazm zzazmVar = this.zzb;
                if (zzazmVar == null) {
                    return;
                }
                zzazmVar.zzh(zzaznVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
