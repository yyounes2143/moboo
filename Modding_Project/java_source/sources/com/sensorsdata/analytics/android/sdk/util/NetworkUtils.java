package com.sensorsdata.analytics.android.sdk.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class NetworkUtils {
    private static final int HTTP_307 = 307;
    private static final String TAG = "SA.NetworkUtils";
    private static SABroadcastReceiver mReceiver;
    private static SANetworkCallbackImpl networkCallback;
    private static String networkType;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SABroadcastReceiver extends BroadcastReceiver {
        private SABroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                NetworkUtils.cleanNetworkTypeCache();
                SensorsDataAPI.sharedInstance().flush();
                SALog.i(NetworkUtils.TAG, "SABroadcastReceiver is receiving ConnectivityManager.CONNECTIVITY_ACTION broadcast");
            }
        }
    }

    /* compiled from: Proguard */
    @TargetApi(21)
    /* loaded from: classes6.dex */
    public static class SANetworkCallbackImpl extends ConnectivityManager.NetworkCallback {
        private SANetworkCallbackImpl() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            NetworkUtils.cleanNetworkTypeCache();
            SensorsDataAPI.sharedInstance().flush();
            SALog.i(NetworkUtils.TAG, "onAvailable is calling");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            super.onCapabilitiesChanged(network, networkCapabilities);
            NetworkUtils.cleanNetworkTypeCache();
            SALog.i(NetworkUtils.TAG, "onCapabilitiesChanged is calling");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            NetworkUtils.cleanNetworkTypeCache();
            SALog.i(NetworkUtils.TAG, "onLost is calling");
        }
    }

    public static void cleanNetworkTypeCache() {
        networkType = null;
    }

    public static boolean compareMainDomain(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str2.contains(".")) {
            return str.substring(str.indexOf(".") + 1).equals(str2.substring(str2.indexOf(".") + 1));
        }
        return false;
    }

    public static String getHost(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith("http://") || str.startsWith("https://")) {
                return Uri.parse(str).getHost();
            }
            return "";
        }
        return "";
    }

    public static String getLocation(HttpURLConnection httpURLConnection, String str) throws MalformedURLException {
        if (httpURLConnection == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String headerField = httpURLConnection.getHeaderField("Location");
        if (TextUtils.isEmpty(headerField)) {
            headerField = httpURLConnection.getHeaderField(FirebaseAnalytics.Param.LOCATION);
        }
        if (TextUtils.isEmpty(headerField)) {
            return null;
        }
        if (!headerField.startsWith("http://") && !headerField.startsWith("https://")) {
            URL url = new URL(str);
            return url.getProtocol() + "://" + url.getHost() + headerField;
        }
        return headerField;
    }

    public static String getRequestUrl(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith("http://") || str.startsWith("https://")) {
                Uri parse = Uri.parse(str);
                try {
                    return new URI(parse.getScheme(), parse.getUserInfo(), parse.getHost(), parse.getPort(), null, null, null) + "/" + str2;
                } catch (URISyntaxException e) {
                    SALog.printStackTrace(e);
                    return "";
                }
            }
            return "";
        }
        return "";
    }

    @SuppressLint({"WrongConstant"})
    public static boolean isNetworkAvailable(Context context) {
        if (PermissionUtils.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            try {
                return isNetworkAvailable((ConnectivityManager) context.getSystemService("connectivity"));
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return false;
            }
        }
        return false;
    }

    @SuppressLint({"WrongConstant"})
    public static boolean isNetworkValid(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return false;
        }
        if (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(3) && !networkCapabilities.hasTransport(7) && !networkCapabilities.hasTransport(4) && !networkCapabilities.hasCapability(16)) {
            return false;
        }
        return true;
    }

    public static boolean isShouldFlush(String str, int i) {
        if ((toNetworkType(str) & i) != 0) {
            return true;
        }
        return false;
    }

    private static boolean isWiFiNetwork(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
            return networkCapabilities.hasTransport(1);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0040 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0043 A[RETURN] */
    @android.annotation.SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String mobileNetworkType(android.content.Context r2, android.telephony.TelephonyManager r3, android.net.ConnectivityManager r4) {
        /*
            r0 = 30
            if (r3 == 0) goto L20
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 >= r0) goto Ld
            int r2 = r3.getNetworkType()
            goto L21
        Ld:
            java.lang.String r1 = "android.permission.READ_PHONE_STATE"
            boolean r2 = com.sensorsdata.analytics.android.sdk.util.PermissionUtils.checkSelfPermission(r2, r1)
            if (r2 != 0) goto L1b
            boolean r2 = r3.hasCarrierPrivileges()
            if (r2 == 0) goto L20
        L1b:
            int r2 = com.applovin.impl.sdk.Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3)
            goto L21
        L20:
            r2 = 0
        L21:
            java.lang.String r3 = "NULL"
            if (r2 != 0) goto L36
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 < r0) goto L2a
            return r3
        L2a:
            if (r4 == 0) goto L36
            android.net.NetworkInfo r4 = r4.getActiveNetworkInfo()
            if (r4 == 0) goto L36
            int r2 = r4.getSubtype()
        L36:
            switch(r2) {
                case 1: goto L43;
                case 2: goto L43;
                case 3: goto L40;
                case 4: goto L43;
                case 5: goto L40;
                case 6: goto L40;
                case 7: goto L43;
                case 8: goto L40;
                case 9: goto L40;
                case 10: goto L40;
                case 11: goto L43;
                case 12: goto L40;
                case 13: goto L3d;
                case 14: goto L40;
                case 15: goto L40;
                case 16: goto L39;
                case 17: goto L39;
                case 18: goto L3d;
                case 19: goto L3d;
                case 20: goto L3a;
                default: goto L39;
            }
        L39:
            return r3
        L3a:
            java.lang.String r2 = "5G"
            return r2
        L3d:
            java.lang.String r2 = "4G"
            return r2
        L40:
            java.lang.String r2 = "3G"
            return r2
        L43:
            java.lang.String r2 = "2G"
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.util.NetworkUtils.mobileNetworkType(android.content.Context, android.telephony.TelephonyManager, android.net.ConnectivityManager):java.lang.String");
    }

    public static boolean needRedirects(int i) {
        if (i != 301 && i != 302 && i != 307) {
            return false;
        }
        return true;
    }

    public static String networkType(Context context) {
        try {
            if (!TextUtils.isEmpty(networkType) && !"NULL".equals(networkType)) {
                return networkType;
            }
            if (!PermissionUtils.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                networkType = "NULL";
                return "NULL";
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                if (!isNetworkAvailable(connectivityManager)) {
                    networkType = "NULL";
                    return "NULL";
                } else if (isWiFiNetwork(connectivityManager)) {
                    networkType = "WIFI";
                    return "WIFI";
                }
            }
            String mobileNetworkType = mobileNetworkType(context, (TelephonyManager) context.getSystemService("phone"), connectivityManager);
            networkType = mobileNetworkType;
            return mobileNetworkType;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            networkType = "NULL";
            return "NULL";
        }
    }

    public static void registerNetworkListener(Context context) {
        try {
            if (PermissionUtils.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                if (networkCallback == null) {
                    networkCallback = new SANetworkCallbackImpl();
                }
                NetworkRequest build = new NetworkRequest.Builder().build();
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    connectivityManager.registerNetworkCallback(build, networkCallback);
                    SALog.i(TAG, "Register ConnectivityManager");
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private static int toNetworkType(String str) {
        if ("NULL".equals(str)) {
            return 255;
        }
        if ("WIFI".equals(str)) {
            return 8;
        }
        if ("2G".equals(str)) {
            return 1;
        }
        if ("3G".equals(str)) {
            return 2;
        }
        if ("4G".equals(str)) {
            return 4;
        }
        if (!"5G".equals(str)) {
            return 255;
        }
        return 16;
    }

    public static void unregisterNetworkListener(Context context) {
        ConnectivityManager connectivityManager;
        try {
            if (networkCallback != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null) {
                connectivityManager.unregisterNetworkCallback(networkCallback);
                SALog.i(TAG, "unregister ConnectivityManager");
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private static boolean isNetworkAvailable(ConnectivityManager connectivityManager) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return isNetworkValid(networkCapabilities);
    }
}
