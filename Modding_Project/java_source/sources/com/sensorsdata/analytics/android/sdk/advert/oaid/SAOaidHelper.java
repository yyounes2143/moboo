package com.sensorsdata.analytics.android.sdk.advert.oaid;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Looper;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.impl.OAIDFactory;
import com.sensorsdata.analytics.android.sdk.core.business.SAPropertyManager;
import com.sensorsdata.analytics.android.sdk.internal.beans.LimitKey;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAOaidHelper {
    private static final String TAG = "SA.SAOaidHelper";
    private static Class<?> jLibrary = null;
    private static CountDownLatch mCountDownLatch = null;
    private static Class<?> mIdSupplier = null;
    private static Class<?> mIdentifyListener = null;
    private static Class<?> mMidSDKHelper = null;
    private static String mOAID = "";
    private static String mOidCertFilePath = null;
    private static String mReflectionOAID = "";
    private static final List<String> mBlackOAIDs = new LinkedList<String>() { // from class: com.sensorsdata.analytics.android.sdk.advert.oaid.SAOaidHelper.1
        {
            add("00000000-0000-0000-0000-000000000000");
            add("00000000000000000000000000000000");
        }
    };
    private static final List<String> mLoadLibrary = new LinkedList<String>() { // from class: com.sensorsdata.analytics.android.sdk.advert.oaid.SAOaidHelper.2
        {
            add("msaoaidsec");
            add("nllvm1632808251147706677");
            add("nllvm1630571663641560568");
            add("nllvm1623827671");
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class IdentifyListenerHandler implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if ("OnSupport".equalsIgnoreCase(method.getName())) {
                    Method declaredMethod = SAOaidHelper.mIdSupplier.getDeclaredMethod("getOAID", null);
                    if (objArr.length == 1) {
                        String unused = SAOaidHelper.mOAID = (String) declaredMethod.invoke(objArr[0], null);
                    } else {
                        String unused2 = SAOaidHelper.mOAID = (String) declaredMethod.invoke(objArr[1], null);
                    }
                    SALog.i(SAOaidHelper.TAG, "oaid:" + SAOaidHelper.mOAID);
                    SAOaidHelper.mCountDownLatch.countDown();
                }
            } catch (Throwable unused3) {
                SAOaidHelper.mCountDownLatch.countDown();
            }
            return null;
        }
    }

    static {
        initSDKLibrary();
    }

    private static String getMSAOAID(Context context) {
        try {
            mCountDownLatch = new CountDownLatch(1);
            initInvokeListener();
            if (mMidSDKHelper != null && mIdentifyListener != null && mIdSupplier != null) {
                if (TextUtils.isEmpty(mOAID)) {
                    getOAIDReflect(context, 2);
                    try {
                        mCountDownLatch.await();
                    } catch (InterruptedException e) {
                        SALog.printStackTrace(e);
                    }
                    SALog.i(TAG, "CountDownLatch await");
                    return mOAID;
                }
                return mOAID;
            }
            SALog.i(TAG, "OAID class create failed");
            return "";
        } catch (Throwable th) {
            SALog.i(TAG, th.getMessage());
            return "";
        }
    }

    private static void getOAIDReflect(Context context, int i) {
        if (i != 0) {
            try {
                initPemCert(context);
                Class<?> cls = jLibrary;
                if (cls != null) {
                    cls.getDeclaredMethod("InitEntry", Context.class).invoke(null, context);
                }
                int intValue = ((Integer) mMidSDKHelper.getDeclaredMethod("InitSdk", Context.class, Boolean.TYPE, mIdentifyListener).invoke(null, context, Boolean.TRUE, Proxy.newProxyInstance(context.getClassLoader(), new Class[]{mIdentifyListener}, new IdentifyListenerHandler()))).intValue();
                SALog.i(TAG, "MdidSdkHelper ErrorCode : " + intValue);
                if (intValue != 1008614 && intValue != 1008610) {
                    i--;
                    getOAIDReflect(context, i);
                    if (i == 0) {
                        mCountDownLatch.countDown();
                    }
                }
                new Thread(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.oaid.SAOaidHelper.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Thread.sleep(2000L);
                        } catch (InterruptedException unused) {
                        }
                        SAOaidHelper.mCountDownLatch.countDown();
                    }
                }).start();
            } catch (Throwable th) {
                SALog.i(TAG, th.getMessage());
                int i2 = i - 1;
                getOAIDReflect(context, i2);
                if (i2 == 0) {
                    mCountDownLatch.countDown();
                }
            }
        }
    }

    public static synchronized String getOpenAdIdentifier(Context context) {
        synchronized (SAOaidHelper.class) {
            if (SAPropertyManager.getInstance().isLimitKey(LimitKey.OAID)) {
                return SAPropertyManager.getInstance().getLimitValue(LimitKey.OAID);
            } else if (Looper.getMainLooper() == Looper.myLooper()) {
                SALog.i(TAG, "function can not be called on main thread");
                return "";
            } else if (!TextUtils.isEmpty(mOAID)) {
                return mOAID;
            } else {
                mOAID = getMSAOAID(context);
                SALog.i(TAG, "MSA OAID is " + mOAID);
                if (TextUtils.isEmpty(mOAID) || mBlackOAIDs.contains(mOAID)) {
                    String romoaid = getROMOAID(context);
                    mReflectionOAID = romoaid;
                    if (TextUtils.isEmpty(romoaid) || mBlackOAIDs.contains(mReflectionOAID)) {
                        mReflectionOAID = "";
                    }
                    mOAID = mReflectionOAID;
                    SALog.i(TAG, "Rom OAID is" + mOAID);
                }
                return mOAID;
            }
        }
    }

    public static String getOpenAdIdentifierByReflection(Context context) {
        if (TextUtils.isEmpty(mOAID)) {
            getOpenAdIdentifier(context);
        }
        return mReflectionOAID;
    }

    private static String getROMOAID(Context context) {
        return OAIDFactory.create(context).getRomOAID();
    }

    private static void initInvokeListener() {
        try {
            mMidSDKHelper = Class.forName("com.bun.miitmdid.core.MdidSdkHelper");
            try {
                try {
                    try {
                        mIdentifyListener = Class.forName("com.bun.miitmdid.interfaces.IIdentifierListener");
                        mIdSupplier = Class.forName("com.bun.miitmdid.interfaces.IdSupplier");
                    } catch (Exception unused) {
                        mIdentifyListener = Class.forName("com.bun.supplier.IIdentifierListener");
                        mIdSupplier = Class.forName("com.bun.supplier.IdSupplier");
                        jLibrary = Class.forName("com.bun.miitmdid.core.JLibrary");
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                mIdentifyListener = Class.forName("com.bun.miitmdid.core.IIdentifierListener");
                mIdSupplier = Class.forName("com.bun.miitmdid.supplier.IdSupplier");
                jLibrary = Class.forName("com.bun.miitmdid.core.JLibrary");
            }
        } catch (ClassNotFoundException e) {
            SALog.i(TAG, e.getMessage());
        }
    }

    private static void initPemCert(Context context) {
        try {
            String loadPemFromAssetFile = loadPemFromAssetFile(context);
            if (!TextUtils.isEmpty(loadPemFromAssetFile)) {
                mMidSDKHelper.getDeclaredMethod("InitCert", Context.class, String.class).invoke(null, context, loadPemFromAssetFile);
            }
        } catch (Throwable th) {
            SALog.i(TAG, th.getMessage());
        }
    }

    private static void initSDKLibrary() {
        for (String str : mLoadLibrary) {
            try {
                System.loadLibrary(str);
                return;
            } catch (Throwable unused) {
            }
        }
    }

    private static String loadPemFromAssetFile(Context context) {
        InputStream open;
        try {
            String str = context.getPackageName() + ".cert.pem";
            AssetManager assets = context.getAssets();
            if (!TextUtils.isEmpty(mOidCertFilePath)) {
                try {
                    open = assets.open(mOidCertFilePath);
                } catch (IOException unused) {
                    open = assets.open(str);
                }
            } else {
                open = assets.open(str);
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                    sb.append('\n');
                } else {
                    return sb.toString();
                }
            }
        } catch (IOException unused2) {
            SALog.i(TAG, "loadPemFromAssetFile failed");
            return "";
        }
    }

    public static void setOaidCertFilePath(String str) {
        mOidCertFilePath = str;
    }
}
