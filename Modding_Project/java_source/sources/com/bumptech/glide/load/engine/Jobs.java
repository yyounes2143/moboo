package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class Jobs {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Key, EngineJob<?>> f4408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Key, EngineJob<?>> f4407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, EngineJob<?> engineJob) {
        Map<Key, EngineJob<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(engineJob.Wwwwwwwwwwwwwwwwwww());
        if (engineJob.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(key))) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.remove(key);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, EngineJob<?> engineJob) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(engineJob.Wwwwwwwwwwwwwwwwwww()).put(key, engineJob);
    }

    public final Map<Key, EngineJob<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            return this.f4407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return this.f4408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public EngineJob<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, boolean z) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z).get(key);
    }
}
