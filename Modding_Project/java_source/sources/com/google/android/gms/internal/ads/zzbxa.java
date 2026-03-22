package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.rewarded.RewardItem;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbxa implements RewardItem {
    private final zzbwn zza;

    public zzbxa(zzbwn zzbwnVar) {
        this.zza = zzbwnVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzbwn zzbwnVar = this.zza;
        if (zzbwnVar != null) {
            try {
                return zzbwnVar.zze();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not forward getAmount to RewardItem", e);
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    @Nullable
    public final String getType() {
        zzbwn zzbwnVar = this.zza;
        if (zzbwnVar != null) {
            try {
                return zzbwnVar.zzf();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not forward getType to RewardItem", e);
            }
        }
        return null;
    }
}
