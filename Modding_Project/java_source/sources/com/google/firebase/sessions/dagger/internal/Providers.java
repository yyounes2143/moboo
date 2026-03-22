package com.google.firebase.sessions.dagger.internal;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class Providers {
    private Providers() {
    }

    public static <T> Provider<T> asDaggerProvider(final javax.inject.Provider<T> provider) {
        Preconditions.checkNotNull(provider);
        return new Provider<T>() { // from class: com.google.firebase.sessions.dagger.internal.Providers.1
            @Override // com.google.firebase.sessions.dagger.internal.Provider, javax.inject.Provider
            public T get() {
                return (T) javax.inject.Provider.this.get();
            }
        };
    }
}
