package com.google.firebase.sessions;

import android.content.Context;
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
public final class ProcessDataManagerImpl_Factory implements Factory<ProcessDataManagerImpl> {
    private final Provider<Context> appContextProvider;
    private final Provider<UuidGenerator> uuidGeneratorProvider;

    public ProcessDataManagerImpl_Factory(Provider<Context> provider, Provider<UuidGenerator> provider2) {
        this.appContextProvider = provider;
        this.uuidGeneratorProvider = provider2;
    }

    public static ProcessDataManagerImpl_Factory create(Provider<Context> provider, Provider<UuidGenerator> provider2) {
        return new ProcessDataManagerImpl_Factory(provider, provider2);
    }

    public static ProcessDataManagerImpl newInstance(Context context, UuidGenerator uuidGenerator) {
        return new ProcessDataManagerImpl(context, uuidGenerator);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, javax.inject.Provider
    public ProcessDataManagerImpl get() {
        return newInstance(this.appContextProvider.get(), this.uuidGeneratorProvider.get());
    }
}
