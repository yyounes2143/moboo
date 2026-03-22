package com.facebook.appevents;

import android.preference.PreferenceManager;
import com.facebook.FacebookSdk;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003R\u001c\u0010\r\u001a\n \n*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\fR\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/AnalyticsUserIDStore;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "lock", "userID", "", "Z", "initialized", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AnalyticsUserIDStore {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile boolean f6172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final AnalyticsUserIDStore INSTANCE = new AnalyticsUserIDStore();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AnalyticsUserIDStore.class.getSimpleName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ReentrantReadWriteLock f6174Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ReentrantReadWriteLock();

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f6172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        InternalAppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsUserIDStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        });
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!f6172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f6174Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantReadWriteLock.readLock().lock();
        try {
            String str = f6173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            reentrantReadWriteLock.readLock().unlock();
            return str;
        } catch (Throwable th) {
            f6174Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.readLock().unlock();
            throw th;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f6172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f6174Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (!f6172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                f6173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
                f6172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            }
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            f6174Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.writeLock().unlock();
            throw th;
        }
    }
}
