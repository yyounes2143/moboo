package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfml implements zzfmj {
    private final zzfmj zza;

    public zzfml(zzfmj zzfmjVar) {
        this.zza = zzfmjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmj
    public final JSONObject zza(View view) {
        boolean z = false;
        JSONObject zza = zzfmt.zza(0, 0, 0, 0);
        int zzb = zzfmw.zzb();
        int i = zzb - 1;
        if (zzb != 0) {
            if (i == 0) {
                z = true;
            }
            try {
                zza.put("noOutputDevice", z);
                return zza;
            } catch (JSONException e) {
                zzfmu.zza("Error with setting output device status", e);
                return zza;
            }
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfmj
    public final void zzb(View view, JSONObject jSONObject, zzfmi zzfmiVar, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        zzflx zza = zzflx.zza();
        if (zza != null) {
            Collection<zzflf> zzb = zza.zzb();
            int size = zzb.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            for (zzflf zzflfVar : zzb) {
                View zzf = zzflfVar.zzf();
                if (zzf != null && zzf.isAttachedToWindow() && zzf.isShown()) {
                    View view2 = zzf;
                    while (true) {
                        if (view2 != null) {
                            if (view2.getAlpha() != 0.0f) {
                                ViewParent parent = view2.getParent();
                                if (parent instanceof View) {
                                    view2 = (View) parent;
                                } else {
                                    view2 = null;
                                }
                            }
                        } else {
                            View rootView = zzf.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float z3 = rootView.getZ();
                                int size2 = arrayList.size();
                                while (size2 > 0) {
                                    int i = size2 - 1;
                                    if (((View) arrayList.get(i)).getZ() <= z3) {
                                        break;
                                    }
                                    size2 = i;
                                }
                                arrayList.add(size2, rootView);
                            }
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            zzfmiVar.zza((View) arrayList.get(i2), this.zza, jSONObject, z2);
        }
    }
}
