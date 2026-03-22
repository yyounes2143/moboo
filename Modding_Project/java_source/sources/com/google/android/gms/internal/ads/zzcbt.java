package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import com.mbridge.msdk.foundation.entity.b;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcbt extends zzfro {
    private final SensorManager zza;
    private final Object zzb;
    private final Display zzc;
    private final float[] zzd;
    private final float[] zze;
    private float[] zzf;
    private Handler zzg;
    private zzcbs zzh;

    public zzcbt(Context context) {
        super("OrientationMonitor", b.JSON_KEY_ADS);
        this.zza = (SensorManager) context.getSystemService("sensor");
        this.zzc = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.zzd = new float[9];
        this.zze = new float[9];
        this.zzb = new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzfro
    public final void zza(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.zzb) {
                try {
                    if (this.zzf == null) {
                        this.zzf = new float[9];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            float[] fArr2 = this.zzd;
            SensorManager.getRotationMatrixFromVector(fArr2, fArr);
            int rotation = this.zzc.getRotation();
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation != 3) {
                        System.arraycopy(fArr2, 0, this.zze, 0, 9);
                    } else {
                        SensorManager.remapCoordinateSystem(fArr2, 130, 1, this.zze);
                    }
                } else {
                    SensorManager.remapCoordinateSystem(fArr2, 129, 130, this.zze);
                }
            } else {
                SensorManager.remapCoordinateSystem(fArr2, 2, 129, this.zze);
            }
            float[] fArr3 = this.zze;
            float f = fArr3[1];
            fArr3[1] = fArr3[3];
            fArr3[3] = f;
            float f2 = fArr3[2];
            fArr3[2] = fArr3[6];
            fArr3[6] = f2;
            float f3 = fArr3[5];
            fArr3[5] = fArr3[7];
            fArr3[7] = f3;
            synchronized (this.zzb) {
                System.arraycopy(fArr3, 0, this.zzf, 0, 9);
            }
            zzcbs zzcbsVar = this.zzh;
            if (zzcbsVar != null) {
                zzcbsVar.zza();
            }
        }
    }

    public final void zzb(zzcbs zzcbsVar) {
        this.zzh = zzcbsVar;
    }

    public final void zzc() {
        if (this.zzg == null) {
            SensorManager sensorManager = this.zza;
            Sensor defaultSensor = sensorManager.getDefaultSensor(11);
            if (defaultSensor == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("No Sensor of TYPE_ROTATION_VECTOR");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
            handlerThread.start();
            zzfrl zzfrlVar = new zzfrl(handlerThread.getLooper());
            this.zzg = zzfrlVar;
            if (!sensorManager.registerListener(this, defaultSensor, 0, zzfrlVar)) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("SensorManager.registerListener failed.");
                zzd();
            }
        }
    }

    public final void zzd() {
        if (this.zzg == null) {
            return;
        }
        this.zza.unregisterListener(this);
        this.zzg.post(new zzcbr(this));
        this.zzg = null;
    }

    public final boolean zze(float[] fArr) {
        synchronized (this.zzb) {
            try {
                float[] fArr2 = this.zzf;
                if (fArr2 == null) {
                    return false;
                }
                System.arraycopy(fArr2, 0, fArr, 0, 9);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
