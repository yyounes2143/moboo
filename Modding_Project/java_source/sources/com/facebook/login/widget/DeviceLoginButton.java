package com.facebook.login.widget;

import android.net.Uri;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DeviceLoginManager;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.widget.LoginButton;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000eR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0018\u0010\r\u001a\u00060\nR\u00020\u00018TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/facebook/login/widget/DeviceLoginButton;", "Lcom/facebook/login/widget/LoginButton;", "Landroid/net/Uri;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "Landroid/net/Uri;", "getDeviceRedirectUri", "()Landroid/net/Uri;", "setDeviceRedirectUri", "(Landroid/net/Uri;)V", "deviceRedirectUri", "Lcom/facebook/login/widget/LoginButton$LoginClickListener;", "getNewLoginClickListener", "()Lcom/facebook/login/widget/LoginButton$LoginClickListener;", "newLoginClickListener", "DeviceLoginClickListener", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DeviceLoginButton extends LoginButton {
    @Nullable

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public Uri f7092Kkkkkkkkkkkkkkkkkkkkkkkkk;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0083\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;", "Lcom/facebook/login/widget/LoginButton$LoginClickListener;", "Lcom/facebook/login/widget/LoginButton;", "<init>", "(Lcom/facebook/login/widget/DeviceLoginButton;)V", "Lcom/facebook/login/LoginManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/LoginManager;", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class DeviceLoginClickListener extends LoginButton.LoginClickListener {
        public DeviceLoginClickListener() {
            super();
        }

        @Override // com.facebook.login.widget.LoginButton.LoginClickListener
        @NotNull
        public LoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                DeviceLoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DeviceLoginManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(DeviceLoginButton.this.getDefaultAudience());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkk(LoginBehavior.DEVICE_AUTH);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkk(DeviceLoginButton.this.getDeviceRedirectUri());
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }
    }

    @Nullable
    public final Uri getDeviceRedirectUri() {
        return this.f7092Kkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @Override // com.facebook.login.widget.LoginButton
    @NotNull
    public LoginButton.LoginClickListener getNewLoginClickListener() {
        return new DeviceLoginClickListener();
    }

    public final void setDeviceRedirectUri(@Nullable Uri uri) {
        this.f7092Kkkkkkkkkkkkkkkkkkkkkkkkk = uri;
    }
}
