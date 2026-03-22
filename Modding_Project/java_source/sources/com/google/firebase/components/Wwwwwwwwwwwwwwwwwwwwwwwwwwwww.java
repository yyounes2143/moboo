package com.google.firebase.components;

import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static Provider Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentContainer componentContainer, Class cls) {
        return componentContainer.setOfProvider(Qualified.unqualified(cls));
    }

    public static Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentContainer componentContainer, Class cls) {
        return componentContainer.setOf(Qualified.unqualified(cls));
    }

    public static Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentContainer componentContainer, Qualified qualified) {
        return (Set) componentContainer.setOfProvider(qualified).get();
    }

    public static Provider Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentContainer componentContainer, Class cls) {
        return componentContainer.getProvider(Qualified.unqualified(cls));
    }

    public static Deferred Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentContainer componentContainer, Class cls) {
        return componentContainer.getDeferred(Qualified.unqualified(cls));
    }

    public static Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentContainer componentContainer, Class cls) {
        return componentContainer.get(Qualified.unqualified(cls));
    }

    public static Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentContainer componentContainer, Qualified qualified) {
        Provider provider = componentContainer.getProvider(qualified);
        if (provider == null) {
            return null;
        }
        return provider.get();
    }
}
