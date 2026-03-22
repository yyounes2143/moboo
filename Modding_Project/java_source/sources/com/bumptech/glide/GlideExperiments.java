package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GlideExperiments {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, Experiment> f4015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<Class<?>, Experiment> f4016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

        public GlideExperiments Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new GlideExperiments(this);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Experiment {
    }

    public GlideExperiments(Builder builder) {
        this.f4015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableMap(new HashMap(builder.f4016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<? extends Experiment> cls) {
        return this.f4015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(cls);
    }
}
