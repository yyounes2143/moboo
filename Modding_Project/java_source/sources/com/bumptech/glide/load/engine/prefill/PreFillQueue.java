package com.bumptech.glide.load.engine.prefill;

import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class PreFillQueue {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<PreFillType> f4576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<PreFillType, Integer> f4577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public PreFillType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int size;
        PreFillType preFillType = this.f4576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(this.f4574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Integer num = this.f4577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(preFillType);
        if (num.intValue() == 1) {
            this.f4577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(preFillType);
            this.f4576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(this.f4574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } else {
            this.f4577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(preFillType, Integer.valueOf(num.intValue() - 1));
        }
        this.f4575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww--;
        if (this.f4576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            size = 0;
        } else {
            size = (this.f4574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 1) % this.f4576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        }
        this.f4574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = size;
        return preFillType;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
            return true;
        }
        return false;
    }
}
