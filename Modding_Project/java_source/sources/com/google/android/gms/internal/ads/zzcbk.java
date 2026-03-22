package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.internal.view.SupportMenu;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.common.internal.Preconditions;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzcbk extends FrameLayout implements zzcbb {
    @VisibleForTesting
    final zzcby zza;
    private final zzcbw zzb;
    private final FrameLayout zzc;
    private final View zzd;
    private final zzbdk zze;
    private final long zzf;
    @Nullable
    private final zzcbc zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private String zzn;
    private String[] zzo;
    private Bitmap zzp;
    private final ImageView zzq;
    private boolean zzr;

    public zzcbk(Context context, zzcbw zzcbwVar, int i, boolean z, zzbdk zzbdkVar, zzcbv zzcbvVar, @Nullable zzdsd zzdsdVar) {
        super(context);
        zzcbc zzcbaVar;
        zzbdk zzbdkVar2;
        zzcbc zzcbcVar;
        String str;
        this.zzb = zzcbwVar;
        this.zze = zzbdkVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.zzc = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzcbwVar.zzj());
        zzcbd zzcbdVar = zzcbwVar.zzj().zza;
        zzcbx zzcbxVar = new zzcbx(context, zzcbwVar.zzm(), zzcbwVar.zzs(), zzbdkVar, zzcbwVar.zzk());
        if (i == 3) {
            zzcbcVar = new zzceq(context, zzcbxVar);
            zzbdkVar2 = zzbdkVar;
        } else {
            if (i == 2) {
                zzcbaVar = new zzcco(context, zzcbxVar, zzcbwVar, z, zzcbd.zza(zzcbwVar), zzcbvVar, zzdsdVar);
                zzbdkVar2 = zzbdkVar;
            } else {
                zzbdkVar2 = zzbdkVar;
                zzcbaVar = new zzcba(context, zzcbwVar, z, zzcbd.zza(zzcbwVar), zzcbvVar, new zzcbx(context, zzcbwVar.zzm(), zzcbwVar.zzs(), zzbdkVar, zzcbwVar.zzk()), zzdsdVar);
            }
            zzcbcVar = zzcbaVar;
        }
        this.zzg = zzcbcVar;
        View view = new View(context);
        this.zzd = view;
        view.setBackgroundColor(0);
        frameLayout.addView(zzcbcVar, new FrameLayout.LayoutParams(-1, -1, 17));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzV)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzS)).booleanValue()) {
            zzp();
        }
        this.zzq = new ImageView(context);
        this.zzf = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzX)).longValue();
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzU)).booleanValue();
        this.zzk = booleanValue;
        if (zzbdkVar2 != null) {
            if (true != booleanValue) {
                str = "0";
            } else {
                str = "1";
            }
            zzbdkVar2.zzd("spinner_used", str);
        }
        this.zza = new zzcby(this);
        zzcbcVar.zzr(this);
    }

    private final void zzJ() {
        zzcbw zzcbwVar = this.zzb;
        if (zzcbwVar.zzi() != null && this.zzi && !this.zzj) {
            zzcbwVar.zzi().getWindow().clearFlags(128);
            this.zzi = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzK(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        Integer zzl = zzl();
        if (zzl != null) {
            hashMap.put("playerId", zzl.toString());
        }
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.zzb.zzd("onVideoEvent", hashMap);
    }

    private final boolean zzL() {
        if (this.zzq.getParent() != null) {
            return true;
        }
        return false;
    }

    public final void finalize() throws Throwable {
        try {
            this.zza.zza();
            final zzcbc zzcbcVar = this.zzg;
            if (zzcbcVar != null) {
                zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbe
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcbc.this.zzt();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.zza.zzb();
        } else {
            this.zza.zza();
            this.zzm = this.zzl;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbg
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk.this.zzK("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcbb
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.zza.zzb();
            z = true;
        } else {
            this.zza.zza();
            this.zzm = this.zzl;
            z = false;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcbj(this, z));
    }

    public final void zzA(int i) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzz(i);
    }

    public final void zzB(int i) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzA(i);
    }

    public final void zzC(int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzV)).booleanValue()) {
            this.zzc.setBackgroundColor(i);
            this.zzd.setBackgroundColor(i);
        }
    }

    public final void zzD(int i) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzB(i);
    }

    public final void zzE(String str, String[] strArr) {
        this.zzn = str;
        this.zzo = strArr;
    }

    public final void zzF(int i, int i2, int i3, int i4) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Set video bounds to x:" + i + ";y:" + i2 + ";w:" + i3 + ";h:" + i4);
        }
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.zzc.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    public final void zzG(float f) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzb.zze(f);
        zzcbcVar.zzn();
    }

    public final void zzH(float f, float f2) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar != null) {
            zzcbcVar.zzu(f, f2);
        }
    }

    public final void zzI() {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzb.zzd(false);
        zzcbcVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzce)).booleanValue()) {
            this.zza.zza();
        }
        zzK("ended", new String[0]);
        zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzb(String str, @Nullable String str2) {
        zzK("error", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzc(String str, @Nullable String str2) {
        zzK("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzd() {
        zzK(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, new String[0]);
        zzJ();
        this.zzh = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zze() {
        boolean z;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzce)).booleanValue()) {
            this.zza.zzb();
        }
        zzcbw zzcbwVar = this.zzb;
        if (zzcbwVar.zzi() != null && !this.zzi) {
            if ((zzcbwVar.zzi().getWindow().getAttributes().flags & 128) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.zzj = z;
            if (!z) {
                zzcbwVar.zzi().getWindow().addFlags(128);
                this.zzi = true;
            }
        }
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzf() {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar != null && this.zzm == 0) {
            zzK("canplaythrough", TypedValues.TransitionType.S_DURATION, String.valueOf(zzcbcVar.zzc() / 1000.0f), "videoWidth", String.valueOf(zzcbcVar.zze()), "videoHeight", String.valueOf(zzcbcVar.zzd()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzg() {
        this.zzd.setVisibility(4);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbf
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk.this.zzK("firstFrameRendered", new String[0]);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzh() {
        this.zza.zzb();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcbh(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzi() {
        if (this.zzr && this.zzp != null && !zzL()) {
            ImageView imageView = this.zzq;
            imageView.setImageBitmap(this.zzp);
            imageView.invalidate();
            FrameLayout frameLayout = this.zzc;
            frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(imageView);
        }
        this.zza.zza();
        this.zzm = this.zzl;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcbi(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzj(int i, int i2) {
        if (this.zzk) {
            zzbcm zzbcmVar = zzbcv.zzW;
            int max = Math.max(i / ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue(), 1);
            Bitmap bitmap = this.zzp;
            if (bitmap != null && bitmap.getWidth() == max && this.zzp.getHeight() == max2) {
                return;
            }
            this.zzp = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.zzr = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzk() {
        if (this.zzh && zzL()) {
            this.zzc.removeView(this.zzq);
        }
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar != null && this.zzp != null) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
            if (zzcbcVar.getBitmap(this.zzp) != null) {
                this.zzr = true;
            }
            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - elapsedRealtime;
            if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                com.google.android.gms.ads.internal.util.zze.zza("Spinner frame grab took " + elapsedRealtime2 + "ms");
            }
            if (elapsedRealtime2 > this.zzf) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzk = false;
                this.zzp = null;
                zzbdk zzbdkVar = this.zze;
                if (zzbdkVar != null) {
                    zzbdkVar.zzd("spinner_jank", Long.toString(elapsedRealtime2));
                }
            }
        }
    }

    @Nullable
    public final Integer zzl() {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar != null) {
            return zzcbcVar.zzw();
        }
        return null;
    }

    public final void zzp() {
        String string;
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        TextView textView = new TextView(zzcbcVar.getContext());
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        if (zze == null) {
            string = "AdMob - ";
        } else {
            string = zze.getString(R.string.watermark_label_prefix);
        }
        textView.setText(String.valueOf(string).concat(zzcbcVar.zzj()));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(-256);
        FrameLayout frameLayout = this.zzc;
        frameLayout.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        frameLayout.bringChildToFront(textView);
    }

    public final void zzq() {
        this.zza.zza();
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar != null) {
            zzcbcVar.zzt();
        }
        zzJ();
    }

    public final void zzr(Integer num) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.zzn)) {
            zzcbcVar.zzC(this.zzn, this.zzo, num);
        } else {
            zzK("no_src", new String[0]);
        }
    }

    public final void zzs() {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzb.zzd(true);
        zzcbcVar.zzn();
    }

    public final void zzt() {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar != null) {
            long zza = zzcbcVar.zza();
            if (this.zzl != zza && zza > 0) {
                float f = ((float) zza) / 1000.0f;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcc)).booleanValue()) {
                    zzK("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(zzcbcVar.zzh()), "qoeCachedBytes", String.valueOf(zzcbcVar.zzf()), "qoeLoadedBytes", String.valueOf(zzcbcVar.zzg()), "droppedFrames", String.valueOf(zzcbcVar.zzb()), "reportTime", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis()));
                } else {
                    zzK("timeupdate", "time", String.valueOf(f));
                }
                this.zzl = zza;
            }
        }
    }

    public final void zzu() {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzo();
    }

    public final void zzv() {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzp();
    }

    public final void zzw(int i) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzq(i);
    }

    public final void zzx(MotionEvent motionEvent) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.dispatchTouchEvent(motionEvent);
    }

    public final void zzy(int i) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzx(i);
    }

    public final void zzz(int i) {
        zzcbc zzcbcVar = this.zzg;
        if (zzcbcVar == null) {
            return;
        }
        zzcbcVar.zzy(i);
    }
}
