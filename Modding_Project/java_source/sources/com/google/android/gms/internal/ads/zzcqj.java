package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcqj extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private final Context zza;
    private View zzb;

    private zzcqj(Context context) {
        super(context);
        this.zza = context;
    }

    public static zzcqj zza(Context context, View view, zzfbu zzfbuVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcqj zzcqjVar = new zzcqj(context);
        List list = zzfbuVar.zzu;
        if (!list.isEmpty() && (resources = zzcqjVar.zza.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            zzfbv zzfbvVar = (zzfbv) list.get(0);
            float f = displayMetrics.density;
            zzcqjVar.setLayoutParams(new FrameLayout.LayoutParams((int) (zzfbvVar.zza * f), (int) (zzfbvVar.zzb * f)));
        }
        zzcqjVar.zzb = view;
        zzcqjVar.addView(view);
        com.google.android.gms.ads.internal.zzv.zzz();
        zzcan.zzb(zzcqjVar, zzcqjVar);
        com.google.android.gms.ads.internal.zzv.zzz();
        zzcan.zza(zzcqjVar, zzcqjVar);
        JSONObject jSONObject = zzfbuVar.zzah;
        RelativeLayout relativeLayout = new RelativeLayout(zzcqjVar.zza);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzcqjVar.zzc(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzcqjVar.zzc(optJSONObject2, relativeLayout, 12);
        }
        zzcqjVar.addView(relativeLayout);
        return zzcqjVar;
    }

    private final int zzb(double d) {
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        return com.google.android.gms.ads.internal.util.client.zzf.zzy(this.zza, (int) d);
    }

    private final void zzc(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.zza);
        textView.setTextColor(-1);
        textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int zzb = zzb(jSONObject.optDouble("padding", FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
        textView.setPadding(0, zzb, 0, zzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzb.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzb.setY(-iArr[1]);
    }
}
