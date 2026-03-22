package com.google.firebase.sessions;

import android.content.Context;
import android.os.Build;
import androidx.datastore.DataStoreFile;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.MultiProcessDataStoreFactory;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.google.android.datatransport.TransportFactory;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.dagger.Binds;
import com.google.firebase.sessions.dagger.BindsInstance;
import com.google.firebase.sessions.dagger.Component;
import com.google.firebase.sessions.dagger.Module;
import com.google.firebase.sessions.dagger.Provides;
import com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher;
import com.google.firebase.sessions.settings.LocalOverrideSettings;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.firebase.sessions.settings.RemoteSettingsFetcher;
import com.google.firebase.sessions.settings.SessionConfigs;
import com.google.firebase.sessions.settings.SessionConfigsSerializer;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.google.firebase.sessions.settings.SettingsCache;
import com.google.firebase.sessions.settings.SettingsCacheImpl;
import com.google.firebase.sessions.settings.SettingsProvider;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.List;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Component(modules = {MainModule.class})
@Singleton
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\ba\u0018\u00002\u00020\u0001:\u0002\u0016\u0017R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsComponent;", "", "firebaseSessions", "Lcom/google/firebase/sessions/FirebaseSessions;", "getFirebaseSessions", "()Lcom/google/firebase/sessions/FirebaseSessions;", "sessionFirelogPublisher", "Lcom/google/firebase/sessions/SessionFirelogPublisher;", "getSessionFirelogPublisher", "()Lcom/google/firebase/sessions/SessionFirelogPublisher;", "sessionGenerator", "Lcom/google/firebase/sessions/SessionGenerator;", "getSessionGenerator", "()Lcom/google/firebase/sessions/SessionGenerator;", "sessionsSettings", "Lcom/google/firebase/sessions/settings/SessionsSettings;", "getSessionsSettings", "()Lcom/google/firebase/sessions/settings/SessionsSettings;", "sharedSessionRepository", "Lcom/google/firebase/sessions/SharedSessionRepository;", "getSharedSessionRepository", "()Lcom/google/firebase/sessions/SharedSessionRepository;", "Builder", "MainModule", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public interface FirebaseSessionsComponent {

    /* compiled from: Proguard */
    @Component.Builder
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H'J\u0012\u0010\u0004\u001a\u00020\u00002\b\b\u0001\u0010\u0004\u001a\u00020\u0005H'J\u0012\u0010\u0006\u001a\u00020\u00002\b\b\u0001\u0010\u0006\u001a\u00020\u0005H'J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH'J\u0016\u0010\u000b\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH'J\b\u0010\u000e\u001a\u00020\u000fH&¨\u0006\u0010"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;", "", "appContext", "Landroid/content/Context;", "backgroundDispatcher", "Lkotlin/coroutines/CoroutineContext;", "blockingDispatcher", "firebaseApp", "Lcom/google/firebase/FirebaseApp;", "firebaseInstallationsApi", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "transportFactoryProvider", "Lcom/google/firebase/inject/Provider;", "Lcom/google/android/datatransport/TransportFactory;", "build", "Lcom/google/firebase/sessions/FirebaseSessionsComponent;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public interface Builder {
        @BindsInstance
        @NotNull
        Builder appContext(@NotNull Context context);

        @BindsInstance
        @NotNull
        Builder backgroundDispatcher(@Background @NotNull CoroutineContext coroutineContext);

        @BindsInstance
        @NotNull
        Builder blockingDispatcher(@Blocking @NotNull CoroutineContext coroutineContext);

        @NotNull
        FirebaseSessionsComponent build();

        @BindsInstance
        @NotNull
        Builder firebaseApp(@NotNull FirebaseApp firebaseApp);

        @BindsInstance
        @NotNull
        Builder firebaseInstallationsApi(@NotNull FirebaseInstallationsApi firebaseInstallationsApi);

        @BindsInstance
        @NotNull
        Builder transportFactoryProvider(@NotNull Provider<TransportFactory> provider);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u000bH'J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u000eH'J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0010H'J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0013H'J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0016H'J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0019H'¨\u0006\u001b"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;", "", "eventGDTLoggerInterface", "Lcom/google/firebase/sessions/EventGDTLoggerInterface;", "impl", "Lcom/google/firebase/sessions/EventGDTLogger;", "sessionFirelogPublisher", "Lcom/google/firebase/sessions/SessionFirelogPublisher;", "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;", "crashlyticsSettingsFetcher", "Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;", "Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;", "localOverrideSettings", "Lcom/google/firebase/sessions/settings/SettingsProvider;", "Lcom/google/firebase/sessions/settings/LocalOverrideSettings;", "remoteSettings", "Lcom/google/firebase/sessions/settings/RemoteSettings;", "settingsCache", "Lcom/google/firebase/sessions/settings/SettingsCache;", "Lcom/google/firebase/sessions/settings/SettingsCacheImpl;", "sharedSessionRepository", "Lcom/google/firebase/sessions/SharedSessionRepository;", "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;", "processDataManager", "Lcom/google/firebase/sessions/ProcessDataManager;", "Lcom/google/firebase/sessions/ProcessDataManagerImpl;", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Module
    /* loaded from: classes5.dex */
    public interface MainModule {
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007J\b\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u0012H\u0007J(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\r2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\\\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00180\r\"\u0004\b\u0000\u0010\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001c2\u0014\b\u0002\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00180\u001f0\u001e2\u0006\u0010 \u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#H\u0002J\b\u0010%\u001a\u00020&H\u0002J\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020$H\u0002¨\u0006*"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;", "", "<init>", "()V", "timeProvider", "Lcom/google/firebase/sessions/TimeProvider;", "uuidGenerator", "Lcom/google/firebase/sessions/UuidGenerator;", "applicationInfo", "Lcom/google/firebase/sessions/ApplicationInfo;", "firebaseApp", "Lcom/google/firebase/FirebaseApp;", "sessionConfigsDataStore", "Landroidx/datastore/core/DataStore;", "Lcom/google/firebase/sessions/settings/SessionConfigs;", "appContext", "Landroid/content/Context;", "blockingDispatcher", "Lkotlin/coroutines/CoroutineContext;", "sessionDataStore", "Lcom/google/firebase/sessions/SessionData;", "sessionDataSerializer", "Lcom/google/firebase/sessions/SessionDataSerializer;", "createDataStore", "T", "serializer", "Landroidx/datastore/core/Serializer;", "corruptionHandler", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "migrations", "", "Landroidx/datastore/core/DataMigration;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "produceFile", "Lkotlin/Function0;", "Ljava/io/File;", "loadDataStoreSharedCounter", "", "prepDataStoreFile", "", "dataStoreFile", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
        /* loaded from: classes5.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            private final <T> DataStore<T> createDataStore(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, CoroutineScope coroutineScope, Function0<? extends File> function0) {
                if (loadDataStoreSharedCounter()) {
                    return MultiProcessDataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, coroutineScope, function0);
                }
                return DataStoreFactory.INSTANCE.create(serializer, replaceFileCorruptionHandler, list, coroutineScope, function0);
            }

            public static /* synthetic */ DataStore createDataStore$default(Companion companion, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, CoroutineScope coroutineScope, Function0 function0, int i, Object obj) {
                if ((i & 4) != 0) {
                    list = CollectionsKt.emptyList();
                }
                return companion.createDataStore(serializer, replaceFileCorruptionHandler, list, coroutineScope, function0);
            }

            private final boolean loadDataStoreSharedCounter() {
                try {
                    System.loadLibrary("datastore_shared_counter");
                    return true;
                } catch (SecurityException | UnsatisfiedLinkError unused) {
                    return false;
                }
            }

            private final void prepDataStoreFile(File file) {
                Path path;
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    if (parentFile.exists() && !parentFile.isDirectory() && Intrinsics.areEqual(parentFile.getName(), "firebaseSessions") && !parentFile.delete()) {
                        throw new IOException("Failed to delete conflicting file: " + parentFile);
                    } else if (!parentFile.isDirectory()) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            try {
                                path = parentFile.toPath();
                                Files.createDirectories(path, new FileAttribute[0]);
                            } catch (Exception e) {
                                throw new IOException("Failed to create directory: " + parentFile, e);
                            }
                        } else if (!parentFile.mkdirs() && !parentFile.isDirectory()) {
                            throw new IOException("Failed to create directory: " + parentFile);
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final SessionConfigs sessionConfigsDataStore$lambda$0(CorruptionException corruptionException) {
                return SessionConfigsSerializer.INSTANCE.getDefaultValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File sessionConfigsDataStore$lambda$2(Context context) {
                File dataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionConfigsDataStore.data");
                $$INSTANCE.prepDataStoreFile(dataStoreFile);
                return dataStoreFile;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final File sessionDataStore$lambda$5(Context context) {
                File dataStoreFile = DataStoreFile.dataStoreFile(context, "firebaseSessions/sessionDataStore.data");
                $$INSTANCE.prepDataStoreFile(dataStoreFile);
                return dataStoreFile;
            }

            @Singleton
            @Provides
            @NotNull
            public final ApplicationInfo applicationInfo(@NotNull FirebaseApp firebaseApp) {
                return SessionEvents.INSTANCE.getApplicationInfo(firebaseApp);
            }

            @Singleton
            @Provides
            @NotNull
            public final DataStore<SessionConfigs> sessionConfigsDataStore(@NotNull final Context context, @Blocking @NotNull CoroutineContext coroutineContext) {
                return createDataStore$default(this, SessionConfigsSerializer.INSTANCE, new ReplaceFileCorruptionHandler(new Function1() { // from class: com.google.firebase.sessions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        SessionConfigs sessionConfigsDataStore$lambda$0;
                        sessionConfigsDataStore$lambda$0 = FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$0((CorruptionException) obj);
                        return sessionConfigsDataStore$lambda$0;
                    }
                }), null, CoroutineScopeKt.CoroutineScope(coroutineContext), new Function0() { // from class: com.google.firebase.sessions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        File sessionConfigsDataStore$lambda$2;
                        sessionConfigsDataStore$lambda$2 = FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$2(context);
                        return sessionConfigsDataStore$lambda$2;
                    }
                }, 4, null);
            }

            @Singleton
            @Provides
            @NotNull
            public final DataStore<SessionData> sessionDataStore(@NotNull final Context context, @Blocking @NotNull CoroutineContext coroutineContext, @NotNull final SessionDataSerializer sessionDataSerializer) {
                return createDataStore$default(this, sessionDataSerializer, new ReplaceFileCorruptionHandler(new Function1() { // from class: com.google.firebase.sessions.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        SessionData defaultValue;
                        CorruptionException corruptionException = (CorruptionException) obj;
                        defaultValue = SessionDataSerializer.this.getDefaultValue();
                        return defaultValue;
                    }
                }), null, CoroutineScopeKt.CoroutineScope(coroutineContext), new Function0() { // from class: com.google.firebase.sessions.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        File sessionDataStore$lambda$5;
                        sessionDataStore$lambda$5 = FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$5(context);
                        return sessionDataStore$lambda$5;
                    }
                }, 4, null);
            }

            @Singleton
            @Provides
            @NotNull
            public final TimeProvider timeProvider() {
                return TimeProviderImpl.INSTANCE;
            }

            @Singleton
            @Provides
            @NotNull
            public final UuidGenerator uuidGenerator() {
                return UuidGeneratorImpl.INSTANCE;
            }
        }

        @Singleton
        @Binds
        @NotNull
        CrashlyticsSettingsFetcher crashlyticsSettingsFetcher(@NotNull RemoteSettingsFetcher remoteSettingsFetcher);

        @Singleton
        @Binds
        @NotNull
        EventGDTLoggerInterface eventGDTLoggerInterface(@NotNull EventGDTLogger eventGDTLogger);

        @NotNull
        @Singleton
        @Binds
        @LocalOverrideSettingsProvider
        SettingsProvider localOverrideSettings(@NotNull LocalOverrideSettings localOverrideSettings);

        @Singleton
        @Binds
        @NotNull
        ProcessDataManager processDataManager(@NotNull ProcessDataManagerImpl processDataManagerImpl);

        @NotNull
        @Singleton
        @RemoteSettingsProvider
        @Binds
        SettingsProvider remoteSettings(@NotNull RemoteSettings remoteSettings);

        @Singleton
        @Binds
        @NotNull
        SessionFirelogPublisher sessionFirelogPublisher(@NotNull SessionFirelogPublisherImpl sessionFirelogPublisherImpl);

        @Singleton
        @Binds
        @NotNull
        SettingsCache settingsCache(@NotNull SettingsCacheImpl settingsCacheImpl);

        @Singleton
        @Binds
        @NotNull
        SharedSessionRepository sharedSessionRepository(@NotNull SharedSessionRepositoryImpl sharedSessionRepositoryImpl);
    }

    @NotNull
    FirebaseSessions getFirebaseSessions();

    @NotNull
    SessionFirelogPublisher getSessionFirelogPublisher();

    @NotNull
    SessionGenerator getSessionGenerator();

    @NotNull
    SessionsSettings getSessionsSettings();

    @NotNull
    SharedSessionRepository getSharedSessionRepository();
}
