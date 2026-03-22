package com.google.firebase.sessions.settings;

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
public final class LocalOverrideSettings_Factory implements Factory<LocalOverrideSettings> {
    private final Provider<Context> appContextProvider;

    public LocalOverrideSettings_Factory(Provider<Context> provider) {
        this.appContextProvider = provider;
    }

    public static LocalOverrideSettings_Factory create(Provider<Context> provider) {
        return new LocalOverrideSettings_Factory(provider);
    }

    public static LocalOverrideSettings newInstance(Context context) {
        return new LocalOverrideSettings(context);
    }

    @Override // com.google.firebase.sessions.dagger.internal.Factory, com.google.firebase.sessions.dagger.internal.Provider, javax.inject.Provider
    public LocalOverrideSettings get() {
        return newInstance(this.appContextProvider.get());
    }
}
