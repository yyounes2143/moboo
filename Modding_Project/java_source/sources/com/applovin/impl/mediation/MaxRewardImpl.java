package com.applovin.impl.mediation;

import androidx.annotation.NonNull;
import com.applovin.mediation.MaxReward;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MaxRewardImpl implements MaxReward {

    /* renamed from: a  reason: collision with root package name */
    private final String f3238a;
    private final int b;

    private MaxRewardImpl(int i, String str) {
        if (i >= 0) {
            this.f3238a = str;
            this.b = i;
            return;
        }
        throw new IllegalArgumentException("Reward amount must be greater than or equal to 0");
    }

    public static MaxReward create(int i, String str) {
        return new MaxRewardImpl(i, str);
    }

    public static MaxReward createDefault() {
        return create(0, "");
    }

    @Override // com.applovin.mediation.MaxReward
    public final int getAmount() {
        return this.b;
    }

    @Override // com.applovin.mediation.MaxReward
    public final String getLabel() {
        return this.f3238a;
    }

    @NonNull
    public String toString() {
        return "MaxReward{amount=" + this.b + ", label=" + this.f3238a + "}";
    }
}
