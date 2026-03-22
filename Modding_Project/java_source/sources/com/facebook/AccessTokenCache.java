package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\t\b\u0016¢\u0006\u0004\b\u0006\u0010\bJ\u000f\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\bJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u00188CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000bR\u0016\u0010 \u001a\u0004\u0018\u00010\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000b¨\u0006#"}, d2 = {"Lcom/facebook/AccessTokenCache;", "", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;", "tokenCachingStrategyFactory", "<init>", "(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V", "()V", "Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/AccessToken;", "accessToken", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/SharedPreferences;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;", "Lcom/facebook/LegacyTokenHelper;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/LegacyTokenHelper;", "tokenCachingStrategyField", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/LegacyTokenHelper;", "tokenCachingStrategy", "cachedAccessToken", "legacyAccessToken", "Companion", "SharedPreferencesTokenCachingStrategyFactory", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AccessTokenCache {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LegacyTokenHelper f5884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharedPreferencesTokenCachingStrategyFactory f5885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharedPreferences f5886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/AccessTokenCache$Companion;", "", "()V", "CACHED_ACCESS_TOKEN_KEY", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;", "", "<init>", "()V", "Lcom/facebook/LegacyTokenHelper;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/LegacyTokenHelper;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class SharedPreferencesTokenCachingStrategyFactory {
        @NotNull
        public final LegacyTokenHelper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new LegacyTokenHelper(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), null, 2, null);
        }
    }

    public AccessTokenCache(@NotNull SharedPreferences sharedPreferences, @NotNull SharedPreferencesTokenCachingStrategyFactory sharedPreferencesTokenCachingStrategyFactory) {
        this.f5886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sharedPreferences;
        this.f5885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sharedPreferencesTokenCachingStrategyFactory;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkkk();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AccessToken accessToken) {
        try {
            this.f5886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.Wwwwwwwwwwwwwwwwww().toString()).apply();
        } catch (JSONException unused) {
        }
    }

    @Nullable
    public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return null;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    public final LegacyTokenHelper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            if (this.f5884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                synchronized (this) {
                    if (this.f5884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        this.f5884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f5885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            LegacyTokenHelper legacyTokenHelper = this.f5884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (legacyTokenHelper != null) {
                return legacyTokenHelper;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && LegacyTokenHelper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return null;
    }

    public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String string = this.f5886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string == null) {
            return null;
        }
        try {
            return AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new JSONObject(string));
        } catch (JSONException unused) {
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f5886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public AccessTokenCache() {
        this(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new SharedPreferencesTokenCachingStrategyFactory());
    }
}
