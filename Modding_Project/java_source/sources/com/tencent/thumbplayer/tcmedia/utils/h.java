package com.tencent.thumbplayer.tcmedia.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseIntArray;
/* loaded from: classes6.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static int f10691a = -1;
    private static boolean b = false;
    private static int c = -1;
    private static final SparseIntArray d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        d = sparseIntArray;
        sparseIntArray.put(1, 1);
        sparseIntArray.put(2, 1);
        sparseIntArray.put(4, 1);
        sparseIntArray.put(7, 1);
        sparseIntArray.put(11, 1);
        sparseIntArray.put(3, 2);
        sparseIntArray.put(5, 2);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(8, 2);
        sparseIntArray.put(9, 2);
        sparseIntArray.put(10, 2);
        sparseIntArray.put(12, 2);
        sparseIntArray.put(14, 2);
        sparseIntArray.put(15, 2);
        sparseIntArray.put(13, 3);
    }

    public static int a(Context context) {
        int i = f10691a;
        if (i <= 0 || b) {
            if (context == null) {
                return -1;
            }
            int g = g(context);
            f10691a = g;
            return g;
        }
        return i;
    }

    private static int b(Context context, int i) {
        if (d(context) == 20) {
            TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed netWorkType==4");
            return 4;
        }
        return d.get(i);
    }

    public static boolean c(Context context) {
        int i = c;
        if (i != -1 && !b) {
            if (i != 1) {
                return false;
            }
            return true;
        }
        if (context != null) {
            try {
                NetworkInfo f = f(context);
                c = 0;
                if (f != null && f.getState() == NetworkInfo.State.CONNECTED) {
                    c = 1;
                }
            } catch (Exception e) {
                TPLogUtil.e("TPNetWorkUtils", e.getMessage());
            }
        }
        if (c != 1) {
            return false;
        }
        return true;
    }

    private static int d(Context context) {
        ServiceState serviceState;
        int i = 0;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed TelephonyManager is null");
                return 0;
            } else if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
                TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed no permission");
                return 0;
            } else if (Build.VERSION.SDK_INT < 29) {
                TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed less api 29");
                return 0;
            } else {
                int networkType = telephonyManager.getNetworkType();
                try {
                    if (networkType == 13) {
                        serviceState = telephonyManager.getServiceState();
                        if (serviceState == null) {
                            TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed serviceState is null");
                            return networkType;
                        }
                        int intValue = ((Integer) k.a(serviceState, "android.telephony.ServiceState", "getNrState", new Class[0], new Object[0])).intValue();
                        if (intValue != 2 && intValue != 3) {
                            return networkType;
                        }
                        TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed networkType is 20, 5G");
                        return 20;
                    }
                    TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed not NETWORK_TYPE_LTE");
                    return networkType;
                } catch (Throwable th) {
                    i = networkType;
                    th = th;
                    TPLogUtil.e("TPNetWorkUtils", th.getMessage());
                    return i;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static ConnectivityManager e(Context context) {
        if (context == null) {
            return null;
        }
        return (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
    }

    private static NetworkInfo f(Context context) {
        ConnectivityManager e = e(context);
        if (e == null) {
            return null;
        }
        return e.getActiveNetworkInfo();
    }

    private static int g(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 0;
                    }
                } else {
                    return a(context, activeNetworkInfo.getSubtype());
                }
            }
            return -1;
        } catch (Throwable th) {
            TPLogUtil.e("TPNetWorkUtils", th.getMessage());
            return -1;
        }
    }

    private static int h(Context context) {
        int dataNetworkType;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (a(context, "android.permission.READ_PHONE_STATE")) {
                dataNetworkType = telephonyManager.getDataNetworkType();
                return b(context, dataNetworkType);
            }
            TPLogUtil.e("TPNetWorkUtils", "getNetWorkClassAPI29 fail: no phone permission");
            return -1;
        } catch (Throwable th) {
            TPLogUtil.e("TPNetWorkUtils", th.getMessage());
            return -1;
        }
    }

    private static int a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 29 ? h(context) : b(context, i);
    }

    public static void b(Context context) {
        b = true;
        c(context);
        a(context);
        b = false;
    }

    private static boolean a() {
        return true;
    }

    private static boolean a(Context context, String str) {
        if (a()) {
            if (context != null && !TextUtils.isEmpty(str)) {
                if ("android.permission.WRITE_SETTINGS".equals(str)) {
                    return Settings.System.canWrite(context);
                }
                try {
                    if (context.checkSelfPermission(str) == 0) {
                        return true;
                    }
                } catch (Exception e) {
                    TPLogUtil.e("TPNetWorkUtils", e.getMessage());
                }
            }
            return false;
        }
        return true;
    }
}
