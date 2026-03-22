package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfnh implements zzfmi {
    private static final zzfnh zza = new zzfnh();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzd = new zzfnd();
    private static final Runnable zze = new zzfne();
    private int zzg;
    private long zzm;
    private final List zzf = new ArrayList();
    private boolean zzh = false;
    private final List zzi = new ArrayList();
    private final zzfna zzk = new zzfna();
    private final zzfmk zzj = new zzfmk();
    private final zzfnb zzl = new zzfnb(new zzfnk());

    public static zzfnh zzd() {
        return zza;
    }

    public static /* bridge */ /* synthetic */ void zzg(zzfnh zzfnhVar) {
        zzfnh zzfnhVar2;
        zzfnhVar.zzg = 0;
        zzfnhVar.zzi.clear();
        zzfnhVar.zzh = false;
        for (zzflf zzflfVar : zzflx.zza().zzb()) {
        }
        zzfnhVar.zzm = System.nanoTime();
        zzfna zzfnaVar = zzfnhVar.zzk;
        zzfnaVar.zzi();
        long nanoTime = System.nanoTime();
        zzfmk zzfmkVar = zzfnhVar.zzj;
        zzfmj zza2 = zzfmkVar.zza();
        if (zzfnaVar.zze().size() > 0) {
            Iterator it = zzfnaVar.zze().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                JSONObject zza3 = zza2.zza(null);
                View zza4 = zzfnaVar.zza(str);
                zzfmj zzb2 = zzfmkVar.zzb();
                String zzc2 = zzfnaVar.zzc(str);
                if (zzc2 != null) {
                    JSONObject zza5 = zzb2.zza(zza4);
                    zzfmt.zzb(zza5, str);
                    try {
                        zza5.put("notVisibleReason", zzc2);
                    } catch (JSONException e) {
                        zzfmu.zza("Error with setting not visible reason", e);
                    }
                    zzfmt.zzc(zza3, zza5);
                }
                zzfmt.zzf(zza3);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                zzfnhVar.zzl.zzc(zza3, hashSet, nanoTime);
            }
        }
        zzfna zzfnaVar2 = zzfnhVar.zzk;
        if (zzfnaVar2.zzf().size() > 0) {
            JSONObject zza6 = zza2.zza(null);
            zzfnhVar2 = zzfnhVar;
            zzfnhVar2.zzk(null, zza2, zza6, 1, false);
            zzfmt.zzf(zza6);
            zzfnhVar2.zzl.zzd(zza6, zzfnaVar2.zzf(), nanoTime);
        } else {
            zzfnhVar2 = zzfnhVar;
            zzfnhVar2.zzl.zzb();
        }
        zzfnaVar2.zzg();
        long nanoTime2 = System.nanoTime() - zzfnhVar2.zzm;
        List<zzfng> list = zzfnhVar2.zzf;
        if (list.size() > 0) {
            for (zzfng zzfngVar : list) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                zzfngVar.zzb();
                if (zzfngVar instanceof zzfnf) {
                    ((zzfnf) zzfngVar).zza();
                }
            }
        }
        zzfmh.zza().zzc();
    }

    private final void zzk(View view, zzfmj zzfmjVar, JSONObject jSONObject, int i, boolean z) {
        boolean z2 = true;
        if (i != 1) {
            z2 = false;
        }
        zzfmjVar.zzb(view, jSONObject, this, z2, z);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zze);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmi
    public final void zza(View view, zzfmj zzfmjVar, JSONObject jSONObject, boolean z) {
        zzfna zzfnaVar;
        int zzl;
        boolean z2;
        zzfnh zzfnhVar;
        View view2;
        zzfmj zzfmjVar2;
        boolean z3;
        if (zzfmy.zza(view) == null && (zzl = (zzfnaVar = this.zzk).zzl(view)) != 3) {
            JSONObject zza2 = zzfmjVar.zza(view);
            zzfmt.zzc(jSONObject, zza2);
            String zzd2 = zzfnaVar.zzd(view);
            if (zzd2 != null) {
                zzfmt.zzb(zza2, zzd2);
                try {
                    zza2.put("hasWindowFocus", Boolean.valueOf(this.zzk.zzk(view)));
                } catch (JSONException e) {
                    zzfmu.zza("Error with setting has window focus", e);
                }
                boolean zzj = this.zzk.zzj(zzd2);
                Boolean valueOf = Boolean.valueOf(zzj);
                if (zzj) {
                    try {
                        zza2.put("isPipActive", valueOf);
                    } catch (JSONException e2) {
                        zzfmu.zza("Error with setting is picture-in-picture active", e2);
                    }
                }
                this.zzk.zzh();
                zzfnhVar = this;
            } else {
                zzfmz zzb2 = zzfnaVar.zzb(view);
                if (zzb2 != null) {
                    zzfma zza3 = zzb2.zza();
                    JSONArray jSONArray = new JSONArray();
                    ArrayList zzb3 = zzb2.zzb();
                    int size = zzb3.size();
                    for (int i = 0; i < size; i++) {
                        jSONArray.put((String) zzb3.get(i));
                    }
                    try {
                        zza2.put("isFriendlyObstructionFor", jSONArray);
                        zza2.put("friendlyObstructionClass", zza3.zzd());
                        zza2.put("friendlyObstructionPurpose", zza3.zza());
                        zza2.put("friendlyObstructionReason", zza3.zzc());
                    } catch (JSONException e3) {
                        zzfmu.zza("Error with setting friendly obstruction", e3);
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z || z2) {
                    zzfnhVar = this;
                    view2 = view;
                    zzfmjVar2 = zzfmjVar;
                    z3 = true;
                } else {
                    view2 = view;
                    zzfmjVar2 = zzfmjVar;
                    z3 = false;
                    zzfnhVar = this;
                }
                zzfnhVar.zzk(view2, zzfmjVar2, zza2, zzl, z3);
            }
            zzfnhVar.zzg++;
        }
    }

    public final void zzh() {
        zzl();
    }

    public final void zzi() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzd);
            zzc.postDelayed(zze, 200L);
        }
    }

    public final void zzj() {
        zzl();
        this.zzf.clear();
        zzb.post(new zzfnc(this));
    }
}
