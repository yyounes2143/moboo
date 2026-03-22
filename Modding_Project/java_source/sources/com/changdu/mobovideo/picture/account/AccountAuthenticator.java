package com.changdu.mobovideo.picture.account;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.content.Context;
import android.os.Bundle;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJI\u0010\u0011\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\b2\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0015\u001a\u0004\u0018\u00010\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J9\u0010\u0017\u001a\u0004\u0018\u00010\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\r\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ9\u0010\u001b\u001a\u0004\u0018\u00010\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\r\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u001b\u0010\u0018J5\u0010\u001d\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0010\u0010\u001c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/changdu/mobovideo/picture/account/AccountAuthenticator;", "Landroid/accounts/AbstractAccountAuthenticator;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/accounts/AccountAuthenticatorResponse;", "response", "", "accountType", "Landroid/os/Bundle;", "editProperties", "(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;", "authTokenType", "", "requiredFeatures", "options", "addAccount", "(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;", "Landroid/accounts/Account;", "account", "confirmCredentials", "(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;", "getAuthToken", "(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;", "getAuthTokenLabel", "(Ljava/lang/String;)Ljava/lang/String;", "updateCredentials", "features", "hasFeatures", "(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "appContext", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AccountAuthenticator extends AbstractAccountAuthenticator {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AccountAuthenticator(@NotNull Context context) {
        super(context);
        this.f5582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    @NotNull
    public Bundle addAccount(@Nullable AccountAuthenticatorResponse accountAuthenticatorResponse, @Nullable String str, @Nullable String str2, @Nullable String[] strArr, @Nullable Bundle bundle) {
        try {
            Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccountSyncManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5582Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Bundle bundle2 = new Bundle();
            bundle2.putString("authAccount", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.name);
            bundle2.putString("accountType", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.type);
            return bundle2;
        } catch (Throwable th) {
            th.printStackTrace();
            return new Bundle();
        }
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    @Nullable
    public Bundle confirmCredentials(@Nullable AccountAuthenticatorResponse accountAuthenticatorResponse, @Nullable Account account, @Nullable Bundle bundle) {
        return Bundle.EMPTY;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    @Nullable
    public Bundle editProperties(@Nullable AccountAuthenticatorResponse accountAuthenticatorResponse, @Nullable String str) {
        return Bundle.EMPTY;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    @Nullable
    public Bundle getAuthToken(@Nullable AccountAuthenticatorResponse accountAuthenticatorResponse, @Nullable Account account, @Nullable String str, @Nullable Bundle bundle) {
        return Bundle.EMPTY;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    @Nullable
    public String getAuthTokenLabel(@Nullable String str) {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    @NotNull
    public Bundle hasFeatures(@Nullable AccountAuthenticatorResponse accountAuthenticatorResponse, @Nullable Account account, @Nullable String[] strArr) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("booleanResult", false);
        return bundle;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    @Nullable
    public Bundle updateCredentials(@Nullable AccountAuthenticatorResponse accountAuthenticatorResponse, @Nullable Account account, @Nullable String str, @Nullable Bundle bundle) {
        return Bundle.EMPTY;
    }
}
