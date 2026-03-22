package com.sensorsdata.analytics.android.sdk.encrypt.impl;

import android.net.Uri;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface SAEncryptAPI {
    String decryptAES(String str);

    String encryptAES(String str);

    <T> T encryptEventData(T t);

    String loadSecretKey();

    void storeSecretKey(String str);

    String verifySecretKey(Uri uri);
}
