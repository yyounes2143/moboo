package com.facebook.login;

import android.content.ComponentName;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0016¨\u0006\f"}, d2 = {"Lcom/facebook/login/CustomTabPrefetchHelper;", "Landroidx/browser/customtabs/CustomTabsServiceConnection;", "()V", "onCustomTabsServiceConnected", "", "name", "Landroid/content/ComponentName;", "newClient", "Landroidx/browser/customtabs/CustomTabsClient;", "onServiceDisconnected", "componentName", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CustomTabPrefetchHelper extends CustomTabsServiceConnection {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ReentrantLock f6919Wwwwwwwwwwwwwwwwwwwwwww = new ReentrantLock();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static CustomTabsSession f6920Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static CustomTabsClient f6921Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0003R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/facebook/login/CustomTabPrefetchHelper$Companion;", "", "<init>", "()V", "Landroid/net/Uri;", "url", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)V", "Landroidx/browser/customtabs/CustomTabsSession;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroidx/browser/customtabs/CustomTabsSession;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/browser/customtabs/CustomTabsClient;", "client", "Landroidx/browser/customtabs/CustomTabsClient;", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "session", "Landroidx/browser/customtabs/CustomTabsSession;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            CustomTabsClient customTabsClient;
            CustomTabPrefetchHelper.f6919Wwwwwwwwwwwwwwwwwwwwwww.lock();
            if (CustomTabPrefetchHelper.f6920Wwwwwwwwwwwwwwwwwwwwwwww == null && (customTabsClient = CustomTabPrefetchHelper.f6921Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                CustomTabPrefetchHelper.f6920Wwwwwwwwwwwwwwwwwwwwwwww = customTabsClient.newSession(null);
            }
            CustomTabPrefetchHelper.f6919Wwwwwwwwwwwwwwwwwwwwwww.unlock();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            CustomTabPrefetchHelper.f6919Wwwwwwwwwwwwwwwwwwwwwww.lock();
            CustomTabsSession customTabsSession = CustomTabPrefetchHelper.f6920Wwwwwwwwwwwwwwwwwwwwwwww;
            if (customTabsSession != null) {
                customTabsSession.mayLaunchUrl(uri, null, null);
            }
            CustomTabPrefetchHelper.f6919Wwwwwwwwwwwwwwwwwwwwwww.unlock();
        }

        @JvmStatic
        @Nullable
        public final CustomTabsSession Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            CustomTabPrefetchHelper.f6919Wwwwwwwwwwwwwwwwwwwwwww.lock();
            CustomTabsSession customTabsSession = CustomTabPrefetchHelper.f6920Wwwwwwwwwwwwwwwwwwwwwwww;
            CustomTabPrefetchHelper.f6920Wwwwwwwwwwwwwwwwwwwwwwww = null;
            CustomTabPrefetchHelper.f6919Wwwwwwwwwwwwwwwwwwwwwww.unlock();
            return customTabsSession;
        }

        public Companion() {
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public void onCustomTabsServiceConnected(@NotNull ComponentName componentName, @NotNull CustomTabsClient customTabsClient) {
        customTabsClient.warmup(0L);
        f6921Wwwwwwwwwwwwwwwwwwwwwwwww = customTabsClient;
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(@NotNull ComponentName componentName) {
    }
}
