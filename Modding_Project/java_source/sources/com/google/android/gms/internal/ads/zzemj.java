package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemj implements zzetv {
    private final zzetv zza;
    private final zzfcp zzb;
    private final Context zzc;
    private final zzbzn zzd;

    public zzemj(zzeon zzeonVar, zzfcp zzfcpVar, Context context, zzbzn zzbznVar) {
        this.zza = zzeonVar;
        this.zzb = zzfcpVar;
        this.zzc = context;
        this.zzd = zzbznVar;
    }

    public static /* synthetic */ zzemk zzc(zzemj zzemjVar, zzeue zzeueVar) {
        String str;
        boolean z;
        Insets insets;
        String str2;
        int i;
        int i2;
        float f;
        float f2;
        int i3;
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        int statusBars;
        int displayCutout;
        int navigationBars;
        int captionBar;
        Insets insets2;
        int i4;
        int i5;
        int i6;
        int i7;
        DisplayMetrics displayMetrics;
        zzfcp zzfcpVar = zzemjVar.zzb;
        com.google.android.gms.ads.internal.client.zzr zzrVar = zzfcpVar.zze;
        com.google.android.gms.ads.internal.client.zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr == null) {
            str = zzrVar.zza;
            z = zzrVar.zzi;
        } else {
            str = null;
            z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (com.google.android.gms.ads.internal.client.zzr zzrVar2 : zzrVarArr) {
                boolean z4 = zzrVar2.zzi;
                if (!z4 && !z2) {
                    str = zzrVar2.zza;
                    z2 = true;
                }
                if (z4) {
                    if (!z3) {
                        z = true;
                    }
                    z3 = true;
                }
                if (z2 && z3) {
                    break;
                }
            }
        }
        Context context = zzemjVar.zzc;
        Resources resources = context.getResources();
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            insets = Insets.NONE;
        } else {
            insets = null;
        }
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            zzbzn zzbznVar = zzemjVar.zzd;
            f = displayMetrics.density;
            i2 = displayMetrics.widthPixels;
            int i9 = displayMetrics.heightPixels;
            str2 = zzbznVar.zzi().zzj();
            i = i9;
        } else {
            str2 = null;
            i = 0;
            i2 = 0;
            f = 0.0f;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzny)).booleanValue() && i8 >= 35) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null && f != 0.0f) {
                currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                windowInsets = currentWindowMetrics.getWindowInsets();
                statusBars = WindowInsets.Type.statusBars();
                displayCutout = WindowInsets.Type.displayCutout();
                int i10 = statusBars | displayCutout;
                navigationBars = WindowInsets.Type.navigationBars();
                int i11 = i10 | navigationBars;
                captionBar = WindowInsets.Type.captionBar();
                insets2 = windowInsets.getInsets(i11 | captionBar);
                i4 = insets2.left;
                int ceil = (int) Math.ceil(i4 / f);
                i5 = insets2.top;
                i6 = insets2.right;
                f2 = 0.0f;
                i3 = i2;
                i7 = insets2.bottom;
                insets = Insets.of(ceil, (int) Math.ceil(i5 / f), (int) Math.ceil(i6 / f), (int) Math.ceil(i7 / f));
            } else {
                f2 = 0.0f;
                i3 = i2;
                insets = Insets.NONE;
            }
        } else {
            f2 = 0.0f;
            i3 = i2;
        }
        StringBuilder sb = new StringBuilder();
        if (zzrVarArr != null) {
            int i12 = 0;
            boolean z5 = false;
            while (i12 < zzrVarArr.length) {
                com.google.android.gms.ads.internal.client.zzr zzrVar3 = zzrVarArr[i12];
                float f3 = f2;
                if (zzrVar3.zzi) {
                    z5 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i13 = zzrVar3.zze;
                    if (i13 == -1) {
                        if (f != f3) {
                            i13 = (int) (zzrVar3.zzf / f);
                        } else {
                            i13 = -1;
                        }
                    }
                    sb.append(i13);
                    sb.append("x");
                    int i14 = zzrVar3.zzb;
                    if (i14 == -2) {
                        if (f != f3) {
                            i14 = (int) (zzrVar3.zzc / f);
                        } else {
                            i14 = -2;
                        }
                    }
                    sb.append(i14);
                }
                i12++;
                f2 = f3;
            }
            if (z5) {
                if (sb.length() != 0) {
                    sb.insert(0, "|");
                }
                sb.insert(0, "320x50");
            }
        }
        return new zzemk(zzrVar, str, z, sb.toString(), f, i3, i, str2, zzfcpVar.zzq, insets);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 7;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return zzgcy.zzm(this.zza.zzb(), new zzfur() { // from class: com.google.android.gms.internal.ads.zzemi
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return zzemj.zzc(zzemj.this, (zzeue) obj);
            }
        }, zzcaa.zzg);
    }
}
