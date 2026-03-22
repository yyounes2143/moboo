package com.facebook.login;

import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u0018\u0010\u001eR\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001d\u001a\u0004\b \u0010\u001e¨\u0006!"}, d2 = {"Lcom/facebook/login/LoginResult;", "", "Lcom/facebook/AccessToken;", "accessToken", "Lcom/facebook/AuthenticationToken;", "authenticationToken", "", "", "recentlyGrantedPermissions", "recentlyDeniedPermissions", "<init>", "(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/util/Set;Ljava/util/Set;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessToken;", "()Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AuthenticationToken;", "getAuthenticationToken", "()Lcom/facebook/AuthenticationToken;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "()Ljava/util/Set;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getRecentlyDeniedPermissions", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LoginResult {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f7033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f7034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AuthenticationToken f7035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AccessToken f7036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @JvmOverloads
    public LoginResult(@NotNull AccessToken accessToken, @Nullable AuthenticationToken authenticationToken, @NotNull Set<String> set, @NotNull Set<String> set2) {
        this.f7036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = accessToken;
        this.f7035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = authenticationToken;
        this.f7034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = set;
        this.f7033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = set2;
    }

    @NotNull
    public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoginResult)) {
            return false;
        }
        LoginResult loginResult = (LoginResult) obj;
        if (Intrinsics.areEqual(this.f7036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, loginResult.f7036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, loginResult.f7035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, loginResult.f7034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, loginResult.f7033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f7036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31;
        AuthenticationToken authenticationToken = this.f7035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (authenticationToken == null) {
            hashCode = 0;
        } else {
            hashCode = authenticationToken.hashCode();
        }
        return ((((hashCode2 + hashCode) * 31) + this.f7034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f7033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return "LoginResult(accessToken=" + this.f7036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", authenticationToken=" + this.f7035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", recentlyGrantedPermissions=" + this.f7034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", recentlyDeniedPermissions=" + this.f7033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
