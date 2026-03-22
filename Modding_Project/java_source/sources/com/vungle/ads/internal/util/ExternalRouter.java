package com.vungle.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.vungle.ads.LinkError;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import com.vungle.ads.internal.util.Logger;
import java.net.URISyntaxException;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0002J@\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/internal/util/ExternalRouter;", "", "()V", "TAG", "", "getIntentFromUrl", "Landroid/content/Intent;", "url", "contextIsNotActivity", "", "launch", "deeplinkUrl", "context", "Landroid/content/Context;", "logEntry", "Lcom/vungle/ads/internal/util/LogEntry;", "adOpenCallback", "Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class ExternalRouter {
    @NotNull
    public static final ExternalRouter INSTANCE = new ExternalRouter();
    @NotNull
    private static final String TAG = "ExternalRouter";

    private ExternalRouter() {
    }

    private final Intent getIntentFromUrl(String str, boolean z) {
        Intent intent = null;
        if (str != null) {
            try {
                if (str.length() != 0) {
                    intent = Intent.parseUri(str, 0);
                }
            } catch (URISyntaxException e) {
                Logger.Companion companion = Logger.Companion;
                companion.e(TAG, "url format is not correct " + e.getLocalizedMessage());
            }
        }
        if (intent != null && z) {
            intent.setFlags(268435456);
            return intent;
        }
        return intent;
    }

    @JvmStatic
    public static final boolean launch(@Nullable String str, @Nullable String str2, @NotNull Context context, @Nullable LogEntry logEntry, @Nullable PresenterAdOpenCallback presenterAdOpenCallback) {
        if ((str != null && str.length() != 0) || (str2 != null && str2.length() != 0)) {
            boolean z = !(context instanceof Activity);
            try {
                ExternalRouter externalRouter = INSTANCE;
                return ActivityManager.Companion.startWhenForeground(context, externalRouter.getIntentFromUrl(str, z), externalRouter.getIntentFromUrl(str2, z), presenterAdOpenCallback);
            } catch (Exception e) {
                if (str != null && str.length() != 0) {
                    new LinkError(Sdk.SDKError.Reason.DEEPLINK_OPEN_FAILED, "Fail to open " + str).setLogEntry$vungle_ads_release(logEntry).logErrorNoReturnValue$vungle_ads_release();
                } else {
                    new LinkError(Sdk.SDKError.Reason.LINK_COMMAND_OPEN_FAILED, "Fail to open " + str2).setLogEntry$vungle_ads_release(logEntry).logErrorNoReturnValue$vungle_ads_release();
                }
                Logger.Companion companion = Logger.Companion;
                companion.e(TAG, "Error while opening url" + e.getLocalizedMessage());
                companion.d(TAG, "Cannot open url " + str2);
            }
        }
        return false;
    }

    public static /* synthetic */ boolean launch$default(String str, String str2, Context context, LogEntry logEntry, PresenterAdOpenCallback presenterAdOpenCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 8) != 0) {
            logEntry = null;
        }
        if ((i & 16) != 0) {
            presenterAdOpenCallback = null;
        }
        return launch(str, str2, context, logEntry, presenterAdOpenCallback);
    }
}
