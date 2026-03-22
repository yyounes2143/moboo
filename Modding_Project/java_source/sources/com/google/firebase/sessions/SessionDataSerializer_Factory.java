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
public final class SessionDataSerializer_Factory implements Factory<SessionDataSerializer> {
    private final Provider<SessionGenerator> sessionGeneratorProvider;

    public SessionDataSerializer_Factory(Provider<SessionGenerator> provider) {
        this.sessionGeneratorProvider = provider;
    }

    public static SessionDataSerializer_Factory create(Provider<SessionGenerator> provider) {
        return new SessionDataSerializer_Factory(provider);
    }

    public static SessionDataSerializer newInstance(SessionGenerator sessionGenerator) {
        return new SessionDataSerializer(sessionGenerator);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, javax.inject.Provider
    public SessionDataSerializer get() {
        return newInstance(this.sessionGeneratorProvider.get());
    }
}
