package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.common.zzg;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzc {
    private final Map zza = DesugarCollections.synchronizedMap(new ArrayMap());
    private int zzb = 0;
    @Nullable
    private Bundle zzc;

    @Nullable
    public final LifecycleCallback zza(String str, Class cls) {
        return (LifecycleCallback) cls.cast(this.zza.get(str));
    }

    public final void zzb(String str, LifecycleCallback lifecycleCallback) {
        Map map = this.zza;
        if (!map.containsKey(str)) {
            map.put(str, lifecycleCallback);
            if (this.zzb > 0) {
                new zzg(Looper.getMainLooper()).post(new zzb(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    public final boolean zzc() {
        if (this.zzb > 0) {
            return true;
        }
        return false;
    }

    public final boolean zzd() {
        if (this.zzb >= 2) {
            return true;
        }
        return false;
    }

    public final void zze(@Nullable Bundle bundle) {
        Bundle bundle2;
        this.zzb = 1;
        this.zzc = bundle;
        for (Map.Entry entry : this.zza.entrySet()) {
            LifecycleCallback lifecycleCallback = (LifecycleCallback) entry.getValue();
            if (bundle != null) {
                bundle2 = bundle.getBundle((String) entry.getKey());
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
    }

    public final void zzf() {
        this.zzb = 2;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onStart();
        }
    }

    public final void zzg() {
        this.zzb = 3;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onResume();
        }
    }

    public final void zzh(int i, int i2, @Nullable Intent intent) {
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onActivityResult(i, i2, intent);
        }
    }

    public final void zzi(Bundle bundle) {
        if (bundle != null) {
            for (Map.Entry entry : this.zza.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((LifecycleCallback) entry.getValue()).onSaveInstanceState(bundle2);
                bundle.putBundle((String) entry.getKey(), bundle2);
            }
        }
    }

    public final void zzj() {
        this.zzb = 4;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onStop();
        }
    }

    public final void zzk() {
        this.zzb = 5;
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.onDestroy();
        }
    }

    public final void zzl(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        for (LifecycleCallback lifecycleCallback : this.zza.values()) {
            lifecycleCallback.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final /* synthetic */ int zzm() {
        return this.zzb;
    }

    public final /* synthetic */ Bundle zzn() {
        return this.zzc;
    }
}
