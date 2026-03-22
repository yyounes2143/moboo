package com.changdu.component.deeplink.google;

import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a implements InstallReferrerStateListener {
    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public final void onInstallReferrerSetupFinished(int i) {
        InstallReferrerClient installReferrerClient;
        boolean z;
        InstallReferrerClient installReferrerClient2;
        if (i == 0) {
            z = CDInstallReferrerHandler.mHasNotified;
            if (!z) {
                try {
                    installReferrerClient2 = CDInstallReferrerHandler.mReferrerClient;
                    ReferrerDetails installReferrer = installReferrerClient2.getInstallReferrer();
                    String installReferrer2 = installReferrer.getInstallReferrer();
                    long referrerClickTimestampSeconds = installReferrer.getReferrerClickTimestampSeconds();
                    long installBeginTimestampSeconds = installReferrer.getInstallBeginTimestampSeconds();
                    long referrerClickTimestampServerSeconds = installReferrer.getReferrerClickTimestampServerSeconds();
                    long installBeginTimestampServerSeconds = installReferrer.getInstallBeginTimestampServerSeconds();
                    boolean googlePlayInstantParam = installReferrer.getGooglePlayInstantParam();
                    String installVersion = installReferrer.getInstallVersion();
                    if (installReferrer2 == null) {
                        if (installReferrer2.length() > 0) {
                        }
                    }
                    if (installVersion == null) {
                        installVersion = "";
                    }
                    CDInstallReferrerDetails unused = CDInstallReferrerHandler.mReferrerDetails = new CDInstallReferrerDetails(installReferrer2, referrerClickTimestampSeconds, installBeginTimestampSeconds, referrerClickTimestampServerSeconds, installBeginTimestampServerSeconds, installVersion, Boolean.valueOf(googlePlayInstantParam), CDInstallReferrerDetails.TYPE_GOOGLE_PLAY_STORE_INSTALL_REFERRER_API);
                    CDInstallReferrerHandler.handleCallback();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        installReferrerClient = CDInstallReferrerHandler.mReferrerClient;
        installReferrerClient.endConnection();
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public final void onInstallReferrerServiceDisconnected() {
    }
}
