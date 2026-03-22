package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.NativeSessionFileProvider;
import com.google.firebase.crashlytics.internal.model.StaticSessionData;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class FirebaseCrashlyticsNdk implements CrashlyticsNativeComponent {
    private static FirebaseCrashlyticsNdk instance;
    private final CrashpadController controller;
    private String currentSessionId;
    private boolean installHandlerDuringPrepareSession;
    private SignalHandlerInstaller signalHandlerInstaller;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface SignalHandlerInstaller {
        void installHandler();
    }

    public FirebaseCrashlyticsNdk(@NonNull CrashpadController crashpadController, boolean z) {
        this.controller = crashpadController;
        this.installHandlerDuringPrepareSession = z;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FirebaseCrashlyticsNdk firebaseCrashlyticsNdk, String str, String str2, long j, StaticSessionData staticSessionData) {
        firebaseCrashlyticsNdk.getClass();
        Logger logger = Logger.getLogger();
        logger.d("Initializing native session: " + str);
        if (!firebaseCrashlyticsNdk.controller.initialize(str, str2, j, staticSessionData)) {
            Logger logger2 = Logger.getLogger();
            logger2.w("Failed to initialize Crashlytics NDK for session " + str);
        }
    }

    public static FirebaseCrashlyticsNdk create(@NonNull Context context, boolean z) {
        FirebaseCrashlyticsNdk firebaseCrashlyticsNdk = new FirebaseCrashlyticsNdk(new CrashpadController(context, new JniNativeApi(context), new FileStore(context)), z);
        instance = firebaseCrashlyticsNdk;
        return firebaseCrashlyticsNdk;
    }

    @NonNull
    public static FirebaseCrashlyticsNdk getInstance() {
        FirebaseCrashlyticsNdk firebaseCrashlyticsNdk = instance;
        if (firebaseCrashlyticsNdk != null) {
            return firebaseCrashlyticsNdk;
        }
        throw new NullPointerException("FirebaseCrashlyticsNdk component is not present.");
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    @NonNull
    public NativeSessionFileProvider getSessionFileProvider(@NonNull String str) {
        return new SessionFilesProvider(this.controller.getFilesForSession(str));
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public boolean hasCrashDataForCurrentSession() {
        String str = this.currentSessionId;
        if (str != null && hasCrashDataForSession(str)) {
            return true;
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public boolean hasCrashDataForSession(@NonNull String str) {
        return this.controller.hasCrashDataForSession(str);
    }

    public synchronized void installSignalHandler() {
        SignalHandlerInstaller signalHandlerInstaller = this.signalHandlerInstaller;
        if (signalHandlerInstaller != null) {
            signalHandlerInstaller.installHandler();
            return;
        }
        if (this.installHandlerDuringPrepareSession) {
            Logger.getLogger().w("Native signal handler already installed; skipping re-install.");
        } else {
            Logger.getLogger().d("Deferring signal handler installation until the FirebaseCrashlyticsNdk session has been prepared");
            this.installHandlerDuringPrepareSession = true;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent
    public synchronized void prepareNativeSession(@NonNull final String str, @NonNull final String str2, final long j, @NonNull final StaticSessionData staticSessionData) {
        try {
            try {
                this.currentSessionId = str;
                SignalHandlerInstaller signalHandlerInstaller = new SignalHandlerInstaller() { // from class: com.google.firebase.crashlytics.ndk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.google.firebase.crashlytics.ndk.FirebaseCrashlyticsNdk.SignalHandlerInstaller
                    public final void installHandler() {
                        FirebaseCrashlyticsNdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FirebaseCrashlyticsNdk.this, str, str2, j, staticSessionData);
                    }
                };
                this.signalHandlerInstaller = signalHandlerInstaller;
                if (this.installHandlerDuringPrepareSession) {
                    signalHandlerInstaller.installHandler();
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }
}
