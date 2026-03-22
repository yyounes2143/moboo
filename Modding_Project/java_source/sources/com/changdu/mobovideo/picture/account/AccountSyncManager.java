package com.changdu.mobovideo.picture.account;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.os.Bundle;
import com.changdu.mobovideo.R;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0012\u0010\bR\u0014\u0010\u0014\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/changdu/mobovideo/picture/account/AccountSyncManager;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/accounts/Account;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Landroid/accounts/Account;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "reason", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "ACCOUNT_LOCK", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AccountSyncManager {
    @NotNull
    public static final AccountSyncManager INSTANCE = new AccountSyncManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f5583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();

    @JvmStatic
    @NotNull
    public static final Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        Context applicationContext = context.getApplicationContext();
        AccountSyncManager accountSyncManager = INSTANCE;
        Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = accountSyncManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        synchronized (f5583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = accountSyncManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            }
            Account account = new Account(accountSyncManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext), "com.changdu.mobovideo.account");
            if (AccountManager.get(applicationContext).addAccountExplicitly(account, null, null)) {
                return account;
            }
            Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = accountSyncManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
            }
            throw new IllegalStateException("Unable to create keep-alive account.");
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        try {
            Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            Bundle bundle = new Bundle();
            bundle.putBoolean("force", true);
            bundle.putBoolean("expedited", true);
            bundle.putString("reason", str);
            ContentResolver.requestSync(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "com.changdu.mobovideo.syncprovider", bundle);
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"MissingPermission"})
    public final Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        Account[] accountsByType;
        for (Account account : AccountManager.get(context).getAccountsByType("com.changdu.mobovideo.account")) {
            if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context), account.name)) {
                return account;
            }
        }
        return null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        try {
            Account Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            ContentResolver.setIsSyncable(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "com.changdu.mobovideo.syncprovider", 1);
            ContentResolver.setSyncAutomatically(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "com.changdu.mobovideo.syncprovider", true);
            Bundle bundle = Bundle.EMPTY;
            ContentResolver.removePeriodicSync(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "com.changdu.mobovideo.syncprovider", bundle);
            ContentResolver.addPeriodicSync(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "com.changdu.mobovideo.syncprovider", bundle, 3600L);
        } catch (Throwable unused) {
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return context.getString(R.string.app_name);
    }
}
