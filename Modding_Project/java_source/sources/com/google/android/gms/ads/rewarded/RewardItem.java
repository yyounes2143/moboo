package com.google.android.gms.ads.rewarded;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface RewardItem {
    @NonNull
    public static final RewardItem DEFAULT_REWARD = new zza();

    int getAmount();

    @NonNull
    String getType();
}
