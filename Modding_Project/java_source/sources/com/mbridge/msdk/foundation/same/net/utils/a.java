package com.mbridge.msdk.foundation.same.net.utils;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    public static String a(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        int i;
        if (aVar != null) {
            try {
                int i2 = aVar.f9025a;
                com.mbridge.msdk.foundation.same.net.toolbox.a aVar2 = aVar.c;
                if (aVar2 != null) {
                    i = aVar2.d;
                } else {
                    i = 0;
                }
                if (i2 != -2) {
                    if (i2 != 15) {
                        if (i2 != 880023) {
                            if (i2 == 880041) {
                                return "Network error,UnknownHostException";
                            }
                            switch (i2) {
                                case 1:
                                    return "Network error,Load failed";
                                case 2:
                                    return "Network error,I/O exception";
                                case 3:
                                    return "Network error,timeout exception";
                                case 4:
                                    return "Network unknown error";
                                case 5:
                                    return "Network error，https is not work,please check your phone time";
                                case 6:
                                    if (i != 0) {
                                        return "Network error,please check state code " + i;
                                    }
                                    return "Network error,please check ";
                                case 7:
                                    if (i != 0) {
                                        return "The server returns an exception state code " + i;
                                    }
                                    return "The server returns an exception ";
                                case 8:
                                    return "Cast exception, return data can not be casted correctly";
                                default:
                                    switch (i2) {
                                        case 10:
                                            return "Network error,socket timeout exception";
                                        case 11:
                                            return "Network error，sslp exception";
                                        case 12:
                                            return "Network error,ConnectException";
                                        case 13:
                                            if (aVar2 != null) {
                                                byte[] bArr = aVar2.f9033a;
                                                if (bArr != null) {
                                                    return new String(bArr);
                                                }
                                                return "Socket exception message is NULL";
                                            }
                                            return "Unknown socket exception";
                                        default:
                                            return "Network error,unknown";
                                    }
                            }
                        }
                        return "timeout";
                    }
                    return "Network error,I/O exception contents null";
                }
                return "Network is canceled";
            } catch (Exception e) {
                e.printStackTrace();
                return "Network error,Load failed";
            }
        }
        return "Network error,Load failed";
    }
}
