package com.changdu.mobovideo.picture.account;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u001b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/changdu/mobovideo/picture/account/AuthenticatorService;", "Landroid/app/Service;", "<init>", "()V", "", "onCreate", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "Lcom/changdu/mobovideo/picture/account/AccountAuthenticator;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/changdu/mobovideo/picture/account/AccountAuthenticator;", "authenticator", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticatorService extends Service {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AccountAuthenticator f5584Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        AccountAuthenticator accountAuthenticator = this.f5584Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (accountAuthenticator != null) {
            return accountAuthenticator.getIBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f5584Wwwwwwwwwwwwwwwwwwwwwwwww = new AccountAuthenticator(this);
    }
}
