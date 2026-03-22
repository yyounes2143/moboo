package com.changdu.component.deeplink.google;

import android.content.Context;
import android.content.Intent;
import com.android.installreferrer.api.InstallReferrerClient;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CDInstallReferrerHandler {
    private static boolean mHasNotified;
    private static b mOnInstallReferrerListener;
    private static InstallReferrerClient mReferrerClient;
    private static CDInstallReferrerDetails mReferrerDetails;

    public static void handleBroadcast(Intent intent) {
        String stringExtra;
        if (intent != null && !mHasNotified && (stringExtra = intent.getStringExtra("referrer")) != null && stringExtra.length() > 0) {
            mReferrerDetails = new CDInstallReferrerDetails(stringExtra, CDInstallReferrerDetails.TYPE_BROADCAST_RECEIVER);
            handleCallback();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean handleCallback() {
        b bVar;
        CDInstallReferrerDetails cDInstallReferrerDetails;
        if (!mHasNotified && (bVar = mOnInstallReferrerListener) != null && (cDInstallReferrerDetails = mReferrerDetails) != null) {
            bVar.a(cDInstallReferrerDetails);
            mHasNotified = true;
            mReferrerDetails = null;
            mOnInstallReferrerListener = null;
            return true;
        }
        return false;
    }

    public static void setOnInstallReferrerListener(Context context, b bVar) {
        mOnInstallReferrerListener = bVar;
        if (!handleCallback() && mReferrerClient == null) {
            startListening(context);
        }
    }

    public static void startListening(Context context) {
        if (context != null && mReferrerClient == null && !mHasNotified) {
            InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
            mReferrerClient = build;
            build.startConnection(new a());
        }
    }
}
