package com.sensorsdata.analytics.android.sdk.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.SALog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SASpUtils {
    private static final String TAG = "SA.SASpUtils";
    private static ISharedPreferencesProvider mSharedPreferencesProvider;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface ISharedPreferencesProvider {
        SharedPreferences createSharedPreferences(Context context, String str, int i);
    }

    public static SharedPreferences getSharedPreferences(Context context, String str, int i) {
        SharedPreferences createSharedPreferences;
        ISharedPreferencesProvider iSharedPreferencesProvider = mSharedPreferencesProvider;
        if (iSharedPreferencesProvider != null && (createSharedPreferences = iSharedPreferencesProvider.createSharedPreferences(context, str, i)) != null) {
            SALog.i(TAG, "create SharedPreferences by user default, file name is: " + str);
            return createSharedPreferences;
        }
        return context.getSharedPreferences(str, i);
    }

    public static void setSharedPreferencesProvider(ISharedPreferencesProvider iSharedPreferencesProvider) {
        mSharedPreferencesProvider = iSharedPreferencesProvider;
    }
}
