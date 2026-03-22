package com.google.android.gms.ads.internal.client;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbph;
import com.google.android.gms.internal.ads.zzbpl;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class LiteSdkInfo extends zzcu {
    public LiteSdkInfo(@NonNull Context context) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public zzbpl getAdapterCreator() {
        return new zzbph();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcv
    public zzex getLiteSdkVersion() {
        return new zzex(ModuleDescriptor.MODULE_VERSION, ModuleDescriptor.MODULE_VERSION, "24.3.0");
    }
}
