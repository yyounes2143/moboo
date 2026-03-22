package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface zzdiw {
    void zzA(zzbhx zzbhxVar);

    void zzB(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener);

    void zzC(View view, Map map);

    boolean zzD();

    boolean zzE();

    boolean zzF(Bundle bundle);

    int zza();

    JSONObject zzf(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType);

    JSONObject zzg(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType);

    void zzi();

    void zzj();

    void zzk();

    void zzl(@Nullable com.google.android.gms.ads.internal.client.zzdg zzdgVar);

    void zzm(View view, View view2, Map map, Map map2, boolean z, @Nullable ImageView.ScaleType scaleType);

    void zzn(String str);

    void zzo(Bundle bundle);

    void zzq(@Nullable View view, View view2, Map map, Map map2, boolean z, @Nullable ImageView.ScaleType scaleType, int i);

    void zzr(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType);

    void zzs();

    void zzt(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType);

    void zzu();

    void zzv(@Nullable View view, MotionEvent motionEvent, View view2);

    void zzw(Bundle bundle);

    void zzx(View view);

    void zzy();

    void zzz(com.google.android.gms.ads.internal.client.zzdc zzdcVar);
}
