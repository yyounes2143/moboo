package com.appsflyer.internal;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFj1uSDK extends AFj1tSDK {
    final ProviderInfo getCurrencyIso4217Code;
    private final AFd1zSDK getMonetizationNetwork;

    public AFj1uSDK(ProviderInfo providerInfo, Runnable runnable, AFd1zSDK aFd1zSDK) {
        super("af_referrer", providerInfo.authority, runnable);
        this.getMonetizationNetwork = aFd1zSDK;
        this.getCurrencyIso4217Code = providerInfo;
    }

    @Nullable
    @VisibleForTesting
    public static ContentProviderClient B_(Context context, Uri uri) {
        try {
            return context.getContentResolver().acquireUnstableContentProviderClient(uri);
        } catch (SecurityException e) {
            AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to acquire unstable content providerClient due to SecurityException", e, false, true, false);
            return null;
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to acquire unstable content providerClient due to unexpected throwable", th, false, true, false);
            return null;
        }
    }

    @Override // com.appsflyer.internal.AFj1tSDK
    public final void getMonetizationNetwork(final Context context) {
        this.getMonetizationNetwork.getMonetizationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.AFj1uSDK.5
            /* JADX WARN: Code restructure failed: missing block: B:18:0x0079, code lost:
                if (android.os.Build.VERSION.SDK_INT < 24) goto L39;
             */
            /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
                androidx.core.provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x007f, code lost:
                r1.release();
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x0093, code lost:
                if (android.os.Build.VERSION.SDK_INT < 24) goto L39;
             */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x00a4, code lost:
                if (android.os.Build.VERSION.SDK_INT < 24) goto L39;
             */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00b8  */
            /* JADX WARN: Removed duplicated region for block: B:50:0x00ff  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 321
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1uSDK.AnonymousClass5.run():void");
            }
        });
    }
}
