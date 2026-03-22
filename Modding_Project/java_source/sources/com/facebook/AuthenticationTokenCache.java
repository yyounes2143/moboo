package com.facebook;

import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/facebook/AuthenticationTokenCache;", "", "Landroid/content/SharedPreferences;", "sharedPreferences", "<init>", "(Landroid/content/SharedPreferences;)V", "()V", "Lcom/facebook/AuthenticationToken;", "authenticationToken", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AuthenticationToken;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/SharedPreferences;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationTokenCache {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharedPreferences f5912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/AuthenticationTokenCache$Companion;", "", "()V", "CACHED_AUTHENTICATION_TOKEN_KEY", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public AuthenticationTokenCache(@NotNull SharedPreferences sharedPreferences) {
        this.f5912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sharedPreferences;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AuthenticationToken authenticationToken) {
        try {
            this.f5912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit().putString("com.facebook.AuthenticationManager.CachedAuthenticationToken", authenticationToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString()).apply();
        } catch (JSONException unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f5912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit().remove("com.facebook.AuthenticationManager.CachedAuthenticationToken").apply();
    }

    public AuthenticationTokenCache() {
        this(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.AuthenticationTokenManager.SharedPreferences", 0));
    }
}
