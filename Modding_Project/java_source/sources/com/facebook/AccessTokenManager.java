package com.facebook;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.AccessTokenManager;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.internal.Utility;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 22\u00020\u0001:\u000523456B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001b\u0010\rJ\u000f\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\nJ\u0019\u0010\u001d\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001d\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R(\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010-\u001a\u0004\u0018\u00010\u00138F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00067"}, d2 = {"Lcom/facebook/AccessTokenManager;", "", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "localBroadcastManager", "Lcom/facebook/AccessTokenCache;", "accessTokenCache", "<init>", "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/AccessTokenCache;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessToken$AccessTokenRefreshCallback;", "callback", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V", "Lcom/facebook/AccessToken;", "currentAccessToken", "saveToCache", "Wwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;Z)V", "oldAccessToken", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessTokenCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessToken;", "currentAccessTokenField", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "tokenRefreshInProgress", "Ljava/util/Date;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Date;", "lastAttemptedTokenExtendDate", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)V", "Companion", "FacebookRefreshTokenInfo", "InstagramRefreshTokenInfo", "RefreshResult", "RefreshTokenInfo", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AccessTokenManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AccessTokenManager f5887Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AccessToken f5890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AccessTokenCache f5891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LocalBroadcastManager f5892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f5889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Date f5888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Date(0);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0011\u0010\rR\u0014\u0010\u0013\u001a\u00020\u00128\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00128\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00128\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00128\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00128\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0014R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/facebook/AccessTokenManager$Companion;", "", "<init>", "()V", "Lcom/facebook/AccessTokenManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/AccessTokenManager;", "Lcom/facebook/AccessToken;", "accessToken", "Lcom/facebook/GraphRequest$Callback;", "callback", "Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;", "Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "ACTION_CURRENT_ACCESS_TOKEN_CHANGED", "Ljava/lang/String;", "EXTRA_NEW_ACCESS_TOKEN", "EXTRA_OLD_ACCESS_TOKEN", "ME_PERMISSIONS_GRAPH_PATH", "SHARED_PREFERENCES_NAME", "TAG", "", "TOKEN_EXTEND_RETRY_SECONDS", "I", "TOKEN_EXTEND_THRESHOLD_SECONDS", "instanceField", "Lcom/facebook/AccessTokenManager;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RefreshTokenInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessToken accessToken) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = "facebook";
            }
            if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwww2, "instagram")) {
                return new InstagramRefreshTokenInfo();
            }
            return new FacebookRefreshTokenInfo();
        }

        @JvmStatic
        @NotNull
        public final AccessTokenManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            AccessTokenManager accessTokenManager;
            AccessTokenManager accessTokenManager2 = AccessTokenManager.f5887Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (accessTokenManager2 == null) {
                synchronized (this) {
                    accessTokenManager = AccessTokenManager.f5887Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (accessTokenManager == null) {
                        AccessTokenManager accessTokenManager3 = new AccessTokenManager(LocalBroadcastManager.getInstance(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()), new AccessTokenCache());
                        AccessTokenManager.f5887Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = accessTokenManager3;
                        accessTokenManager = accessTokenManager3;
                    }
                }
                return accessTokenManager;
            }
            return accessTokenManager2;
        }

        public final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessToken accessToken, GraphRequest.Callback callback) {
            Bundle bundle = new Bundle();
            bundle.putString("fields", "permission,status");
            GraphRequest Wwwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwwww(accessToken, "me/permissions", callback);
            Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
            Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkkk(HttpMethod.GET);
            return Wwwwwwwwwww2;
        }

        public final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessToken accessToken, GraphRequest.Callback callback) {
            RefreshTokenInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken);
            Bundle bundle = new Bundle();
            bundle.putString("grant_type", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            bundle.putString("client_id", accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            bundle.putString("fields", "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain");
            GraphRequest Wwwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwwww(accessToken, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), callback);
            Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
            Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkkk(HttpMethod.GET);
            return Wwwwwwwwwww2;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0007\u0010\u0006\u001a\u0004\b\u0005\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/facebook/AccessTokenManager$FacebookRefreshTokenInfo;", "Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "graphPath", "grantType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class FacebookRefreshTokenInfo implements RefreshTokenInfo {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5894Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "oauth/access_token";
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "fb_extend_sso_token";

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5894Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5893Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b\u0007\u0010\u0006\u001a\u0004\b\u0005\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/facebook/AccessTokenManager$InstagramRefreshTokenInfo;", "Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "graphPath", "grantType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class InstagramRefreshTokenInfo implements RefreshTokenInfo {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "refresh_access_token";
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f5895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "ig_refresh_token";

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.facebook.AccessTokenManager.RefreshTokenInfo
        @NotNull
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0015\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\r\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R$\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0017\u001a\u0004\b\f\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0006\u001a\u0004\b\u001c\u0010\u0007\"\u0004\b\u001d\u0010\t¨\u0006\u001f"}, d2 = {"Lcom/facebook/AccessTokenManager$RefreshResult;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "accessToken", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "expiresAt", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "expiresIn", "", "Ljava/lang/Long;", "()Ljava/lang/Long;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Long;)V", "dataAccessExpirationTime", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "graphDomain", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class RefreshResult {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f5897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Long f5898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f5901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f5897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f5899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f5900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Long l) {
            this.f5898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = l;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f5901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0005\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/facebook/AccessTokenManager$RefreshTokenInfo;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "graphPath", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "grantType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface RefreshTokenInfo {
        @NotNull
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        @NotNull
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public AccessTokenManager(@NotNull LocalBroadcastManager localBroadcastManager, @NotNull AccessTokenCache accessTokenCache) {
        this.f5892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = localBroadcastManager;
        this.f5891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = accessTokenCache;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void Wwwwwwwwwwwwwwwwwww(RefreshResult refreshResult, AccessToken accessToken, AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback, AtomicBoolean atomicBoolean, Set set, Set set2, Set set3, AccessTokenManager accessTokenManager, GraphRequestBatch graphRequestBatch) {
        AccessToken accessToken2;
        String Wwwwwwwwwwwwwwwwwwwww2;
        Set<String> Wwwwwwwwwwwwwwwwwwwwwwww2;
        Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Set Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            Companion companion = Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    Wwwwwwwwwwwwwwwwwwwww2 = null;
                } else {
                    Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww();
                }
                if (Wwwwwwwwwwwwwwwwwwwww2 == accessToken.Wwwwwwwwwwwwwwwwwwwww()) {
                    if (!atomicBoolean.get() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                        if (accessTokenRefreshCallback != null) {
                            accessTokenRefreshCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FacebookException("Failed to refresh access token"));
                        }
                        accessTokenManager.f5889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
                    }
                    Date Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Date(refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() * 1000);
                    } else if (refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Date((refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() * 1000) + new Date().getTime());
                    }
                    Date date = Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwww();
                    }
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    String Wwwwwwwwwwwwwwwwwwwww3 = accessToken.Wwwwwwwwwwwwwwwwwwwww();
                    if (atomicBoolean.get()) {
                        Wwwwwwwwwwwwwwwwwwwwwwww2 = set;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if (atomicBoolean.get()) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = set2;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if (atomicBoolean.get()) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = set3;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    AccessTokenSource Wwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwww();
                    Date date2 = new Date();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Date(1000 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.longValue());
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    Date date3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = accessToken.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    Set<String> set4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    AccessToken accessToken3 = new AccessToken(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwww2, set4, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwww2, date, date2, date3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                    try {
                        companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww(accessToken3);
                        accessTokenManager.f5889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
                        if (accessTokenRefreshCallback != null) {
                            accessTokenRefreshCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken3);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        accessToken2 = accessToken3;
                        accessTokenManager.f5889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
                        if (accessTokenRefreshCallback != null && accessToken2 != null) {
                            accessTokenRefreshCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken2);
                        }
                        throw th;
                    }
                }
            }
            if (accessTokenRefreshCallback != null) {
                accessTokenRefreshCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FacebookException("No current access token to refresh"));
            }
            accessTokenManager.f5889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
        } catch (Throwable th2) {
            th = th2;
            accessToken2 = null;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwww(RefreshResult refreshResult, GraphResponse graphResponse) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString("access_token"));
        refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optInt("expires_at"));
        refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optInt("expires_in"));
        refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optLong("data_access_expiration_time")));
        refreshResult.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString("graph_domain", null));
    }

    public static final void Wwwwwwwwwwwwwwwwwwwww(AtomicBoolean atomicBoolean, Set set, Set set2, Set set3, GraphResponse graphResponse) {
        JSONArray optJSONArray;
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && (optJSONArray = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optJSONArray("data")) != null) {
            atomicBoolean.set(true);
            int length = optJSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        String optString = optJSONObject.optString("permission");
                        String optString2 = optJSONObject.optString(NotificationCompat.CATEGORY_STATUS);
                        if (!Utility.Kk(optString) && !Utility.Kk(optString2)) {
                            String lowerCase = optString2.toLowerCase(Locale.US);
                            int hashCode = lowerCase.hashCode();
                            if (hashCode != -1309235419) {
                                if (hashCode != 280295099) {
                                    if (hashCode == 568196142 && lowerCase.equals("declined")) {
                                        set2.add(optString);
                                    }
                                    Intrinsics.stringPlus("Unexpected status: ", lowerCase);
                                } else {
                                    if (lowerCase.equals("granted")) {
                                        set.add(optString);
                                    }
                                    Intrinsics.stringPlus("Unexpected status: ", lowerCase);
                                }
                            } else {
                                if (lowerCase.equals("expired")) {
                                    set3.add(optString);
                                }
                                Intrinsics.stringPlus("Unexpected status: ", lowerCase);
                            }
                        }
                    }
                    if (i2 < length) {
                        i = i2;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(AccessTokenManager accessTokenManager, AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        accessTokenManager.Wwwwwwwwwwwwwwwwwwwwww(accessTokenRefreshCallback);
    }

    public final boolean Wwwwwwwwwwwwww() {
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return false;
        }
        long time = new Date().getTime();
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().canExtendToken() || time - this.f5888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getTime() <= 3600000 || time - Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwww().getTime() <= SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
            return false;
        }
        return true;
    }

    public final void Wwwwwwwwwwwwwww() {
        Date Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        AccessToken.Companion companion = AccessToken.Companion;
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        AlarmManager alarmManager = (AlarmManager) Wwwwwwwwwwwwwwwwwwwwwww2.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && alarmManager != null) {
                Intent intent = new Intent(Wwwwwwwwwwwwwwwwwwwwwww2, CurrentAccessTokenExpirationBroadcastReceiver.class);
                intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
                PushAutoTrackHelper.hookIntentGetBroadcast(Wwwwwwwwwwwwwwwwwwwwwww2, 0, intent, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
                PendingIntent broadcast = PendingIntent.getBroadcast(Wwwwwwwwwwwwwwwwwwwwwww2, 0, intent, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
                PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, Wwwwwwwwwwwwwwwwwwwwwww2, 0, intent, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
                try {
                    alarmManager.set(1, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww().getTime(), broadcast);
                } catch (Exception unused) {
                }
            }
        }
    }

    public final void Wwwwwwwwwwwwwwww(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f5890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f5890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = accessToken;
        this.f5889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
        this.f5888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.f5891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken);
            } else {
                this.f5891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Utility utility = Utility.INSTANCE;
                Utility.Wwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        if (!Utility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken2, accessToken)) {
            Wwwwwwwwwwwwwwwwww(accessToken2, accessToken);
            Wwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwww(@Nullable AccessToken accessToken) {
        Wwwwwwwwwwwwwwww(accessToken, true);
    }

    public final void Wwwwwwwwwwwwwwwwww(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f5892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.sendBroadcast(intent);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(final AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            if (accessTokenRefreshCallback != null) {
                accessTokenRefreshCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FacebookException("No current access token to refresh"));
            }
        } else if (!this.f5889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            if (accessTokenRefreshCallback == null) {
                return;
            }
            accessTokenRefreshCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FacebookException("Refresh already in progress"));
        } else {
            this.f5888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final HashSet hashSet3 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final RefreshResult refreshResult = new RefreshResult();
            Companion companion = Companion;
            GraphRequestBatch graphRequestBatch = new GraphRequestBatch(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, new GraphRequest.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    AccessTokenManager.Wwwwwwwwwwwwwwwwwwwww(atomicBoolean, hashSet, hashSet2, hashSet3, graphResponse);
                }
            }), companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, new GraphRequest.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    AccessTokenManager.Wwwwwwwwwwwwwwwwwwww(AccessTokenManager.RefreshResult.this, graphResponse);
                }
            }));
            graphRequestBatch.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GraphRequestBatch.Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequestBatch.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphRequestBatch graphRequestBatch2) {
                    AccessTokenManager.Wwwwwwwwwwwwwwwwwww(AccessTokenManager.RefreshResult.this, Wwwwwwwwwwwwwwwwwwwwwwwwww2, accessTokenRefreshCallback, atomicBoolean, hashSet, hashSet2, hashSet3, this, graphRequestBatch2);
                }
            });
            graphRequestBatch.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable final AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
            Wwwwwwwwwwwwwwwwwwwwww(accessTokenRefreshCallback);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AccessTokenManager.Wwwwwwwwwwwwwwwwwwwwwww(AccessTokenManager.this, accessTokenRefreshCallback);
                }
            });
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f5891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return false;
        }
        Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, false);
        return true;
    }

    @Nullable
    public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!Wwwwwwwwwwwwww()) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwww());
    }
}
