package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.DaggerGenerated;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.QualifierMetadata;
import com.google.firebase.sessions.dagger.internal.ScopeMetadata;
import javax.inject.Provider;
/* compiled from: Proguard */
@ScopeMetadata("javax.inject.Singleton")
@QualifierMetadata
@DaggerGenerated
/* loaded from: classes5.dex */
public final class SessionGenerator_Factory implements Factory<SessionGenerator> {
    private final Provider<TimeProvider> timeProvider;
    private final Provider<UuidGenerator> uuidGeneratorProvider;

    public SessionGenerator_Factory(Provider<TimeProvider> provider, Provider<UuidGenerator> provider2) {
        this.timeProvider = provider;
        this.uuidGeneratorProvider = provider2;
    }

    public static SessionGenerator_Factory create(Provider<TimeProvider> provider, Provider<UuidGenerator> provider2) {
        return new SessionGenerator_Factory(provider, provider2);
    }

    public static SessionGenerator newInstance(TimeProvider timeProvider, UuidGenerator uuidGenerator) {
        return new SessionGenerator(timeProvider, uuidGenerator);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, javax.inject.Provider
    public SessionGenerator get() {
        return newInstance(this.timeProvider.get(), this.uuidGeneratorProvider.get());
    }
}
