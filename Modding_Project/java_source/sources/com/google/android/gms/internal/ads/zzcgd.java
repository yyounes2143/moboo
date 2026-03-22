package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.CollectionUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcgd extends com.google.android.gms.ads.internal.client.zzdz {
    private final zzcbw zza;
    private final boolean zzc;
    private final boolean zzd;
    private int zze;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzed zzf;
    private boolean zzg;
    private float zzi;
    private float zzj;
    private float zzk;
    private boolean zzl;
    private boolean zzm;
    private zzbho zzn;
    private final Object zzb = new Object();
    private boolean zzh = true;

    public zzcgd(zzcbw zzcbwVar, float f, boolean z, boolean z2) {
        this.zza = zzcbwVar;
        this.zzi = f;
        this.zzc = z;
        this.zzd = z2;
    }

    public static /* synthetic */ void zzd(zzcgd zzcgdVar, int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        com.google.android.gms.ads.internal.client.zzed zzedVar;
        com.google.android.gms.ads.internal.client.zzed zzedVar2;
        com.google.android.gms.ads.internal.client.zzed zzedVar3;
        synchronized (zzcgdVar.zzb) {
            try {
                boolean z8 = zzcgdVar.zzg;
                boolean z9 = false;
                if (!z8 && i2 == 1) {
                    i2 = 1;
                    i3 = 1;
                    z3 = true;
                } else {
                    i3 = i2;
                    z3 = false;
                }
                if (i != i2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4 && i3 == 1) {
                    z5 = true;
                    i3 = 1;
                } else {
                    z5 = false;
                }
                if (z4 && i3 == 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z4 && i3 == 3) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z8 || z3) {
                    z9 = true;
                }
                zzcgdVar.zzg = z9;
                if (z3) {
                    try {
                        com.google.android.gms.ads.internal.client.zzed zzedVar4 = zzcgdVar.zzf;
                        if (zzedVar4 != null) {
                            zzedVar4.zzi();
                        }
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
                if (z5 && (zzedVar3 = zzcgdVar.zzf) != null) {
                    zzedVar3.zzh();
                }
                if (z6 && (zzedVar2 = zzcgdVar.zzf) != null) {
                    zzedVar2.zzg();
                }
                if (z7) {
                    com.google.android.gms.ads.internal.client.zzed zzedVar5 = zzcgdVar.zzf;
                    if (zzedVar5 != null) {
                        zzedVar5.zze();
                    }
                    zzcgdVar.zza.zzw();
                }
                if (z != z2 && (zzedVar = zzcgdVar.zzf) != null) {
                    zzedVar.zzf(z2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzw(final int i, final int i2, final boolean z, final boolean z2) {
        zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgc
            @Override // java.lang.Runnable
            public final void run() {
                zzcgd.zzd(zzcgd.this, i, i2, z, z2);
            }
        });
    }

    private final void zzx(String str, @Nullable Map map) {
        final HashMap hashMap;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        hashMap.put("action", str);
        zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgb
            @Override // java.lang.Runnable
            public final void run() {
                zzcgd.this.zza.zzd("pubVideoCmd", hashMap);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zze() {
        float f;
        synchronized (this.zzb) {
            f = this.zzk;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zzf() {
        float f;
        synchronized (this.zzb) {
            f = this.zzj;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zzg() {
        float f;
        synchronized (this.zzb) {
            f = this.zzi;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final int zzh() {
        int i;
        synchronized (this.zzb) {
            i = this.zze;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzed zzi() throws RemoteException {
        com.google.android.gms.ads.internal.client.zzed zzedVar;
        synchronized (this.zzb) {
            zzedVar = this.zzf;
        }
        return zzedVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzj(boolean z) {
        String str;
        if (true != z) {
            str = CampaignEx.JSON_NATIVE_VIDEO_UNMUTE;
        } else {
            str = CampaignEx.JSON_NATIVE_VIDEO_MUTE;
        }
        zzx(str, null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzk() {
        zzx(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzl() {
        zzx("play", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzm(@Nullable com.google.android.gms.ads.internal.client.zzed zzedVar) {
        synchronized (this.zzb) {
            this.zzf = zzedVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzn() {
        zzx("stop", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzo() {
        boolean z;
        Object obj = this.zzb;
        boolean zzp = zzp();
        synchronized (obj) {
            z = false;
            if (!zzp) {
                try {
                    if (this.zzm && this.zzd) {
                        z = true;
                    }
                } finally {
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzp() {
        boolean z;
        synchronized (this.zzb) {
            try {
                z = false;
                if (this.zzc && this.zzl) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzq() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzh;
        }
        return z;
    }

    public final void zzr(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.zzb) {
            try {
                z2 = true;
                if (f2 == this.zzi && f3 == this.zzk) {
                    z2 = false;
                }
                this.zzi = f2;
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmZ)).booleanValue()) {
                    this.zzj = f;
                }
                z3 = this.zzh;
                this.zzh = z;
                i2 = this.zze;
                this.zze = i;
                float f4 = this.zzk;
                this.zzk = f3;
                if (Math.abs(f3 - f4) > 1.0E-4f) {
                    this.zza.zzF().invalidate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            try {
                zzbho zzbhoVar = this.zzn;
                if (zzbhoVar != null) {
                    zzbhoVar.zze();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzw(i2, i, z3, z);
    }

    public final void zzs(com.google.android.gms.ads.internal.client.zzfw zzfwVar) {
        String str;
        String str2;
        String str3;
        Object obj = this.zzb;
        boolean z = zzfwVar.zzb;
        boolean z2 = zzfwVar.zzc;
        synchronized (obj) {
            this.zzl = z;
            this.zzm = z2;
        }
        boolean z3 = zzfwVar.zza;
        if (true != z) {
            str = "0";
        } else {
            str = "1";
        }
        String str4 = str;
        if (true != z2) {
            str2 = "0";
        } else {
            str2 = "1";
        }
        String str5 = str2;
        if (true != z3) {
            str3 = "0";
        } else {
            str3 = "1";
        }
        zzx("initialState", CollectionUtils.mapOf("muteStart", str3, "customControlsRequested", str4, "clickToExpandRequested", str5));
    }

    public final void zzt(float f) {
        synchronized (this.zzb) {
            this.zzj = f;
        }
    }

    public final void zzu() {
        boolean z;
        int i;
        synchronized (this.zzb) {
            z = this.zzh;
            i = this.zze;
            this.zze = 3;
        }
        zzw(i, 3, z, z);
    }

    public final void zzv(zzbho zzbhoVar) {
        synchronized (this.zzb) {
            this.zzn = zzbhoVar;
        }
    }
}
