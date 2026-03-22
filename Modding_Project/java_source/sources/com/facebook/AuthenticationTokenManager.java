package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.Utility;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0013\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\r\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ#\u0010\u0010\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R(\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/facebook/AuthenticationTokenManager;", "", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "localBroadcastManager", "Lcom/facebook/AuthenticationTokenCache;", "authenticationTokenCache", "<init>", "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/AuthenticationTokenCache;)V", "Lcom/facebook/AuthenticationToken;", "currentAuthenticationToken", "", "saveToCache", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AuthenticationToken;Z)V", "oldAuthenticationToken", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AuthenticationToken;Lcom/facebook/AuthenticationToken;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AuthenticationTokenCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AuthenticationToken;", "currentAuthenticationTokenField", "value", "()Lcom/facebook/AuthenticationToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AuthenticationToken;)V", "Companion", "CurrentAuthenticationTokenChangedBroadcastReceiver", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationTokenManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AuthenticationTokenManager f5936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AuthenticationToken f5937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AuthenticationTokenCache f5938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LocalBroadcastManager f5939Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0014\u0010\r\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/facebook/AuthenticationTokenManager$Companion;", "", "<init>", "()V", "Lcom/facebook/AuthenticationTokenManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/AuthenticationTokenManager;", "", "ACTION_CURRENT_AUTHENTICATION_TOKEN_CHANGED", "Ljava/lang/String;", "EXTRA_NEW_AUTHENTICATION_TOKEN", "EXTRA_OLD_AUTHENTICATION_TOKEN", "SHARED_PREFERENCES_NAME", "TAG", "instanceField", "Lcom/facebook/AuthenticationTokenManager;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final AuthenticationTokenManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            AuthenticationTokenManager authenticationTokenManager;
            AuthenticationTokenManager authenticationTokenManager2 = AuthenticationTokenManager.f5936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (authenticationTokenManager2 == null) {
                synchronized (this) {
                    authenticationTokenManager = AuthenticationTokenManager.f5936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (authenticationTokenManager == null) {
                        AuthenticationTokenManager authenticationTokenManager3 = new AuthenticationTokenManager(LocalBroadcastManager.getInstance(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()), new AuthenticationTokenCache());
                        AuthenticationTokenManager.f5936Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = authenticationTokenManager3;
                        authenticationTokenManager = authenticationTokenManager3;
                    }
                }
                return authenticationTokenManager;
            }
            return authenticationTokenManager2;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/facebook/AuthenticationTokenManager$CurrentAuthenticationTokenChangedBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class CurrentAuthenticationTokenChangedBroadcastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        }
    }

    public AuthenticationTokenManager(@NotNull LocalBroadcastManager localBroadcastManager, @NotNull AuthenticationTokenCache authenticationTokenCache) {
        this.f5939Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = localBroadcastManager;
        this.f5938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = authenticationTokenCache;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(AuthenticationToken authenticationToken, boolean z) {
        AuthenticationToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = authenticationToken;
        if (z) {
            if (authenticationToken != null) {
                this.f5938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(authenticationToken);
            } else {
                this.f5938Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Utility utility = Utility.INSTANCE;
                Utility.Wwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        if (!Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, authenticationToken)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, authenticationToken);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable AuthenticationToken authenticationToken) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(authenticationToken, true);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AuthenticationToken authenticationToken, AuthenticationToken authenticationToken2) {
        Intent intent = new Intent(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), CurrentAuthenticationTokenChangedBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_AUTHENTICATION_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_AUTHENTICATION_TOKEN", authenticationToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_AUTHENTICATION_TOKEN", authenticationToken2);
        this.f5939Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.sendBroadcast(intent);
    }

    @Nullable
    public final AuthenticationToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5937Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
