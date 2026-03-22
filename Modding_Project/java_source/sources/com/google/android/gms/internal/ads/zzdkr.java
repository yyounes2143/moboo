package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzdkr implements zzdiw {
    @Nullable
    private final zzbqa zza;
    private final zzcwl zzb;
    private final zzcvr zzc;
    private final zzddw zzd;
    private final Context zze;
    private final zzfbu zzf;
    private final VersionInfoParcel zzg;
    private final zzfcp zzh;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = true;
    @Nullable
    private final zzbpw zzl;
    @Nullable
    private final zzbpx zzm;

    public zzdkr(@Nullable zzbpw zzbpwVar, @Nullable zzbpx zzbpxVar, @Nullable zzbqa zzbqaVar, zzcwl zzcwlVar, zzcvr zzcvrVar, zzddw zzddwVar, Context context, zzfbu zzfbuVar, VersionInfoParcel versionInfoParcel, zzfcp zzfcpVar) {
        this.zzl = zzbpwVar;
        this.zzm = zzbpxVar;
        this.zza = zzbqaVar;
        this.zzb = zzcwlVar;
        this.zzc = zzcvrVar;
        this.zzd = zzddwVar;
        this.zze = context;
        this.zzf = zzfbuVar;
        this.zzg = versionInfoParcel;
        this.zzh = zzfcpVar;
    }

    private final void zzb(View view) {
        try {
            zzbqa zzbqaVar = this.zza;
            if (zzbqaVar != null && !zzbqaVar.zzA()) {
                zzbqaVar.zzw(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzla)).booleanValue()) {
                    this.zzd.zzdf();
                    return;
                }
                return;
            }
            zzbpw zzbpwVar = this.zzl;
            if (zzbpwVar != null && !zzbpwVar.zzx()) {
                zzbpwVar.zzs(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzla)).booleanValue()) {
                    this.zzd.zzdf();
                    return;
                }
                return;
            }
            zzbpx zzbpxVar = this.zzm;
            if (zzbpxVar != null && !zzbpxVar.zzv()) {
                zzbpxVar.zzq(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzla)).booleanValue()) {
                    this.zzd.zzdf();
                }
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call handleClick", e);
        }
    }

    private static final HashMap zzc(Map map) {
        HashMap hashMap = new HashMap();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    View view = (View) ((WeakReference) entry.getValue()).get();
                    if (view != null) {
                        hashMap.put((String) entry.getKey(), view);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzB(View view, @Nullable Map map, @Nullable Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Map map3;
        Map map4;
        Object obj;
        IObjectWrapper zzn;
        boolean z = true;
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            JSONObject jSONObject = this.zzf.zzaj;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbJ)).booleanValue() && jSONObject.length() != 0) {
                if (map == null) {
                    map3 = new HashMap();
                } else {
                    map3 = map;
                }
                if (map2 == null) {
                    map4 = new HashMap();
                } else {
                    map4 = map2;
                }
                HashMap hashMap = new HashMap();
                hashMap.putAll(map3);
                hashMap.putAll(map4);
                Iterator<String> keys = jSONObject.keys();
                loop0: while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    if (optJSONArray != null) {
                        WeakReference weakReference = (WeakReference) hashMap.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbK)).booleanValue() && next.equals("3010")) {
                                zzbqa zzbqaVar = this.zza;
                                Object obj2 = null;
                                if (zzbqaVar != null) {
                                    try {
                                        zzn = zzbqaVar.zzn();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else {
                                    zzbpw zzbpwVar = this.zzl;
                                    if (zzbpwVar != null) {
                                        zzn = zzbpwVar.zzk();
                                    } else {
                                        zzbpx zzbpxVar = this.zzm;
                                        if (zzbpxVar != null) {
                                            zzn = zzbpxVar.zzj();
                                        } else {
                                            zzn = null;
                                        }
                                    }
                                }
                                if (zzn != null) {
                                    obj2 = ObjectWrapper.unwrap(zzn);
                                }
                                if (obj2 != null) {
                                    cls = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList arrayList = new ArrayList();
                                com.google.android.gms.ads.internal.util.zzbs.zzc(optJSONArray, arrayList);
                                com.google.android.gms.ads.internal.zzv.zzr();
                                ClassLoader classLoader = this.zze.getClassLoader();
                                int size = arrayList.size();
                                int i = 0;
                                while (i < size) {
                                    Object obj3 = arrayList.get(i);
                                    i++;
                                    if (Class.forName((String) obj3, false, classLoader).isAssignableFrom(cls)) {
                                        break;
                                    }
                                }
                            } catch (JSONException unused2) {
                                continue;
                            }
                        }
                        z = false;
                        break;
                    }
                }
            }
            this.zzk = z;
            HashMap zzc = zzc(map);
            HashMap zzc2 = zzc(map2);
            zzbqa zzbqaVar2 = this.zza;
            if (zzbqaVar2 != null) {
                zzbqaVar2.zzy(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                return;
            }
            zzbpw zzbpwVar2 = this.zzl;
            if (zzbpwVar2 != null) {
                zzbpwVar2.zzv(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                zzbpwVar2.zzu(wrap);
                return;
            }
            zzbpx zzbpxVar2 = this.zzm;
            if (zzbpxVar2 != null) {
                zzbpxVar2.zzt(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                zzbpxVar2.zzs(wrap);
            }
        } catch (RemoteException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzC(View view, @Nullable Map map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            zzbqa zzbqaVar = this.zza;
            if (zzbqaVar != null) {
                zzbqaVar.zzz(wrap);
                return;
            }
            zzbpw zzbpwVar = this.zzl;
            if (zzbpwVar != null) {
                zzbpwVar.zzw(wrap);
                return;
            }
            zzbpx zzbpxVar = this.zzm;
            if (zzbpxVar != null) {
                zzbpxVar.zzu(wrap);
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final boolean zzD() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final boolean zzE() {
        return this.zzf.zzL;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final boolean zzF(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    @Nullable
    public final JSONObject zzf(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    @Nullable
    public final JSONObject zzg(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzi() {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzl(@Nullable com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzm(View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z, @Nullable ImageView.ScaleType scaleType) {
        if (this.zzj && this.zzf.zzL) {
            return;
        }
        zzb(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzq(View view, View view2, Map map, Map map2, boolean z, @Nullable ImageView.ScaleType scaleType, int i) {
        if (!this.zzj) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzf.zzL) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            zzb(view2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzt(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        try {
            if (!this.zzi) {
                this.zzi = com.google.android.gms.ads.internal.zzv.zzu().zzn(this.zze, this.zzg.afmaVersion, this.zzf.zzC.toString(), this.zzh.zzf);
            }
            if (this.zzk) {
                zzbqa zzbqaVar = this.zza;
                if (zzbqaVar != null && !zzbqaVar.zzB()) {
                    zzbqaVar.zzx();
                    this.zzb.zza();
                    return;
                }
                zzbpw zzbpwVar = this.zzl;
                if (zzbpwVar != null && !zzbpwVar.zzy()) {
                    zzbpwVar.zzt();
                    this.zzb.zza();
                    return;
                }
                zzbpx zzbpxVar = this.zzm;
                if (zzbpxVar != null && !zzbpxVar.zzw()) {
                    zzbpxVar.zzr();
                    this.zzb.zza();
                }
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzy() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzz(com.google.android.gms.ads.internal.client.zzdc zzdcVar) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzs() {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzu() {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzA(zzbhx zzbhxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzn(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzo(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzw(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzx(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzv(View view, MotionEvent motionEvent, @Nullable View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdiw
    public final void zzr(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
    }
}
