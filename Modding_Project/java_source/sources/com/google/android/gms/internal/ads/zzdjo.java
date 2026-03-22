package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdjo {
    static final ImageView.ScaleType zza = ImageView.ScaleType.CENTER_INSIDE;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzfcp zzc;
    private final zzdit zzd;
    private final zzdio zze;
    @Nullable
    private final zzdkc zzf;
    @Nullable
    private final zzdkk zzg;
    private final Executor zzh;
    private final Executor zzi;
    private final zzbfv zzj;
    private final zzdil zzk;

    public zzdjo(com.google.android.gms.ads.internal.util.zzg zzgVar, zzfcp zzfcpVar, zzdit zzditVar, zzdio zzdioVar, @Nullable zzdkc zzdkcVar, @Nullable zzdkk zzdkkVar, Executor executor, Executor executor2, zzdil zzdilVar) {
        this.zzb = zzgVar;
        this.zzc = zzfcpVar;
        this.zzj = zzfcpVar.zzi;
        this.zzd = zzditVar;
        this.zze = zzdioVar;
        this.zzf = zzdkcVar;
        this.zzg = zzdkkVar;
        this.zzh = executor;
        this.zzi = executor2;
        this.zzk = zzdilVar;
    }

    public static /* synthetic */ void zza(zzdjo zzdjoVar, ViewGroup viewGroup) {
        boolean z;
        zzdio zzdioVar = zzdjoVar.zze;
        if (zzdioVar.zzf() != null) {
            if (viewGroup != null) {
                z = true;
            } else {
                z = false;
            }
            if (zzdioVar.zzc() != 2 && zzdioVar.zzc() != 1) {
                if (zzdioVar.zzc() == 6) {
                    com.google.android.gms.ads.internal.util.zzg zzgVar = zzdjoVar.zzb;
                    String str = zzdjoVar.zzc.zzf;
                    zzgVar.zzF(str, "2", z);
                    zzgVar.zzF(str, "1", z);
                    return;
                }
                return;
            }
            zzdjoVar.zzb.zzF(zzdjoVar.zzc.zzf, String.valueOf(zzdioVar.zzc()), z);
        }
    }

    public static /* synthetic */ void zzb(final zzdjo zzdjoVar, zzdkm zzdkmVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        zzbgd zza2;
        Drawable drawable;
        zzdit zzditVar = zzdjoVar.zzd;
        Context context = null;
        if (zzditVar.zzf() || zzditVar.zze()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"};
            for (int i = 0; i < 2; i++) {
                View zzg = zzdkmVar.zzg(strArr[i]);
                if (zzg != null && (zzg instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzg;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context2 = zzdkmVar.zzf().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        zzdio zzdioVar = zzdjoVar.zze;
        if (zzdioVar.zze() != null) {
            view = zzdioVar.zze();
            zzbfv zzbfvVar = zzdjoVar.zzj;
            if (zzbfvVar != null && viewGroup == null) {
                zzh(layoutParams, zzbfvVar.zze);
                view.setLayoutParams(layoutParams);
                viewGroup = null;
            }
        } else if (!(zzdioVar.zzl() instanceof zzbfq)) {
            view = null;
        } else {
            zzbfq zzbfqVar = (zzbfq) zzdioVar.zzl();
            if (viewGroup == null) {
                zzh(layoutParams, zzbfqVar.zzc());
                viewGroup = null;
            }
            View zzbfrVar = new zzbfr(context2, zzbfqVar, layoutParams);
            zzbfrVar.setContentDescription((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzed));
            view = zzbfrVar;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                com.google.android.gms.ads.formats.zza zzaVar = new com.google.android.gms.ads.formats.zza(zzdkmVar.zzf().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(view);
                FrameLayout zzh = zzdkmVar.zzh();
                if (zzh != null) {
                    zzh.addView(zzaVar);
                }
            }
            zzdkmVar.zzq(zzdkmVar.zzk(), view, true);
        }
        zzfyc zzfycVar = zzdjk.zza;
        int size = zzfycVar.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                View zzg2 = zzdkmVar.zzg((String) zzfycVar.get(i2));
                i2++;
                if (zzg2 instanceof ViewGroup) {
                    viewGroup2 = (ViewGroup) zzg2;
                    break;
                }
            } else {
                viewGroup2 = null;
                break;
            }
        }
        zzdjoVar.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjl
            @Override // java.lang.Runnable
            public final void run() {
                zzdjo.zza(zzdjo.this, viewGroup2);
            }
        });
        if (viewGroup2 != null) {
            if (zzdjoVar.zzi(viewGroup2, true)) {
                if (zzdioVar.zzs() != null) {
                    zzdioVar.zzs().zzar(new zzdjn(zzdkmVar, viewGroup2));
                }
            } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzko)).booleanValue() && zzdjoVar.zzi(viewGroup2, false)) {
                if (zzdioVar.zzq() != null) {
                    zzdioVar.zzq().zzar(new zzdjn(zzdkmVar, viewGroup2));
                }
            } else {
                viewGroup2.removeAllViews();
                View zzf = zzdkmVar.zzf();
                if (zzf != null) {
                    context = zzf.getContext();
                }
                if (context != null && (zza2 = zzdjoVar.zzk.zza()) != null) {
                    try {
                        IObjectWrapper zzi = zza2.zzi();
                        if (zzi != null && (drawable = (Drawable) ObjectWrapper.unwrap(zzi)) != null) {
                            ImageView imageView = new ImageView(context);
                            imageView.setImageDrawable(drawable);
                            IObjectWrapper zzj = zzdkmVar.zzj();
                            if (zzj != null) {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgr)).booleanValue()) {
                                    imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(zzj));
                                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    viewGroup2.addView(imageView);
                                }
                            }
                            imageView.setScaleType(zza);
                            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            viewGroup2.addView(imageView);
                        }
                    } catch (RemoteException unused) {
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not get main image drawable");
                    }
                }
            }
        }
    }

    private static void zzh(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i != 0) {
            if (i != 2) {
                if (i != 3) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    return;
                }
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                return;
            }
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            return;
        }
        layoutParams.addRule(10);
        layoutParams.addRule(9);
    }

    private final boolean zzi(@NonNull ViewGroup viewGroup, boolean z) {
        View zzg;
        FrameLayout.LayoutParams layoutParams;
        if (z) {
            zzg = this.zze.zzf();
        } else {
            zzg = this.zze.zzg();
        }
        if (zzg == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzg.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzg.getParent()).removeView(zzg);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzef)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(zzg, layoutParams);
        return true;
    }

    public final void zzc(@Nullable zzdkm zzdkmVar) {
        zzdkc zzdkcVar;
        if (zzdkmVar != null && (zzdkcVar = this.zzf) != null && zzdkmVar.zzh() != null && this.zzd.zzg()) {
            try {
                zzdkmVar.zzh().addView(zzdkcVar.zza());
            } catch (zzcfn e) {
                com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
            }
        }
    }

    public final void zzd(@Nullable zzdkm zzdkmVar) {
        if (zzdkmVar != null) {
            Context context = zzdkmVar.zzf().getContext();
            if (com.google.android.gms.ads.internal.util.zzbv.zzi(context, this.zzd.zza)) {
                if (!(context instanceof Activity)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Activity context is needed for policy validator.");
                    return;
                }
                zzdkk zzdkkVar = this.zzg;
                if (zzdkkVar != null && zzdkmVar.zzh() != null) {
                    try {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        windowManager.addView(zzdkkVar.zza(zzdkmVar.zzh(), windowManager), com.google.android.gms.ads.internal.util.zzbv.zzb());
                    } catch (zzcfn e) {
                        com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
                    }
                }
            }
        }
    }

    public final void zze(final zzdkm zzdkmVar) {
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjm
            @Override // java.lang.Runnable
            public final void run() {
                zzdjo.zzb(zzdjo.this, zzdkmVar);
            }
        });
    }

    public final boolean zzf(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, false);
    }

    public final boolean zzg(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, true);
    }
}
