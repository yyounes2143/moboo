package com.facebook.appevents.iap;

import android.content.Context;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.iap.InAppPurchaseAutoLogger;
import com.facebook.appevents.iap.InAppPurchaseBillingClientWrapper;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003¨\u0006\n"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class InAppPurchaseAutoLogger {
    @NotNull
    public static final InAppPurchaseAutoLogger INSTANCE = new InAppPurchaseAutoLogger();

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseAutoLogger.class)) {
            return;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseAutoLogger.class);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseAutoLogger.class)) {
            return;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseAutoLogger.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        InAppPurchaseBillingClientWrapper.Companion companion;
        InAppPurchaseBillingClientWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseAutoLogger.class)) {
            try {
                if (InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.Purchase") != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (companion = InAppPurchaseBillingClientWrapper.Companion).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) != null && companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().get()) {
                    if (InAppPurchaseLoggerManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwww("inapp", new Runnable() { // from class: Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                InAppPurchaseAutoLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            }
                        });
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww("inapp", new Runnable() { // from class: Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                InAppPurchaseAutoLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseAutoLogger.class);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            InAppPurchaseLoggerManager inAppPurchaseLoggerManager = InAppPurchaseLoggerManager.INSTANCE;
            InAppPurchaseBillingClientWrapper.Companion companion = InAppPurchaseBillingClientWrapper.Companion;
            InAppPurchaseLoggerManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().clear();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }
}
