package com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils;

import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDLProxyLogListener;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TPDLProxyLog {
    private static ITPDLProxyLogListener mLogListener;
    private static int mServiceType;

    public static void d(String str, int i, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.d(str, i, str2, str3);
        }
    }

    public static void e(String str, int i, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.e(str, i, str2, str3);
        }
    }

    public static void i(String str, int i, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.i(str, i, str2, str3);
        }
    }

    public static void setLogListener(int i, ITPDLProxyLogListener iTPDLProxyLogListener) {
        mServiceType = i;
        mLogListener = iTPDLProxyLogListener;
    }

    public static void w(String str, int i, String str2, String str3) {
        ITPDLProxyLogListener iTPDLProxyLogListener = mLogListener;
        if (iTPDLProxyLogListener != null) {
            iTPDLProxyLogListener.w(str, i, str2, str3);
        }
    }
}
