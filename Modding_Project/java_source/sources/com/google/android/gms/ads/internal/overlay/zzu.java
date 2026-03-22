package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbcv;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzu extends FrameLayout implements View.OnClickListener {
    private final ImageButton zza;
    private final zzah zzb;

    public zzu(Context context, zzt zztVar, @Nullable zzah zzahVar) {
        super(context);
        zzs zzsVar;
        this.zzb = zzahVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.zza = imageButton;
        zzc();
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzbb.zzb();
        int zzy = com.google.android.gms.ads.internal.util.client.zzf.zzy(context, zztVar.zza);
        zzbb.zzb();
        int zzy2 = com.google.android.gms.ads.internal.util.client.zzf.zzy(context, 0);
        zzbb.zzb();
        int zzy3 = com.google.android.gms.ads.internal.util.client.zzf.zzy(context, zztVar.zzb);
        zzbb.zzb();
        imageButton.setPadding(zzy, zzy2, zzy3, com.google.android.gms.ads.internal.util.client.zzf.zzy(context, zztVar.zzc));
        imageButton.setContentDescription("Interstitial close button");
        zzbb.zzb();
        int zzy4 = com.google.android.gms.ads.internal.util.client.zzf.zzy(context, zztVar.zzd + zztVar.zza + zztVar.zzb);
        zzbb.zzb();
        addView(imageButton, new FrameLayout.LayoutParams(zzy4, com.google.android.gms.ads.internal.util.client.zzf.zzy(context, zztVar.zzd + zztVar.zzc), 17));
        long longValue = ((Long) zzbd.zzc().zzb(zzbcv.zzbp)).longValue();
        if (longValue <= 0) {
            return;
        }
        if (((Boolean) zzbd.zzc().zzb(zzbcv.zzbq)).booleanValue()) {
            zzsVar = new zzs(this);
        } else {
            zzsVar = null;
        }
        imageButton.setAlpha(0.0f);
        imageButton.animate().alpha(1.0f).setDuration(longValue).setListener(zzsVar);
    }

    private final void zzc() {
        String str = (String) zzbd.zzc().zzb(zzbcv.zzbo);
        if (PlatformVersion.isAtLeastLollipop() && !TextUtils.isEmpty(str) && !"default".equals(str)) {
            Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
            if (zze != null) {
                Drawable drawable = null;
                try {
                    if ("white".equals(str)) {
                        drawable = zze.getDrawable(R.drawable.admob_close_button_white_circle_black_cross);
                    } else if ("black".equals(str)) {
                        drawable = zze.getDrawable(R.drawable.admob_close_button_black_circle_white_cross);
                    }
                } catch (Resources.NotFoundException unused) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Close button resource not found, falling back to default.");
                }
                if (drawable == null) {
                    this.zza.setImageResource(17301527);
                    return;
                }
                ImageButton imageButton = this.zza;
                imageButton.setImageDrawable(drawable);
                imageButton.setScaleType(ImageView.ScaleType.CENTER);
                return;
            }
            this.zza.setImageResource(17301527);
            return;
        }
        this.zza.setImageResource(17301527);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzah zzahVar = this.zzb;
        if (zzahVar != null) {
            zzahVar.zzj();
        }
    }

    public final void zzb(boolean z) {
        if (z) {
            ImageButton imageButton = this.zza;
            imageButton.setVisibility(8);
            if (((Long) zzbd.zzc().zzb(zzbcv.zzbp)).longValue() > 0) {
                imageButton.animate().cancel();
                imageButton.clearAnimation();
                return;
            }
            return;
        }
        this.zza.setVisibility(0);
    }
}
